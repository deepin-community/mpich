! This file created from f77/attr/attrmpi1f.f with f77tof90
!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

      program main
      use mpi
      integer value, wsize, wrank, extra, mykey
      integer rvalue, svalue, ncomm
      logical flag
      integer ierr, errs
!
      errs = 0
      call mtest_init( ierr )
      call mpi_comm_size( MPI_COMM_WORLD, wsize, ierr )
      call mpi_comm_rank( MPI_COMM_WORLD, wrank, ierr )
!
!     Simple attribute put and get
!
      call mpi_keyval_create( MPI_NULL_COPY_FN, MPI_NULL_DELETE_FN, &
      &     mykey, extra,ierr ) 
      call mpi_attr_get( MPI_COMM_WORLD, mykey, value, flag, ierr )
      if (flag) then
         errs = errs + 1
         print *, &
      &       "Did not get flag==.false. for attribute that was not set"
      endif
!
      value = 1234567
      svalue = value
      call mpi_attr_put( MPI_COMM_WORLD, mykey, value, ierr )
      value = -9876543
      call mpi_attr_get( MPI_COMM_WORLD, mykey, rvalue, flag, ierr )
      if (.not. flag) then
         errs = errs + 1
         print *, "Did not find attribute after set"
      else
         if (rvalue .ne. svalue) then
            errs = errs + 1
            print *, "Attribute value ", rvalue, " should be ", svalue
         endif
      endif
      value = -123456
      svalue = value
      call mpi_attr_put( MPI_COMM_WORLD, mykey, value, ierr )
      value = 987654
      call mpi_attr_get( MPI_COMM_WORLD, mykey, rvalue, flag, ierr )
      if (.not. flag) then
         errs = errs + 1
         print *, "Did not find attribute after set (neg)"
      else
         if (rvalue .ne. svalue) then
            errs = errs + 1
            print *, "Neg Attribute value ", rvalue," should be ",svalue
         endif
      endif
!      
      call mpi_keyval_free( mykey, ierr )
      call mtest_finalize( errs )
      end
