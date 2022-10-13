/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

/* -- THIS FILE IS AUTO-GENERATED -- */

#include "mpiimpl.h"

/* -- Begin Profiling Symbol Block for routine MPI_Barrier_init */
#if defined(HAVE_PRAGMA_WEAK)
#pragma weak MPI_Barrier_init = PMPI_Barrier_init
#elif defined(HAVE_PRAGMA_HP_SEC_DEF)
#pragma _HP_SECONDARY_DEF PMPI_Barrier_init  MPI_Barrier_init
#elif defined(HAVE_PRAGMA_CRI_DUP)
#pragma _CRI duplicate MPI_Barrier_init as PMPI_Barrier_init
#elif defined(HAVE_WEAK_ATTRIBUTE)
int MPI_Barrier_init(MPI_Comm comm, MPI_Info info, MPI_Request *request)
     __attribute__ ((weak, alias("PMPI_Barrier_init")));
#endif
/* -- End Profiling Symbol Block */

/* Define MPICH_MPI_FROM_PMPI if weak symbols are not supported to build
   the MPI routines */
#ifndef MPICH_MPI_FROM_PMPI
#undef MPI_Barrier_init
#define MPI_Barrier_init PMPI_Barrier_init
#endif /* MPICH_MPI_FROM_PMPI */

static int internal_Barrier_init(MPI_Comm comm, MPI_Info info, MPI_Request *request)
{
    int mpi_errno = MPI_SUCCESS;
    MPIR_Comm *comm_ptr ATTRIBUTE((unused)) = NULL;
    MPIR_Info *info_ptr ATTRIBUTE((unused)) = NULL;

    MPIR_ERRTEST_INITIALIZED_ORDIE();

    MPID_THREAD_CS_ENTER(GLOBAL, MPIR_THREAD_GLOBAL_ALLFUNC_MUTEX);
    MPIR_FUNC_TERSE_ENTER;

#ifdef HAVE_ERROR_CHECKING
    {
        MPID_BEGIN_ERROR_CHECKS;
        {
            MPIR_ERRTEST_COMM(comm, mpi_errno);
            MPIR_ERRTEST_INFO_OR_NULL(info, mpi_errno);
        }
        MPID_END_ERROR_CHECKS;
    }
#endif /* HAVE_ERROR_CHECKING */

    MPIR_Comm_get_ptr(comm, comm_ptr);
    if (info != MPI_INFO_NULL) {
        MPIR_Info_get_ptr(info, info_ptr);
    }

#ifdef HAVE_ERROR_CHECKING
    {
        MPID_BEGIN_ERROR_CHECKS;
        {
            MPIR_Comm_valid_ptr(comm_ptr, mpi_errno, FALSE);
            if (mpi_errno) {
                goto fn_fail;
            }
            if (info != MPI_INFO_NULL) {
                MPIR_Info_valid_ptr(info_ptr, mpi_errno);
                if (mpi_errno) {
                    goto fn_fail;
                }
            }
            MPIR_ERRTEST_ARGNULL(request, "request", mpi_errno);
        }
        MPID_END_ERROR_CHECKS;
    }
#endif /* HAVE_ERROR_CHECKING */

    /* ... body of routine ... */
    MPIR_Request *request_ptr = NULL;
    mpi_errno = MPIR_Barrier_init(comm_ptr, info_ptr, &request_ptr);
    if (mpi_errno) {
        goto fn_fail;
    }
    if (!request_ptr) {
        request_ptr = MPIR_Request_create_complete(MPIR_REQUEST_KIND__COLL);
    }
    *request = request_ptr->handle;
    /* ... end of body of routine ... */

  fn_exit:
    MPIR_FUNC_TERSE_EXIT;
    MPID_THREAD_CS_EXIT(GLOBAL, MPIR_THREAD_GLOBAL_ALLFUNC_MUTEX);
    return mpi_errno;

  fn_fail:
    /* --BEGIN ERROR HANDLINE-- */
#ifdef HAVE_ERROR_CHECKING
    mpi_errno = MPIR_Err_create_code(mpi_errno, MPIR_ERR_RECOVERABLE, __func__, __LINE__, MPI_ERR_OTHER,
                                     "**mpi_barrier_init", "**mpi_barrier_init %C %I %p", comm, info,
                                     request);
#endif
    mpi_errno = MPIR_Err_return_comm(comm_ptr, __func__, mpi_errno);
    /* --END ERROR HANDLING-- */
    goto fn_exit;
}

#ifdef ENABLE_QMPI
#ifndef MPICH_MPI_FROM_PMPI
int QMPI_Barrier_init(QMPI_Context context, int tool_id, MPI_Comm comm, MPI_Info info,
                      MPI_Request *request)
{
    return internal_Barrier_init(comm, info, request);
}
#endif /* MPICH_MPI_FROM_PMPI */
int MPI_Barrier_init(MPI_Comm comm, MPI_Info info, MPI_Request *request)
{
    QMPI_Context context;
    QMPI_Barrier_init_t *fn_ptr;

    context.storage_stack = NULL;

    if (MPIR_QMPI_num_tools == 0)
        return QMPI_Barrier_init(context, 0, comm, info, request);

    fn_ptr = (QMPI_Barrier_init_t *) MPIR_QMPI_first_fn_ptrs[MPI_BARRIER_INIT_T];

    return (*fn_ptr) (context, MPIR_QMPI_first_tool_ids[MPI_BARRIER_INIT_T], comm, info, request);
}
#else /* ENABLE_QMPI */
/*@
   MPI_Barrier_init - Creates a persistent request for barrier

Input Parameters:
+ comm - communicator (handle)
- info - info argument (handle)

Output Parameters:
. request - communication request (handle)

.N ThreadSafe

.N Fortran

.N Errors
.N MPI_SUCCESS

.N MPI_ERR_ARG
.N MPI_ERR_COMM
.N MPI_ERR_INFO
.N MPI_ERR_OTHER

@*/

int MPI_Barrier_init(MPI_Comm comm, MPI_Info info, MPI_Request *request)
{
    return internal_Barrier_init(comm, info, request);
}
#endif /* ENABLE_QMPI */
