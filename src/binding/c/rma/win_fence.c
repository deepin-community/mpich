/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

/* -- THIS FILE IS AUTO-GENERATED -- */

#include "mpiimpl.h"

/* -- Begin Profiling Symbol Block for routine MPI_Win_fence */
#if defined(HAVE_PRAGMA_WEAK)
#pragma weak MPI_Win_fence = PMPI_Win_fence
#elif defined(HAVE_PRAGMA_HP_SEC_DEF)
#pragma _HP_SECONDARY_DEF PMPI_Win_fence  MPI_Win_fence
#elif defined(HAVE_PRAGMA_CRI_DUP)
#pragma _CRI duplicate MPI_Win_fence as PMPI_Win_fence
#elif defined(HAVE_WEAK_ATTRIBUTE)
int MPI_Win_fence(int assert, MPI_Win win)  __attribute__ ((weak, alias("PMPI_Win_fence")));
#endif
/* -- End Profiling Symbol Block */

/* Define MPICH_MPI_FROM_PMPI if weak symbols are not supported to build
   the MPI routines */
#ifndef MPICH_MPI_FROM_PMPI
#undef MPI_Win_fence
#define MPI_Win_fence PMPI_Win_fence
#endif /* MPICH_MPI_FROM_PMPI */

static int internal_Win_fence(int assert, MPI_Win win)
{
    int mpi_errno = MPI_SUCCESS;
    MPIR_Win *win_ptr ATTRIBUTE((unused)) = NULL;

    MPIR_ERRTEST_INITIALIZED_ORDIE();

    MPID_THREAD_CS_ENTER(GLOBAL, MPIR_THREAD_GLOBAL_ALLFUNC_MUTEX);
    MPIR_FUNC_TERSE_ENTER;

#ifdef HAVE_ERROR_CHECKING
    {
        MPID_BEGIN_ERROR_CHECKS;
        {
            MPIR_ERRTEST_WIN(win, mpi_errno);
        }
        MPID_END_ERROR_CHECKS;
    }
#endif /* HAVE_ERROR_CHECKING */

    MPIR_Win_get_ptr(win, win_ptr);

#ifdef HAVE_ERROR_CHECKING
    {
        MPID_BEGIN_ERROR_CHECKS;
        {
            MPIR_Win_valid_ptr(win_ptr, mpi_errno);
            if (mpi_errno) {
                goto fn_fail;
            }
            if (assert != (assert & (MPI_MODE_NOSTORE | MPI_MODE_NOPUT | MPI_MODE_NOPRECEDE | MPI_MODE_NOSUCCEED))) {
                MPIR_ERR_SET1(mpi_errno, MPI_ERR_ARG, "**assert", "**assert %d", assert);
                goto fn_fail;
            }
        }
        MPID_END_ERROR_CHECKS;
    }
#endif /* HAVE_ERROR_CHECKING */

    /* ... body of routine ... */
    mpi_errno = MPID_Win_fence(assert, win_ptr);
    if (mpi_errno) {
        goto fn_fail;
    }
    /* ... end of body of routine ... */

  fn_exit:
    MPIR_FUNC_TERSE_EXIT;
    MPID_THREAD_CS_EXIT(GLOBAL, MPIR_THREAD_GLOBAL_ALLFUNC_MUTEX);
    return mpi_errno;

  fn_fail:
    /* --BEGIN ERROR HANDLINE-- */
#ifdef HAVE_ERROR_CHECKING
    mpi_errno = MPIR_Err_create_code(mpi_errno, MPIR_ERR_RECOVERABLE, __func__, __LINE__, MPI_ERR_OTHER,
                                     "**mpi_win_fence", "**mpi_win_fence %A %W", assert, win);
#endif
    mpi_errno = MPIR_Err_return_win(win_ptr, __func__, mpi_errno);
    /* --END ERROR HANDLING-- */
    goto fn_exit;
}

#ifdef ENABLE_QMPI
#ifndef MPICH_MPI_FROM_PMPI
int QMPI_Win_fence(QMPI_Context context, int tool_id, int assert, MPI_Win win)
{
    return internal_Win_fence(assert, win);
}
#endif /* MPICH_MPI_FROM_PMPI */
int MPI_Win_fence(int assert, MPI_Win win)
{
    QMPI_Context context;
    QMPI_Win_fence_t *fn_ptr;

    context.storage_stack = NULL;

    if (MPIR_QMPI_num_tools == 0)
        return QMPI_Win_fence(context, 0, assert, win);

    fn_ptr = (QMPI_Win_fence_t *) MPIR_QMPI_first_fn_ptrs[MPI_WIN_FENCE_T];

    return (*fn_ptr) (context, MPIR_QMPI_first_tool_ids[MPI_WIN_FENCE_T], assert, win);
}
#else /* ENABLE_QMPI */
/*@
   MPI_Win_fence - Perform an MPI fence synchronization on a MPI window

Input Parameters:
+ assert - program assertion (integer)
- win - window object (handle)

Notes:
The 'assert' argument is used to indicate special conditions for the
fence that an implementation may use to optimize the 'MPI_Win_fence'
operation.  The value zero is always correct.  Other assertion values
may be or''ed together.  Assertions that are valid for 'MPI_Win_fence' are\:

+ MPI_MODE_NOSTORE - the local window was not updated by local stores
  (or local get or receive calls) since last synchronization.
. MPI_MODE_NOPUT - the local window will not be updated by put or accumulate
  calls after the fence call, until the ensuing (fence) synchronization.
. MPI_MODE_NOPRECEDE - the fence does not complete any sequence of locally
  issued RMA calls. If this assertion is given by any process in the window
  group, then it must be given by all processes in the group.
- MPI_MODE_NOSUCCEED - the fence does not start any sequence of locally
  issued RMA calls. If the assertion is given by any process in the window
  group, then it must be given by all processes in the group.

.N ThreadSafe

.N Fortran

.N Errors
.N MPI_SUCCESS

.N MPI_ERR_ARG
.N MPI_ERR_WIN
.N MPI_ERR_OTHER

@*/

int MPI_Win_fence(int assert, MPI_Win win)
{
    return internal_Win_fence(assert, win);
}
#endif /* ENABLE_QMPI */
