! This file created from f77/datatype/typecntsf.f with f77tof90
!
! Copyright (C) by Argonne National Laboratory
!     See COPYRIGHT in top-level directory
!

       program main
       use mpi
       integer errs, ierr
       integer ntype1, ntype2
!
! This is a very simple test that just tests that the contents/envelope
! routines can be called.  This should be upgraded to test the new 
! MPI-2 datatype routines (which use address-sized integers)
!

       errs = 0
       call mtest_init( ierr )

       call explore( MPI_INTEGER, MPI_COMBINER_NAMED, errs )
       call explore( MPI_BYTE, MPI_COMBINER_NAMED, errs )
       call mpi_type_vector( 10, 1, 30, MPI_DOUBLE_PRECISION, ntype1,  &
      &                       ierr )
       call explore( ntype1, MPI_COMBINER_VECTOR, errs )
       call mpi_type_dup( ntype1, ntype2, ierr )
       call explore( ntype2, MPI_COMBINER_DUP, errs )
       call mpi_type_free( ntype2, ierr )
       call mpi_type_free( ntype1, ierr )
       
!
       call mtest_finalize( errs )
       end
!
       subroutine explore( dtype, mycomb, errs )
       use mpi
       integer dtype, mycomb, errs
       integer ierr
       integer nints, nadds, ntype, combiner
       integer max_nints, max_dtypes, max_asizev
       parameter (max_nints = 10, max_dtypes = 10, max_asizev=10)
       integer intv(max_nints), dtypesv(max_dtypes)
       integer (kind=MPI_ADDRESS_KIND) aint, aintv(max_asizev)

!
       call mpi_type_get_envelope( dtype, nints, nadds, ntype, &
      &                             combiner, ierr )
!
       if (combiner .ne. MPI_COMBINER_NAMED) then
          call mpi_type_get_contents( dtype,  &
      &         max_nints, max_asizev, max_dtypes, &
      &         intv, aintv, dtypesv, ierr )
!
!              dtypesv of constructed types must be free'd now
!
          if (combiner .eq. MPI_COMBINER_DUP) then
             call mpi_type_free( dtypesv(1), ierr )
          endif
       endif
       if (combiner .ne. mycomb) then
          errs = errs + 1
          print *, ' Expected combiner ', mycomb, ' but got ', &
      &             combiner
       endif
!
! List all combiner types to check that they are defined in mpif.h
       if (combiner .eq. MPI_COMBINER_NAMED) then
       else if (combiner .eq. MPI_COMBINER_DUP) then
       else if (combiner .eq. MPI_COMBINER_CONTIGUOUS) then
       else if (combiner .eq. MPI_COMBINER_VECTOR) then
       else if (combiner .eq. MPI_COMBINER_HVECTOR_INTEGER) then
       else if (combiner .eq. MPI_COMBINER_HVECTOR) then
       else if (combiner .eq. MPI_COMBINER_INDEXED) then
       else if (combiner .eq. MPI_COMBINER_HINDEXED_INTEGER) then
       else if (combiner .eq. MPI_COMBINER_HINDEXED) then
       else if (combiner .eq. MPI_COMBINER_INDEXED_BLOCK) then
       else if (combiner .eq. MPI_COMBINER_STRUCT_INTEGER) then
       else if (combiner .eq. MPI_COMBINER_STRUCT) then
       else if (combiner .eq. MPI_COMBINER_SUBARRAY) then
       else if (combiner .eq. MPI_COMBINER_DARRAY) then
       else if (combiner .eq. MPI_COMBINER_F90_REAL) then
       else if (combiner .eq. MPI_COMBINER_F90_COMPLEX) then
       else if (combiner .eq. MPI_COMBINER_F90_INTEGER) then
       else if (combiner .eq. MPI_COMBINER_RESIZED) then
       else
          errs = errs + 1
          print *, ' Unknown combiner ', combiner
       endif
       
       return
       end
