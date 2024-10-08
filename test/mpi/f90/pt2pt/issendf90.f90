! This file created from f77/pt2pt/issendf.f with f77tof90
!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

! This program is based on the allpair.f test from the MPICH-1 test
! (test/pt2pt/allpair.f), which in turn was inspired by a bug report from
! fsset@corelli.lerc.nasa.gov (Scott Townsend)

      program issend
      use mpi
      integer ierr, errs, comm
      logical mtestGetIntraComm
      logical verbose
      common /flags/ verbose

      errs = 0
      verbose = .false.
!      verbose = .true.
      call MTest_Init( ierr )

      do while ( mtestGetIntraComm( comm, 2, .false. ) )
         call test_pair_issend( comm, errs )
         call mtestFreeComm( comm )
      enddo
!
      call MTest_Finalize( errs )
!
      end
!
      subroutine test_pair_issend( comm, errs )
      use mpi
      integer comm, errs
      integer rank, size, ierr, next, prev, tag, count, index
      integer TEST_SIZE
      parameter (TEST_SIZE=2000)
      integer status(MPI_STATUS_SIZE), requests(2)
      integer statuses(MPI_STATUS_SIZE,2)
      logical flag
      real send_buf(TEST_SIZE), recv_buf(TEST_SIZE)
      logical verbose
      common /flags/ verbose
!
      if (verbose) then
         print *, ' issend and irecv (testall)'
      endif
!
!
      call mpi_comm_rank( comm, rank, ierr )
      call mpi_comm_size( comm, size, ierr )
      next = rank + 1
      if (next .ge. size) next = 0
!
      prev = rank - 1
      if (prev .lt. 0) prev = size - 1
!
      tag = 2789
      count = TEST_SIZE / 3
!
      call clear_test_data(recv_buf,TEST_SIZE)
!
      if (rank .eq. 0) then
!
         call MPI_Irecv(recv_buf, TEST_SIZE, MPI_REAL, &
      &                  MPI_ANY_SOURCE, MPI_ANY_TAG, comm, &
      &                  requests(1), ierr)
!
         call init_test_data(send_buf,TEST_SIZE)
!
         call MPI_Issend(send_buf, count, MPI_REAL, next, tag, &
      &                   comm, requests(2), ierr)
!
         flag = .FALSE.
         do while (.not. flag)
            call MPI_Testall(2, requests, flag, statuses, ierr)
         end do
!
         call rq_check( requests, 2, 'issend and irecv (testall)' )
!
         call msg_check( recv_buf, next, tag, count, statuses(1,1), &
      &           TEST_SIZE, 'issend and recv (testall)', errs )
!
      else if (prev .eq. 0) then
!
         call MPI_Recv(recv_buf, TEST_SIZE, MPI_REAL, &
      &                 MPI_ANY_SOURCE, MPI_ANY_TAG, comm, &
      &                 status, ierr)

         call msg_check( recv_buf, prev, tag, count, status, TEST_SIZE, &
      &                   'issend and recv', errs )

         call MPI_Issend(recv_buf, count, MPI_REAL, prev, tag, &
      &                   comm, requests(1), ierr)
!
         flag = .FALSE.
         do while (.not. flag)
            call MPI_Testany(1, requests, index, flag, &
      &                       status, ierr)
         end do
!
         call rq_check( requests, 1, 'issend and recv (testany)' )
!
      end if
!
      end
