! This file created from f77/rma/wingetf.f with f77tof90
!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

      program main
      use mpi
      integer ierr, errs
      integer win, intsize
      integer left, right, rank, size
      integer nrows, ncols
      parameter (nrows=25,ncols=10)
      integer buf(1:nrows,0:ncols+1)
      integer comm, ans
      integer i, j
      logical mtestGetIntraComm
! Include addsize defines asize as an address-sized integer
      integer (kind=MPI_ADDRESS_KIND) asize

      
      errs = 0
      call mtest_init( ierr )

      call mpi_type_size( MPI_INTEGER, intsize, ierr )
      do while( mtestGetIntraComm( comm, 2, .false. ) ) 
         asize = nrows * (ncols + 2) * intsize
         call mpi_win_create( buf, asize, intsize * nrows,  &
      &                        MPI_INFO_NULL, comm, win, ierr )
         
         call mpi_comm_size( comm, size, ierr )
         call mpi_comm_rank( comm, rank, ierr )
         left = rank - 1
         if (left .lt. 0) then
            left = MPI_PROC_NULL
         endif
         right = rank + 1
         if (right .ge. size) then
            right = MPI_PROC_NULL
         endif
!
! Initialize the buffer 
         do i=1,nrows
            buf(i,0)       = -1
            buf(i,ncols+1) = -1
         enddo
         do j=1,ncols
            do i=1,nrows
               buf(i,j) = rank * (ncols * nrows) + i + (j-1) * nrows
            enddo
         enddo
         call mpi_win_fence( MPI_MODE_NOPRECEDE, win, ierr )
!      
         asize = 1
         call mpi_get( buf(1,ncols+1), nrows, MPI_INTEGER, right, &
      &                 asize, nrows, MPI_INTEGER, win, ierr )
         asize = ncols
         call mpi_get( buf(1,0), nrows, MPI_INTEGER, left,  &
      &                 asize, nrows, MPI_INTEGER, win, ierr )
!         
         call mpi_win_fence( MPI_MODE_NOSTORE + MPI_MODE_NOPUT +  &
      &                       MPI_MODE_NOSUCCEED, win, ierr )
!
! Check the results
         if (left .ne. MPI_PROC_NULL) then
            do i=1, nrows
               ans = rank * (ncols * nrows) - nrows + i
               if (buf(i,0) .ne. ans) then
                  errs = errs + 1
                  if (errs .le. 10) then
                     print *, rank, ' buf(',i,',0) = ', buf(i,0), &
      &                    ' expected', ans
                  endif
               endif
            enddo
         endif
         if (right .ne. MPI_PROC_NULL) then
            do i=1, nrows
               ans = (rank + 1)* (ncols * nrows) + i
               if (buf(i,ncols+1) .ne. ans) then
                  errs = errs + 1
                  if (errs .le. 10) then
                     print *, rank, ' buf(',i,',',ncols+1,') = ',  &
      &                         buf(i,ncols+1), ' expected ', ans
                  endif
               endif
            enddo
         endif
         call mpi_win_free( win, ierr )
         call mtestFreeComm( comm )
      enddo

      call mtest_finalize( errs )
      end
