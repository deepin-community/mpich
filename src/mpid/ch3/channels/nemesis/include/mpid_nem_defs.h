/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

#ifndef MPID_NEM_DEFS_H_INCLUDED
#define MPID_NEM_DEFS_H_INCLUDED

#include "mpid_nem_datatypes.h"
#include "mpi.h"
#include "mpiimpl.h"
#include "mpidu_init_shm.h"

/* FIXME: This definition should be gotten from mpidi_ch3_impl.h */
#ifndef MAX_HOSTNAME_LEN
#define MAX_HOSTNAME_LEN 256
#endif /* MAX_HOSTNAME_LEN */

extern char MPID_nem_hostname[MAX_HOSTNAME_LEN];

#define MPID_NEM_RET_OK       1
#define MPID_NEM_RET_NG      -1
#define MPID_NEM_KEY          632236
#define MPID_NEM_ANY_SOURCE  -1
#define MPID_NEM_IN           1
#define MPID_NEM_OUT          0 

#define MPID_NEM_POLL_IN      0
#define MPID_NEM_POLL_OUT     1

#define MPID_NEM_ASYMM_NULL_VAL    64
extern  char *MPID_nem_asymm_base_addr;

#define MPID_NEM_REL_NULL (0x0)
#define MPID_NEM_IS_REL_NULL(rel_ptr) (MPL_atomic_acquire_load_ptr(&(rel_ptr).p) == MPID_NEM_REL_NULL)
#define MPID_NEM_SET_REL_NULL(rel_ptr) (MPL_atomic_release_store_ptr(&((rel_ptr).p), MPID_NEM_REL_NULL))
#define MPID_NEM_REL_ARE_EQUAL(rel_ptr1, rel_ptr2) \
    (MPL_atomic_acquire_load_ptr(&(rel_ptr1).p) == MPL_atomic_acquire_load_ptr(&(rel_ptr2).p))

#ifndef MPID_NEM_SYMMETRIC_QUEUES

/* NOTE: we are casting to uintptr_t and using integer arithmetic here. While it is pedantically
 * undefined usage, we don't anticipate issues because the REL addresses will not be directly accessed,
 * and only consistency matters. We can't use pointer arithmetic here because both the address
 * (p or a) and MPID_nem_asymm_base_addr could overflow `ptrdiff_t`.
 */
static inline MPID_nem_cell_ptr_t MPID_NEM_REL_TO_ABS (MPID_nem_cell_rel_ptr_t r)
{
    void *p = MPL_atomic_acquire_load_ptr(&r.p);
    return (MPID_nem_cell_ptr_t) (void *) ((uintptr_t) p + (uintptr_t) MPID_nem_asymm_base_addr);
}

static inline MPID_nem_cell_rel_ptr_t MPID_NEM_ABS_TO_REL (MPID_nem_cell_ptr_t a)
{
    MPID_nem_cell_rel_ptr_t ret;
    MPL_atomic_release_store_ptr(&ret.p, (void *) ((uintptr_t) a - (uintptr_t) MPID_nem_asymm_base_addr));
    return ret;
}

#else /*MPID_NEM_SYMMETRIC_QUEUES */
#define MPID_NEM_REL_TO_ABS(ptr) (ptr)
#define MPID_NEM_ABS_TO_REL(ptr) (ptr)
#endif /*MPID_NEM_SYMMETRIC_QUEUES */

/* NOTE: MPID_NEM_IS_LOCAL should only be used when the process is known to be
   in your comm_world (such as at init time).  This will generally not work for
   dynamic processes.  Check vc_ch->is_local instead.  If that is true, then
   it's safe to use MPID_NEM_LOCAL_RANK. */
#define MPID_NEM_NON_LOCAL -1
#define MPID_NEM_IS_LOCAL(grank) (MPID_nem_mem_region.local_ranks[grank] != MPID_NEM_NON_LOCAL)
#define MPID_NEM_LOCAL_RANK(grank) (MPID_nem_mem_region.local_ranks[grank])

typedef struct MPID_nem_mem_region
{
    void                       *shm_ptr;
    int                         map_lock;
    int                         num_local;
    int                         num_procs;
    int                        *local_procs; /* local_procs[lrank] gives the global rank of proc with local rank lrank */
    int                         local_rank;    
    int                        *local_ranks; /* local_ranks[grank] gives the local rank of proc with global rank grank or MPID_NEM_NON_LOCAL */
    int                         ext_procs; /* Number of non-local processes */
    int                        *ext_ranks; /* Ranks of non-local processes */ 
    MPID_nem_fbox_arrays_t      mailboxes;
    MPID_nem_cell_ptr_t         Elements;
    MPID_nem_queue_ptr_t       *FreeQ;
    MPID_nem_queue_ptr_t       *RecvQ;
    MPID_nem_queue_ptr_t        my_freeQ;
    MPID_nem_queue_ptr_t        my_recvQ;
    int                         rank;
    struct MPID_nem_mem_region *next;
} MPID_nem_mem_region_t, *MPID_nem_mem_region_ptr_t;

/* #define MEM_REGION_IN_HEAP */
#ifdef MEM_REGION_IN_HEAP
#define MPID_nem_mem_region (*MPID_nem_mem_region_ptr)
extern MPID_nem_mem_region_t *MPID_nem_mem_region_ptr;
#else /* MEM_REGION_IN_HEAP */
extern MPID_nem_mem_region_t MPID_nem_mem_region;
#endif /* MEM_REGION_IN_HEAP */




#endif /* MPID_NEM_DEFS_H_INCLUDED */
