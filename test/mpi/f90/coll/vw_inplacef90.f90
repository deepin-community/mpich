! This file created from f77/coll/vw_inplacef.f with f77tof90
!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

! A simple test for Fortran support of the MPI_IN_PLACE value in Alltoall[vw].
!
       program main
       use mpi
       integer SIZEOFINT
       integer MAX_SIZE
       parameter (MAX_SIZE=1024)
       integer rbuf(MAX_SIZE)
       integer scounts(1), sdispls(1), stypes(1)
       integer rdispls(MAX_SIZE), rcounts(MAX_SIZE), rtypes(MAX_SIZE)
       integer ierr, errs
       integer comm, root
       integer rank, size
       integer iexpected, igot
       integer i, j

       errs = 0
       call mtest_init( ierr )

       comm = MPI_COMM_WORLD
       call mpi_comm_rank( comm, rank, ierr )
       call mpi_comm_size( comm, size, ierr )
       call mpi_type_size( MPI_INTEGER, SIZEOFINT, ierr )

       if (size .gt. MAX_SIZE) then
          print *, ' At most ', MAX_SIZE, ' processes allowed'
          call mpi_abort( MPI_COMM_WORLD, 1, ierr )
       endif
!
       do i=1,MAX_SIZE
           rbuf(i) = -1
       enddo
       do i=1,size
          rbuf(i) = (i-1) * size + rank
       enddo
       call mpi_alltoall( MPI_IN_PLACE, -1, MPI_DATATYPE_NULL, &
      &      rbuf, 1, MPI_INTEGER, comm, ierr )
       do i=1,size
          if (rbuf(i) .ne. (rank*size + i - 1)) then
             errs = errs + 1
             print *, '[', rank, '] rbuf(', i, ') = ', rbuf(i), &
      &             ', should be', rank * size + i - 1
          endif
       enddo

       scounts(1) = 0
       sdispls(1) = 0
       stypes(1) = MPI_DATATYPE_NULL
       do i=1,MAX_SIZE
           rbuf(i) = -1
       enddo
       do i=1,size
           rcounts(i) = (i-1) + rank
           rdispls(i) = (i-1) * (2*size)
           do j=0,rcounts(i)-1
               rbuf(rdispls(i)+j+1) = 100 * rank + 10 * (i-1) + j
           enddo
       enddo
       call mpi_alltoallv( MPI_IN_PLACE, scounts, sdispls, stypes(1), &
      &                     rbuf, rcounts, rdispls, MPI_INTEGER, &
      &                     comm, ierr )
       do i=1,size
           do j=0,rcounts(i)-1
               iexpected = 100 * (i-1) + 10 * rank + j
               igot      = rbuf(rdispls(i)+j+1)
               if ( igot .ne. iexpected ) then
                   errs = errs + 1
                   print *, '[', rank, '] ALLTOALLV got ', igot, &
      &                   ',but expected ', iexpected, &
      &                   ' for block=', i-1, ' element=', j
               endif
           enddo
       enddo

       do i=1,MAX_SIZE
           rbuf(i) = -1
       enddo
!          Alltoallw's displs[] are in bytes not in type extents.
       do i=1,size
           rcounts(i) = (i-1) + rank
           rdispls(i) = (i-1) * (2*size) * SIZEOFINT
           rtypes(i)  = MPI_INTEGER
           do j=0,rcounts(i)-1
               rbuf(rdispls(i)/SIZEOFINT+j+1) = 100 * rank &
      &                                        + 10 * (i-1) + j
           enddo
       enddo
       call mpi_alltoallw( MPI_IN_PLACE, scounts, sdispls, stypes, &
      &                     rbuf, rcounts, rdispls, rtypes, &
      &                     comm, ierr )
       do i=1,size
           do j=0,rcounts(i)-1
               iexpected = 100 * (i-1) + 10 * rank + j
               igot      = rbuf(rdispls(i)/SIZEOFINT+j+1)
               if ( igot .ne. iexpected ) then
                   errs = errs + 1
                   print *, '[', rank, '] ALLTOALLW got ', igot, &
      &                   ',but expected ', iexpected, &
      &                   ' for block=', i-1, ' element=', j
               endif
           enddo
       enddo

       call mtest_finalize( errs )

       end
