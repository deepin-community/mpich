! This file created from f77/spawn/spawnmult2f.f with f77tof90
!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

! This tests spawn_mult by using the same executable and no command-line
! options.  The attribute MPI_APPNUM is used to determine which
! executable is running.
!
       program main
       use mpi
       integer (kind=MPI_ADDRESS_KIND) aint

       integer errs, err
       integer rank, size, rsize, wsize, i
       integer np(2)
       integer infos(2)
       integer errcodes(2)
       integer parentcomm, intercomm
       integer status(MPI_STATUS_SIZE)
       character*(30) cmds(2)
       integer appnum
       logical flag
       integer ierr
       integer can_spawn

       errs = 0

       call MTest_Init( ierr )

       call MTestSpawnPossible( can_spawn, errs )
        if ( can_spawn .eq. 0 ) then
            call MTest_Finalize( errs )
            goto 300
        endif

       call MPI_Comm_get_parent( parentcomm, ierr )

       if (parentcomm .eq. MPI_COMM_NULL) then
!       Create 2 more processes 
           cmds(1) = "./spawnmult2f90"
           cmds(2) = "./spawnmult2f90"
           np(1)   = 1
           np(2)   = 1
           infos(1)= MPI_INFO_NULL
           infos(2)= MPI_INFO_NULL
           call MPI_Comm_spawn_multiple( 2, cmds, MPI_ARGVS_NULL,            &
      &             np, infos, 0,                                             &
      &             MPI_COMM_WORLD, intercomm, errcodes, ierr )  
        else 
           intercomm = parentcomm
        endif

!       We now have a valid intercomm

        call MPI_Comm_remote_size( intercomm, rsize, ierr )
        call MPI_Comm_size( intercomm, size, ierr )
        call MPI_Comm_rank( intercomm, rank, ierr )

        if (parentcomm .eq. MPI_COMM_NULL) then
!           Parent
            if (rsize .ne. np(1) + np(2)) then
                errs = errs + 1
                print *, "Did not create ", np(1)+np(2),                    &
      &          " processes (got ", rsize, ")" 
            endif
! Allow a multi-process parent
            if (rank .eq. 0) then
               do i=0, rsize-1
                  call MPI_Send( i, 1, MPI_INTEGER, i, 0, intercomm,        &
      &                 ierr ) 
               enddo
!       We could use intercomm reduce to get the errors from the 
!       children, but we'll use a simpler loop to make sure that
!       we get valid data 
              do i=0, rsize-1
                 call MPI_Recv( err, 1, MPI_INTEGER, i, 1, intercomm,       &
      &                       MPI_STATUS_IGNORE, ierr )
                 errs = errs + err
              enddo
            endif
         else 
!       Child 
!       FIXME: This assumes that stdout is handled for the children
!       (the error count will still be reported to the parent)
           if (size .ne. 2) then
              errs = errs + 1
              print *, "(Child) Did not create ", 2,                        &
      &             " processes (got ",size, ")"
              call mpi_comm_size( MPI_COMM_WORLD, wsize, ierr )
              if (wsize .eq. 2) then 
                 errs = errs + 1
                 print *, "(Child) world size is 2 but ",                   &
      &          " local intercomm size is not 2"
              endif
           endif
           
         call MPI_Recv( i, 1, MPI_INTEGER, 0, 0, intercomm, status, ierr    &
      &     )
         if (i .ne. rank) then
            errs = errs + 1
            print *, "Unexpected rank on child ", rank, "(",i,")"
         endif
!
!       Check for correct APPNUM
         call mpi_comm_get_attr( MPI_COMM_WORLD, MPI_APPNUM, aint,         &
      &        flag, ierr )
!        My appnum should be my rank in comm world
         if (flag) then
            appnum = aint
            if (appnum .ne. rank) then
                errs = errs + 1
                print *, "appnum is ", appnum, " but should be ", rank
             endif     
         else
             errs = errs + 1
             print *, "appnum was not set"
         endif

!       Send the errs back to the parent process 
        call MPI_Ssend( errs, 1, MPI_INTEGER, 0, 1, intercomm, ierr )
        endif

!       It isn't necessary to free the intercomm, but it should not hurt
        call MPI_Comm_free( intercomm, ierr )

!       Note that the MTest_Finalize get errs only over COMM_WORLD 
        if (parentcomm .eq. MPI_COMM_NULL) then
            call MTest_Finalize( errs )
        else
            call MPI_Finalize( ierr )
        endif

 300    continue
        end
