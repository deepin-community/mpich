! This file created from f77/info/infocrenvf.f with f77tof90
!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

!
! Testing MPI_Info_create_env.
!
       subroutine test_info ( i1, i2, errs )
       use mpi
       integer ierr, i, i1, i2, vl, errs
       character*(MPI_MAX_INFO_KEY) value1, value2
       character*(MPI_MAX_INFO_KEY) keys(9)
       logical f1, f2
!
       keys(1) = "command"
       keys(2) = "argv"
       keys(3) = "maxprocs"
       keys(4) = "soft"
       keys(5) = "host"
       keys(6) = "arch"
       keys(7) = "wdir"
       keys(8) = "file"
       keys(9) = "thread_level"
!
       do i = 1, 9
          vl = MPI_MAX_INFO_KEY
          call mpi_info_get_string( i1, keys(i), vl, value1, f1, ierr )
          vl = MPI_MAX_INFO_KEY
          call mpi_info_get_string( i2, keys(i), vl, value2, f2, ierr )
!
!         if ( f1 ) then
!            print *, "keys: ", trim(keys(i)), "value1: ", trim(value1)
!         endif
!         if ( f2 ) then
!            print *, "keys: ", trim(keys(i)), "value2: ", trim(value1)
!         endif
!
!         i1 and i2 should return the same values.
!
          if ( f1 .eqv. f2 ) then
             if ( (f1 .eqv. .TRUE.) .and. value1 .ne. value2) then
                errs = errs + 1
             endif
          else
             errs = errs + 1
          endif
       enddo
       end

       program main
       use mpi
       integer i1, i2
       integer ierr, errs
!
       errs = 0

       call mpi_info_create_env( i1, ierr )
       call mpi_info_create_env( i2, ierr )

       call test_info( i1, i2, errs )
       call mpi_info_free( i1, ierr )
       call mpi_info_create_env( i1, ierr )

       call mpi_init( ierr )

       call test_info( i1, i2, errs )
       call mpi_info_free( i1, ierr )
       call mpi_info_create_env( i1, ierr )

       call mpi_finalize( ierr )

       call test_info( i1, i2, errs )
       call mpi_info_free( i1, ierr )
       call mpi_info_create_env( i1, ierr )

       call test_info( i1, i2, errs )
       call mpi_info_free( i1, ierr )
       call mpi_info_free( i2, ierr )

       if ( errs .eq. 0 ) then
          print *, " No Errors"
       else
          print *, " Found ", errs, " errors"
       endif
       end
