/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

/* Automatically generated
 *   by:   ./maint/extractcvars
 *   on:   Fri Feb  9 18:29:49 2024 UTC
 *
 * DO NOT EDIT!!!
 */

#if !defined(MPIR_CVARS_H_INCLUDED)
#define MPIR_CVARS_H_INCLUDED

#include "mpitimpl.h" /* for MPIR_T_cvar_range_value_t */

/* Initializes cvar values from the environment */
int MPIR_T_cvar_init(void);
int MPIR_T_cvar_finalize(void);

/* Extern declarations for each cvar
 * (definitions in src/util/mpir_cvars.c) */

/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BARRIER_INTRA_ALGORITHM;
enum BARRIER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_BARRIER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_BARRIER_INTRA_ALGORITHM_nb,
    MPIR_CVAR_BARRIER_INTRA_ALGORITHM_smp,
    MPIR_CVAR_BARRIER_INTRA_ALGORITHM_k_dissemination,
    MPIR_CVAR_BARRIER_INTRA_ALGORITHM_recexch
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BARRIER_INTER_ALGORITHM;
enum BARRIER_INTER_ALGORITHM_choice {
    MPIR_CVAR_BARRIER_INTER_ALGORITHM_auto,
    MPIR_CVAR_BARRIER_INTER_ALGORITHM_bcast,
    MPIR_CVAR_BARRIER_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BARRIER_DISSEM_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BARRIER_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BARRIER_RECEXCH_SINGLE_PHASE_RECV;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBARRIER_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBARRIER_DISSEM_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBARRIER_INTRA_ALGORITHM;
enum IBARRIER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IBARRIER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IBARRIER_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IBARRIER_INTRA_ALGORITHM_sched_recursive_doubling,
    MPIR_CVAR_IBARRIER_INTRA_ALGORITHM_tsp_recexch,
    MPIR_CVAR_IBARRIER_INTRA_ALGORITHM_tsp_k_dissemination
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBARRIER_INTER_ALGORITHM;
enum IBARRIER_INTER_ALGORITHM_choice {
    MPIR_CVAR_IBARRIER_INTER_ALGORITHM_auto,
    MPIR_CVAR_IBARRIER_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IBARRIER_INTER_ALGORITHM_sched_bcast
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_MIN_PROCS;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_SHORT_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_LONG_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_MAX_SMP_BCAST_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_INTRA_ALGORITHM;
enum BCAST_INTRA_ALGORITHM_choice {
    MPIR_CVAR_BCAST_INTRA_ALGORITHM_auto,
    MPIR_CVAR_BCAST_INTRA_ALGORITHM_binomial,
    MPIR_CVAR_BCAST_INTRA_ALGORITHM_nb,
    MPIR_CVAR_BCAST_INTRA_ALGORITHM_smp,
    MPIR_CVAR_BCAST_INTRA_ALGORITHM_scatter_recursive_doubling_allgather,
    MPIR_CVAR_BCAST_INTRA_ALGORITHM_scatter_ring_allgather,
    MPIR_CVAR_BCAST_INTRA_ALGORITHM_pipelined_tree,
    MPIR_CVAR_BCAST_INTRA_ALGORITHM_tree
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_TREE_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern const char * MPIR_CVAR_BCAST_TREE_TYPE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_TOPO_REORDER_ENABLE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_TOPO_OVERHEAD;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_TOPO_DIFF_GROUPS;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_TOPO_DIFF_SWITCHES;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_TOPO_SAME_SWITCHES;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_IS_NON_BLOCKING;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_TREE_PIPELINE_CHUNK_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_RECV_PRE_POST;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_INTER_ALGORITHM;
enum BCAST_INTER_ALGORITHM_choice {
    MPIR_CVAR_BCAST_INTER_ALGORITHM_auto,
    MPIR_CVAR_BCAST_INTER_ALGORITHM_nb,
    MPIR_CVAR_BCAST_INTER_ALGORITHM_remote_send_local_bcast
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBCAST_TREE_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern const char * MPIR_CVAR_IBCAST_TREE_TYPE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBCAST_TREE_PIPELINE_CHUNK_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBCAST_RING_CHUNK_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBCAST_INTRA_ALGORITHM;
enum IBCAST_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_sched_binomial,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_sched_smp,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_sched_scatter_recursive_doubling_allgather,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_sched_scatter_ring_allgather,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_tsp_tree,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_tsp_scatterv_recexch_allgatherv,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_tsp_scatterv_ring_allgatherv,
    MPIR_CVAR_IBCAST_INTRA_ALGORITHM_tsp_ring
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBCAST_SCATTERV_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBCAST_ALLGATHERV_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBCAST_INTER_ALGORITHM;
enum IBCAST_INTER_ALGORITHM_choice {
    MPIR_CVAR_IBCAST_INTER_ALGORITHM_auto,
    MPIR_CVAR_IBCAST_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IBCAST_INTER_ALGORITHM_sched_flat
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHER_INTER_SHORT_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHER_INTRA_ALGORITHM;
enum GATHER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_GATHER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_GATHER_INTRA_ALGORITHM_binomial,
    MPIR_CVAR_GATHER_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHER_INTER_ALGORITHM;
enum GATHER_INTER_ALGORITHM_choice {
    MPIR_CVAR_GATHER_INTER_ALGORITHM_auto,
    MPIR_CVAR_GATHER_INTER_ALGORITHM_linear,
    MPIR_CVAR_GATHER_INTER_ALGORITHM_local_gather_remote_send,
    MPIR_CVAR_GATHER_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IGATHER_INTRA_ALGORITHM;
enum IGATHER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IGATHER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IGATHER_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IGATHER_INTRA_ALGORITHM_sched_binomial,
    MPIR_CVAR_IGATHER_INTRA_ALGORITHM_tsp_tree
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IGATHER_TREE_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IGATHER_INTER_ALGORITHM;
enum IGATHER_INTER_ALGORITHM_choice {
    MPIR_CVAR_IGATHER_INTER_ALGORITHM_auto,
    MPIR_CVAR_IGATHER_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IGATHER_INTER_ALGORITHM_sched_long,
    MPIR_CVAR_IGATHER_INTER_ALGORITHM_sched_short
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHERV_INTRA_ALGORITHM;
enum GATHERV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_GATHERV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_GATHERV_INTRA_ALGORITHM_linear,
    MPIR_CVAR_GATHERV_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHERV_INTER_ALGORITHM;
enum GATHERV_INTER_ALGORITHM_choice {
    MPIR_CVAR_GATHERV_INTER_ALGORITHM_auto,
    MPIR_CVAR_GATHERV_INTER_ALGORITHM_linear,
    MPIR_CVAR_GATHERV_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IGATHERV_INTRA_ALGORITHM;
enum IGATHERV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IGATHERV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IGATHERV_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IGATHERV_INTRA_ALGORITHM_sched_linear,
    MPIR_CVAR_IGATHERV_INTRA_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IGATHERV_INTER_ALGORITHM;
enum IGATHERV_INTER_ALGORITHM_choice {
    MPIR_CVAR_IGATHERV_INTER_ALGORITHM_auto,
    MPIR_CVAR_IGATHERV_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IGATHERV_INTER_ALGORITHM_sched_linear,
    MPIR_CVAR_IGATHERV_INTER_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTER_INTER_SHORT_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTER_INTRA_ALGORITHM;
enum SCATTER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_SCATTER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_SCATTER_INTRA_ALGORITHM_binomial,
    MPIR_CVAR_SCATTER_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTER_INTER_ALGORITHM;
enum SCATTER_INTER_ALGORITHM_choice {
    MPIR_CVAR_SCATTER_INTER_ALGORITHM_auto,
    MPIR_CVAR_SCATTER_INTER_ALGORITHM_linear,
    MPIR_CVAR_SCATTER_INTER_ALGORITHM_nb,
    MPIR_CVAR_SCATTER_INTER_ALGORITHM_remote_send_local_scatter
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCATTER_INTRA_ALGORITHM;
enum ISCATTER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ISCATTER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ISCATTER_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_ISCATTER_INTRA_ALGORITHM_sched_binomial,
    MPIR_CVAR_ISCATTER_INTRA_ALGORITHM_tsp_tree
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCATTER_TREE_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCATTER_INTER_ALGORITHM;
enum ISCATTER_INTER_ALGORITHM_choice {
    MPIR_CVAR_ISCATTER_INTER_ALGORITHM_auto,
    MPIR_CVAR_ISCATTER_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_ISCATTER_INTER_ALGORITHM_sched_linear,
    MPIR_CVAR_ISCATTER_INTER_ALGORITHM_sched_remote_send_local_scatter
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTERV_INTRA_ALGORITHM;
enum SCATTERV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_SCATTERV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_SCATTERV_INTRA_ALGORITHM_linear,
    MPIR_CVAR_SCATTERV_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTERV_INTER_ALGORITHM;
enum SCATTERV_INTER_ALGORITHM_choice {
    MPIR_CVAR_SCATTERV_INTER_ALGORITHM_auto,
    MPIR_CVAR_SCATTERV_INTER_ALGORITHM_linear,
    MPIR_CVAR_SCATTERV_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCATTERV_INTRA_ALGORITHM;
enum ISCATTERV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ISCATTERV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ISCATTERV_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_ISCATTERV_INTRA_ALGORITHM_sched_linear,
    MPIR_CVAR_ISCATTERV_INTRA_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCATTERV_INTER_ALGORITHM;
enum ISCATTERV_INTER_ALGORITHM_choice {
    MPIR_CVAR_ISCATTERV_INTER_ALGORITHM_auto,
    MPIR_CVAR_ISCATTERV_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_ISCATTERV_INTER_ALGORITHM_sched_linear,
    MPIR_CVAR_ISCATTERV_INTER_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_SHORT_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_LONG_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM;
enum ALLGATHER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM_brucks,
    MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM_k_brucks,
    MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM_nb,
    MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM_recursive_doubling,
    MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM_ring,
    MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM_recexch_doubling,
    MPIR_CVAR_ALLGATHER_INTRA_ALGORITHM_recexch_halving
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_BRUCKS_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_RECEXCH_SINGLE_PHASE_RECV;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_INTER_ALGORITHM;
enum ALLGATHER_INTER_ALGORITHM_choice {
    MPIR_CVAR_ALLGATHER_INTER_ALGORITHM_auto,
    MPIR_CVAR_ALLGATHER_INTER_ALGORITHM_local_gather_remote_bcast,
    MPIR_CVAR_ALLGATHER_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHER_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHER_BRUCKS_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM;
enum IALLGATHER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_sched_ring,
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_sched_brucks,
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_sched_recursive_doubling,
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_tsp_ring,
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_tsp_brucks,
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_tsp_recexch_doubling,
    MPIR_CVAR_IALLGATHER_INTRA_ALGORITHM_tsp_recexch_halving
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHER_INTER_ALGORITHM;
enum IALLGATHER_INTER_ALGORITHM_choice {
    MPIR_CVAR_IALLGATHER_INTER_ALGORITHM_auto,
    MPIR_CVAR_IALLGATHER_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLGATHER_INTER_ALGORITHM_sched_local_gather_remote_bcast
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHERV_PIPELINE_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHERV_INTRA_ALGORITHM;
enum ALLGATHERV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ALLGATHERV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ALLGATHERV_INTRA_ALGORITHM_brucks,
    MPIR_CVAR_ALLGATHERV_INTRA_ALGORITHM_nb,
    MPIR_CVAR_ALLGATHERV_INTRA_ALGORITHM_recursive_doubling,
    MPIR_CVAR_ALLGATHERV_INTRA_ALGORITHM_ring
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHERV_INTER_ALGORITHM;
enum ALLGATHERV_INTER_ALGORITHM_choice {
    MPIR_CVAR_ALLGATHERV_INTER_ALGORITHM_auto,
    MPIR_CVAR_ALLGATHERV_INTER_ALGORITHM_nb,
    MPIR_CVAR_ALLGATHERV_INTER_ALGORITHM_remote_gather_local_bcast
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHERV_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHERV_BRUCKS_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM;
enum IALLGATHERV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_sched_brucks,
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_sched_recursive_doubling,
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_sched_ring,
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_tsp_recexch_doubling,
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_tsp_recexch_halving,
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_tsp_ring,
    MPIR_CVAR_IALLGATHERV_INTRA_ALGORITHM_tsp_brucks
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHERV_INTER_ALGORITHM;
enum IALLGATHERV_INTER_ALGORITHM_choice {
    MPIR_CVAR_IALLGATHERV_INTER_ALGORITHM_auto,
    MPIR_CVAR_IALLGATHERV_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLGATHERV_INTER_ALGORITHM_sched_remote_gather_local_bcast
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALL_SHORT_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALL_MEDIUM_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALL_THROTTLE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALL_INTRA_ALGORITHM;
enum ALLTOALL_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ALLTOALL_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ALLTOALL_INTRA_ALGORITHM_brucks,
    MPIR_CVAR_ALLTOALL_INTRA_ALGORITHM_k_brucks,
    MPIR_CVAR_ALLTOALL_INTRA_ALGORITHM_nb,
    MPIR_CVAR_ALLTOALL_INTRA_ALGORITHM_pairwise,
    MPIR_CVAR_ALLTOALL_INTRA_ALGORITHM_pairwise_sendrecv_replace,
    MPIR_CVAR_ALLTOALL_INTRA_ALGORITHM_scattered
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALL_BRUCKS_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALL_INTER_ALGORITHM;
enum ALLTOALL_INTER_ALGORITHM_choice {
    MPIR_CVAR_ALLTOALL_INTER_ALGORITHM_auto,
    MPIR_CVAR_ALLTOALL_INTER_ALGORITHM_nb,
    MPIR_CVAR_ALLTOALL_INTER_ALGORITHM_pairwise_exchange
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM;
enum IALLTOALL_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_sched_brucks,
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_sched_inplace,
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_sched_pairwise,
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_sched_permuted_sendrecv,
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_tsp_ring,
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_tsp_brucks,
    MPIR_CVAR_IALLTOALL_INTRA_ALGORITHM_tsp_scattered
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALL_INTER_ALGORITHM;
enum IALLTOALL_INTER_ALGORITHM_choice {
    MPIR_CVAR_IALLTOALL_INTER_ALGORITHM_auto,
    MPIR_CVAR_IALLTOALL_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLTOALL_INTER_ALGORITHM_sched_pairwise_exchange
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALLV_INTRA_ALGORITHM;
enum ALLTOALLV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ALLTOALLV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ALLTOALLV_INTRA_ALGORITHM_nb,
    MPIR_CVAR_ALLTOALLV_INTRA_ALGORITHM_pairwise_sendrecv_replace,
    MPIR_CVAR_ALLTOALLV_INTRA_ALGORITHM_scattered
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALLV_INTER_ALGORITHM;
enum ALLTOALLV_INTER_ALGORITHM_choice {
    MPIR_CVAR_ALLTOALLV_INTER_ALGORITHM_auto,
    MPIR_CVAR_ALLTOALLV_INTER_ALGORITHM_pairwise_exchange,
    MPIR_CVAR_ALLTOALLV_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALLV_INTRA_ALGORITHM;
enum IALLTOALLV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IALLTOALLV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IALLTOALLV_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLTOALLV_INTRA_ALGORITHM_sched_blocked,
    MPIR_CVAR_IALLTOALLV_INTRA_ALGORITHM_sched_inplace,
    MPIR_CVAR_IALLTOALLV_INTRA_ALGORITHM_tsp_scattered,
    MPIR_CVAR_IALLTOALLV_INTRA_ALGORITHM_tsp_blocked,
    MPIR_CVAR_IALLTOALLV_INTRA_ALGORITHM_tsp_inplace
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALLV_INTER_ALGORITHM;
enum IALLTOALLV_INTER_ALGORITHM_choice {
    MPIR_CVAR_IALLTOALLV_INTER_ALGORITHM_auto,
    MPIR_CVAR_IALLTOALLV_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLTOALLV_INTER_ALGORITHM_sched_pairwise_exchange
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALLV_SCATTERED_OUTSTANDING_TASKS;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALLV_SCATTERED_BATCH_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALLW_INTRA_ALGORITHM;
enum ALLTOALLW_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ALLTOALLW_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ALLTOALLW_INTRA_ALGORITHM_nb,
    MPIR_CVAR_ALLTOALLW_INTRA_ALGORITHM_pairwise_sendrecv_replace,
    MPIR_CVAR_ALLTOALLW_INTRA_ALGORITHM_scattered
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALLW_INTER_ALGORITHM;
enum ALLTOALLW_INTER_ALGORITHM_choice {
    MPIR_CVAR_ALLTOALLW_INTER_ALGORITHM_auto,
    MPIR_CVAR_ALLTOALLW_INTER_ALGORITHM_nb,
    MPIR_CVAR_ALLTOALLW_INTER_ALGORITHM_pairwise_exchange
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALLW_INTRA_ALGORITHM;
enum IALLTOALLW_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IALLTOALLW_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IALLTOALLW_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLTOALLW_INTRA_ALGORITHM_sched_blocked,
    MPIR_CVAR_IALLTOALLW_INTRA_ALGORITHM_sched_inplace,
    MPIR_CVAR_IALLTOALLW_INTRA_ALGORITHM_tsp_blocked,
    MPIR_CVAR_IALLTOALLW_INTRA_ALGORITHM_tsp_inplace
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALLW_INTER_ALGORITHM;
enum IALLTOALLW_INTER_ALGORITHM_choice {
    MPIR_CVAR_IALLTOALLW_INTER_ALGORITHM_auto,
    MPIR_CVAR_IALLTOALLW_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLTOALLW_INTER_ALGORITHM_sched_pairwise_exchange
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SHORT_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_MAX_SMP_REDUCE_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_INTRA_ALGORITHM;
enum REDUCE_INTRA_ALGORITHM_choice {
    MPIR_CVAR_REDUCE_INTRA_ALGORITHM_auto,
    MPIR_CVAR_REDUCE_INTRA_ALGORITHM_binomial,
    MPIR_CVAR_REDUCE_INTRA_ALGORITHM_nb,
    MPIR_CVAR_REDUCE_INTRA_ALGORITHM_smp,
    MPIR_CVAR_REDUCE_INTRA_ALGORITHM_reduce_scatter_gather
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_INTER_ALGORITHM;
enum REDUCE_INTER_ALGORITHM_choice {
    MPIR_CVAR_REDUCE_INTER_ALGORITHM_auto,
    MPIR_CVAR_REDUCE_INTER_ALGORITHM_local_reduce_remote_send,
    MPIR_CVAR_REDUCE_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_TREE_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern const char * MPIR_CVAR_IREDUCE_TREE_TYPE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_TOPO_REORDER_ENABLE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_TOPO_OVERHEAD;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_TOPO_DIFF_GROUPS;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_TOPO_DIFF_SWITCHES;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_TOPO_SAME_SWITCHES;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_TREE_PIPELINE_CHUNK_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_RING_CHUNK_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_TREE_BUFFER_PER_CHILD;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_INTRA_ALGORITHM;
enum IREDUCE_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IREDUCE_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IREDUCE_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IREDUCE_INTRA_ALGORITHM_sched_smp,
    MPIR_CVAR_IREDUCE_INTRA_ALGORITHM_sched_binomial,
    MPIR_CVAR_IREDUCE_INTRA_ALGORITHM_sched_reduce_scatter_gather,
    MPIR_CVAR_IREDUCE_INTRA_ALGORITHM_tsp_tree,
    MPIR_CVAR_IREDUCE_INTRA_ALGORITHM_tsp_ring
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_INTER_ALGORITHM;
enum IREDUCE_INTER_ALGORITHM_choice {
    MPIR_CVAR_IREDUCE_INTER_ALGORITHM_auto,
    MPIR_CVAR_IREDUCE_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IREDUCE_INTER_ALGORITHM_sched_local_reduce_remote_send
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_SHORT_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_MAX_SMP_ALLREDUCE_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM;
enum ALLREDUCE_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_nb,
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_smp,
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_recursive_doubling,
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_reduce_scatter_allgather,
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_tree,
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_recexch,
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_ring,
    MPIR_CVAR_ALLREDUCE_INTRA_ALGORITHM_k_reduce_scatter_allgather
};
/* declared in src/mpi/coll/cvars.txt */
extern const char * MPIR_CVAR_ALLREDUCE_TREE_TYPE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_TREE_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_TOPO_REORDER_ENABLE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_TOPO_OVERHEAD;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_TOPO_DIFF_GROUPS;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_TOPO_DIFF_SWITCHES;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_TOPO_SAME_SWITCHES;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_TREE_PIPELINE_CHUNK_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_TREE_BUFFER_PER_CHILD;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_RECEXCH_SINGLE_PHASE_RECV;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_INTER_ALGORITHM;
enum ALLREDUCE_INTER_ALGORITHM_choice {
    MPIR_CVAR_ALLREDUCE_INTER_ALGORITHM_auto,
    MPIR_CVAR_ALLREDUCE_INTER_ALGORITHM_nb,
    MPIR_CVAR_ALLREDUCE_INTER_ALGORITHM_reduce_exchange_bcast
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLREDUCE_TREE_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern const char * MPIR_CVAR_IALLREDUCE_TREE_TYPE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLREDUCE_TREE_PIPELINE_CHUNK_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLREDUCE_TREE_BUFFER_PER_CHILD;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLREDUCE_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM;
enum IALLREDUCE_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_sched_naive,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_sched_smp,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_sched_recursive_doubling,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_sched_reduce_scatter_allgather,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_tsp_recexch_single_buffer,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_tsp_recexch_multiple_buffer,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_tsp_tree,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_tsp_ring,
    MPIR_CVAR_IALLREDUCE_INTRA_ALGORITHM_tsp_recexch_reduce_scatter_recexch_allgatherv
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLREDUCE_INTER_ALGORITHM;
enum IALLREDUCE_INTER_ALGORITHM_choice {
    MPIR_CVAR_IALLREDUCE_INTER_ALGORITHM_auto,
    MPIR_CVAR_IALLREDUCE_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IALLREDUCE_INTER_ALGORITHM_sched_remote_reduce_local_bcast
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_COMMUTATIVE_LONG_MSG_SIZE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_INTRA_ALGORITHM;
enum REDUCE_SCATTER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_REDUCE_SCATTER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_REDUCE_SCATTER_INTRA_ALGORITHM_nb,
    MPIR_CVAR_REDUCE_SCATTER_INTRA_ALGORITHM_noncommutative,
    MPIR_CVAR_REDUCE_SCATTER_INTRA_ALGORITHM_pairwise,
    MPIR_CVAR_REDUCE_SCATTER_INTRA_ALGORITHM_recursive_doubling,
    MPIR_CVAR_REDUCE_SCATTER_INTRA_ALGORITHM_recursive_halving
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_INTER_ALGORITHM;
enum REDUCE_SCATTER_INTER_ALGORITHM_choice {
    MPIR_CVAR_REDUCE_SCATTER_INTER_ALGORITHM_auto,
    MPIR_CVAR_REDUCE_SCATTER_INTER_ALGORITHM_nb,
    MPIR_CVAR_REDUCE_SCATTER_INTER_ALGORITHM_remote_reduce_local_scatter
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_SCATTER_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_SCATTER_INTRA_ALGORITHM;
enum IREDUCE_SCATTER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IREDUCE_SCATTER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IREDUCE_SCATTER_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IREDUCE_SCATTER_INTRA_ALGORITHM_sched_noncommutative,
    MPIR_CVAR_IREDUCE_SCATTER_INTRA_ALGORITHM_sched_recursive_doubling,
    MPIR_CVAR_IREDUCE_SCATTER_INTRA_ALGORITHM_sched_pairwise,
    MPIR_CVAR_IREDUCE_SCATTER_INTRA_ALGORITHM_sched_recursive_halving,
    MPIR_CVAR_IREDUCE_SCATTER_INTRA_ALGORITHM_tsp_recexch
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_SCATTER_INTER_ALGORITHM;
enum IREDUCE_SCATTER_INTER_ALGORITHM_choice {
    MPIR_CVAR_IREDUCE_SCATTER_INTER_ALGORITHM_auto,
    MPIR_CVAR_IREDUCE_SCATTER_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IREDUCE_SCATTER_INTER_ALGORITHM_sched_remote_reduce_local_scatterv
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTRA_ALGORITHM;
enum REDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_choice {
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_auto,
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_noncommutative,
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_recursive_doubling,
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_pairwise,
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_recursive_halving,
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTER_ALGORITHM;
enum REDUCE_SCATTER_BLOCK_INTER_ALGORITHM_choice {
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTER_ALGORITHM_auto,
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTER_ALGORITHM_nb,
    MPIR_CVAR_REDUCE_SCATTER_BLOCK_INTER_ALGORITHM_remote_reduce_local_scatter
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_SCATTER_BLOCK_RECEXCH_KVAL;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM;
enum IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_sched_noncommutative,
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_sched_recursive_doubling,
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_sched_pairwise,
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_sched_recursive_halving,
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTRA_ALGORITHM_tsp_recexch
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTER_ALGORITHM;
enum IREDUCE_SCATTER_BLOCK_INTER_ALGORITHM_choice {
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTER_ALGORITHM_auto,
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_IREDUCE_SCATTER_BLOCK_INTER_ALGORITHM_sched_remote_reduce_local_scatterv
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCAN_INTRA_ALGORITHM;
enum SCAN_INTRA_ALGORITHM_choice {
    MPIR_CVAR_SCAN_INTRA_ALGORITHM_auto,
    MPIR_CVAR_SCAN_INTRA_ALGORITHM_nb,
    MPIR_CVAR_SCAN_INTRA_ALGORITHM_smp,
    MPIR_CVAR_SCAN_INTRA_ALGORITHM_recursive_doubling
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCAN_INTRA_ALGORITHM;
enum ISCAN_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ISCAN_INTRA_ALGORITHM_auto,
    MPIR_CVAR_ISCAN_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_ISCAN_INTRA_ALGORITHM_sched_smp,
    MPIR_CVAR_ISCAN_INTRA_ALGORITHM_sched_recursive_doubling,
    MPIR_CVAR_ISCAN_INTRA_ALGORITHM_tsp_recursive_doubling
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_EXSCAN_INTRA_ALGORITHM;
enum EXSCAN_INTRA_ALGORITHM_choice {
    MPIR_CVAR_EXSCAN_INTRA_ALGORITHM_auto,
    MPIR_CVAR_EXSCAN_INTRA_ALGORITHM_nb,
    MPIR_CVAR_EXSCAN_INTRA_ALGORITHM_recursive_doubling
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IEXSCAN_INTRA_ALGORITHM;
enum IEXSCAN_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IEXSCAN_INTRA_ALGORITHM_auto,
    MPIR_CVAR_IEXSCAN_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_IEXSCAN_INTRA_ALGORITHM_sched_recursive_doubling
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLGATHER_INTRA_ALGORITHM;
enum NEIGHBOR_ALLGATHER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLGATHER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLGATHER_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLGATHER_INTER_ALGORITHM;
enum NEIGHBOR_ALLGATHER_INTER_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLGATHER_INTER_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLGATHER_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLGATHER_INTRA_ALGORITHM;
enum INEIGHBOR_ALLGATHER_INTRA_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLGATHER_INTRA_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLGATHER_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLGATHER_INTRA_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLGATHER_INTRA_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLGATHER_INTER_ALGORITHM;
enum INEIGHBOR_ALLGATHER_INTER_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLGATHER_INTER_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLGATHER_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLGATHER_INTER_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLGATHER_INTER_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLGATHERV_INTRA_ALGORITHM;
enum NEIGHBOR_ALLGATHERV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLGATHERV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLGATHERV_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLGATHERV_INTER_ALGORITHM;
enum NEIGHBOR_ALLGATHERV_INTER_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLGATHERV_INTER_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLGATHERV_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTRA_ALGORITHM;
enum INEIGHBOR_ALLGATHERV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTRA_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTRA_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTER_ALGORITHM;
enum INEIGHBOR_ALLGATHERV_INTER_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTER_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTER_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLGATHERV_INTER_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALL_INTRA_ALGORITHM;
enum NEIGHBOR_ALLTOALL_INTRA_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLTOALL_INTRA_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLTOALL_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALL_INTER_ALGORITHM;
enum NEIGHBOR_ALLTOALL_INTER_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLTOALL_INTER_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLTOALL_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALL_INTRA_ALGORITHM;
enum INEIGHBOR_ALLTOALL_INTRA_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLTOALL_INTRA_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALL_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALL_INTRA_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLTOALL_INTRA_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALL_INTER_ALGORITHM;
enum INEIGHBOR_ALLTOALL_INTER_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLTOALL_INTER_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALL_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALL_INTER_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLTOALL_INTER_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALLV_INTRA_ALGORITHM;
enum NEIGHBOR_ALLTOALLV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLTOALLV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLTOALLV_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALLV_INTER_ALGORITHM;
enum NEIGHBOR_ALLTOALLV_INTER_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLTOALLV_INTER_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLTOALLV_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTRA_ALGORITHM;
enum INEIGHBOR_ALLTOALLV_INTRA_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTRA_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTRA_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTRA_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTER_ALGORITHM;
enum INEIGHBOR_ALLTOALLV_INTER_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTER_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTER_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLTOALLV_INTER_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALLW_INTRA_ALGORITHM;
enum NEIGHBOR_ALLTOALLW_INTRA_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLTOALLW_INTRA_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLTOALLW_INTRA_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALLW_INTER_ALGORITHM;
enum NEIGHBOR_ALLTOALLW_INTER_ALGORITHM_choice {
    MPIR_CVAR_NEIGHBOR_ALLTOALLW_INTER_ALGORITHM_auto,
    MPIR_CVAR_NEIGHBOR_ALLTOALLW_INTER_ALGORITHM_nb
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTRA_ALGORITHM;
enum INEIGHBOR_ALLTOALLW_INTRA_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTRA_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTRA_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTRA_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTRA_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTER_ALGORITHM;
enum INEIGHBOR_ALLTOALLW_INTER_ALGORITHM_choice {
    MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTER_ALGORITHM_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTER_ALGORITHM_sched_auto,
    MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTER_ALGORITHM_sched_linear,
    MPIR_CVAR_INEIGHBOR_ALLTOALLW_INTER_ALGORITHM_tsp_linear
};
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BARRIER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBARRIER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BARRIER_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IBCAST_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_BCAST_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IGATHER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHER_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHERV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IGATHERV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_GATHERV_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCATTER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTER_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTERV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCATTERV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCATTERV_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHER_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHERV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLGATHERV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLGATHERV_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALL_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALL_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALL_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALLV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALLV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALLV_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALLW_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLTOALLW_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLTOALLW_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IALLREDUCE_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ALLREDUCE_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_SCATTER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_BLOCK_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IREDUCE_SCATTER_BLOCK_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_REDUCE_SCATTER_BLOCK_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCAN_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_ISCAN_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_SCAN_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_EXSCAN_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_IEXSCAN_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_EXSCAN_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLGATHER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLGATHER_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLGATHER_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLGATHERV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLGATHERV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLGATHERV_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALL_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALL_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALL_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALLV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALLV_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALLV_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALLW_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_INEIGHBOR_ALLTOALLW_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/cvars.txt */
extern int MPIR_CVAR_NEIGHBOR_ALLTOALLW_INIT_DEVICE_COLLECTIVE;
/* declared in src/mpi/coll/gather/gather_intra_binomial.c */
extern int MPIR_CVAR_GATHER_VSMALL_MSG_SIZE;
/* declared in src/mpi/coll/gatherv/gatherv_allcomm_linear.c */
extern int MPIR_CVAR_GATHERV_INTER_SSEND_MIN_PROCS;
/* declared in src/mpi/coll/ialltoall/ialltoall_tsp_brucks.c */
extern int MPIR_CVAR_IALLTOALL_BRUCKS_KVAL;
/* declared in src/mpi/coll/ialltoall/ialltoall_tsp_brucks.c */
extern int MPIR_CVAR_IALLTOALL_BRUCKS_BUFFER_PER_NBR;
/* declared in src/mpi/coll/ialltoall/ialltoall_tsp_scattered.c */
extern int MPIR_CVAR_IALLTOALL_SCATTERED_OUTSTANDING_TASKS;
/* declared in src/mpi/coll/ialltoall/ialltoall_tsp_scattered.c */
extern int MPIR_CVAR_IALLTOALL_SCATTERED_BATCH_SIZE;
/* declared in src/mpi/coll/src/coll_impl.c */
extern int MPIR_CVAR_DEVICE_COLLECTIVES;
enum DEVICE_COLLECTIVES_choice {
    MPIR_CVAR_DEVICE_COLLECTIVES_all,
    MPIR_CVAR_DEVICE_COLLECTIVES_none,
    MPIR_CVAR_DEVICE_COLLECTIVES_percoll
};
/* declared in src/mpi/coll/src/coll_impl.c */
extern int MPIR_CVAR_COLLECTIVE_FALLBACK;
enum COLLECTIVE_FALLBACK_choice {
    MPIR_CVAR_COLLECTIVE_FALLBACK_error,
    MPIR_CVAR_COLLECTIVE_FALLBACK_print,
    MPIR_CVAR_COLLECTIVE_FALLBACK_silent
};
/* declared in src/mpi/coll/src/coll_impl.c */
extern const char * MPIR_CVAR_COLL_SELECTION_TUNING_JSON_FILE;
/* declared in src/mpi/coll/src/coll_impl.c */
extern int MPIR_CVAR_HIERARCHY_DUMP;
/* declared in src/mpi/coll/src/coll_impl.c */
extern const char * MPIR_CVAR_COORDINATES_FILE;
/* declared in src/mpi/coll/src/coll_impl.c */
extern int MPIR_CVAR_COLL_TREE_DUMP;
/* declared in src/mpi/coll/src/coll_impl.c */
extern int MPIR_CVAR_COORDINATES_DUMP;
/* declared in src/mpi/coll/transports/gentran/gentran_impl.c */
extern int MPIR_CVAR_PROGRESS_MAX_COLLS;
/* declared in src/mpi/comm/comm_impl.c */
extern int MPIR_CVAR_COMM_SPLIT_USE_QSORT;
/* declared in src/mpi/comm/contextid.c */
extern int MPIR_CVAR_CTXID_EAGER_SIZE;
/* declared in src/mpi/datatype/typerep/dataloop/segment.c */
extern int MPIR_CVAR_DATALOOP_FAST_SEEK;
/* declared in src/mpi/datatype/typerep/src/typerep_yaksa_pack.c */
extern int MPIR_CVAR_YAKSA_COMPLEX_SUPPORT;
/* declared in src/mpi/datatype/typerep/src/typerep_yaksa_pack.c */
extern int MPIR_CVAR_GPU_DOUBLE_SUPPORT;
/* declared in src/mpi/datatype/typerep/src/typerep_yaksa_pack.c */
extern int MPIR_CVAR_GPU_LONG_DOUBLE_SUPPORT;
/* declared in src/mpi/datatype/typerep/src/typerep_yaksa_pack.c */
extern int MPIR_CVAR_ENABLE_YAKSA_REDUCTION;
/* declared in src/mpi/debugger/dbginit.c */
extern int MPIR_CVAR_PROCTABLE_SIZE;
/* declared in src/mpi/debugger/dbginit.c */
extern int MPIR_CVAR_PROCTABLE_PRINT;
/* declared in src/mpi/errhan/errutil.c */
extern int MPIR_CVAR_PRINT_ERROR_STACK;
/* declared in src/mpi/errhan/errutil.c */
extern int MPIR_CVAR_CHOP_ERROR_STACK;
/* declared in src/mpi/init/init_async.c */
extern int MPIR_CVAR_ASYNC_PROGRESS;
/* declared in src/mpi/init/init_async.c */
extern const char * MPIR_CVAR_PROGRESS_THREAD_AFFINITY;
/* declared in src/mpi/init/init_impl.c */
extern int MPIR_CVAR_SUPPRESS_ABORT_MESSAGE;
/* declared in src/mpi/init/init_impl.c */
extern int MPIR_CVAR_COREDUMP_ON_ABORT;
/* declared in src/mpi/init/local_proc_attrs.c */
extern int MPIR_CVAR_ERROR_CHECKING;
/* declared in src/mpi/init/mpi_init.h */
extern int MPIR_CVAR_MEMDUMP;
/* declared in src/mpi/init/mpi_init.h */
extern int MPIR_CVAR_DEBUG_SUMMARY;
/* declared in src/mpi/init/mpir_init.c */
extern const char * MPIR_CVAR_DEFAULT_THREAD_LEVEL;
/* declared in src/mpi/init/mpir_init.c */
extern int MPIR_CVAR_DEBUG_HOLD;
/* declared in src/mpi/init/mpir_init.c */
extern int MPIR_CVAR_GPU_USE_IMMEDIATE_COMMAND_LIST;
/* declared in src/mpi/init/mpir_init.c */
extern int MPIR_CVAR_GPU_ROUND_ROBIN_COMMAND_QUEUES;
/* declared in src/mpi/init/mpir_init.c */
extern int MPIR_CVAR_NO_COLLECTIVE_FINALIZE;
/* declared in src/mpi/init/mpir_init.c */
extern int MPIR_CVAR_FINALIZE_WAIT;
/* declared in src/mpi/request/request_impl.c */
extern int MPIR_CVAR_REQUEST_ERR_FATAL;
/* declared in src/mpi/request/request_impl.c */
extern int MPIR_CVAR_REQUEST_POLL_FREQ;
/* declared in src/mpi/request/request_impl.c */
extern int MPIR_CVAR_REQUEST_BATCH_SIZE;
/* declared in src/mpi/request/request_impl.c */
extern int MPIR_CVAR_DEBUG_PROGRESS_TIMEOUT;
/* declared in src/mpi/topo/dims_create.c */
extern int MPIR_CVAR_DIMS_VERBOSE;
/* declared in src/mpi_t/qmpi_register.c */
extern const char * MPIR_CVAR_QMPI_TOOL_LIST;
/* declared in src/nameserv/file/file_nameserv.c */
extern const char * MPIR_CVAR_NAMESERV_FILE_PUBDIR;
/* declared in src/util/mpir_handlemem.c */
extern int MPIR_CVAR_ABORT_ON_LEAKED_HANDLES;
/* declared in src/util/mpir_nettopo.c */
extern const char * MPIR_CVAR_NETLOC_NODE_FILE;
/* declared in src/util/mpir_nodemap.c */
extern int MPIR_CVAR_NOLOCAL;
/* declared in src/util/mpir_nodemap.c */
extern int MPIR_CVAR_ODD_EVEN_CLIQUES;
/* declared in src/util/mpir_nodemap.c */
extern int MPIR_CVAR_NUM_CLIQUES;
/* declared in src/util/mpir_nodemap.c */
extern int MPIR_CVAR_CLIQUES_BY_BLOCK;
/* declared in src/util/mpir_pmi.c */
extern int MPIR_CVAR_PMI_VERSION;
enum PMI_VERSION_choice {
    MPIR_CVAR_PMI_VERSION_1,
    MPIR_CVAR_PMI_VERSION_2,
    MPIR_CVAR_PMI_VERSION_x
};
/* declared in src/include/mpir_err.h */
extern int MPIR_CVAR_COLL_ALIAS_CHECK;
/* declared in src/include/mpir_gpu.h */
extern int MPIR_CVAR_ENABLE_GPU;
/* declared in src/include/mpir_gpu.h */
extern int MPIR_CVAR_GPU_HAS_WAIT_KERNEL;
/* declared in src/include/mpir_gpu.h */
extern int MPIR_CVAR_ENABLE_GPU_REGISTER;
/* declared in src/mpid/ch3/channels/nemesis/include/mpid_nem_inline.h */
extern int MPIR_CVAR_POLLS_BEFORE_YIELD;
/* declared in src/mpid/ch3/channels/nemesis/netmod/tcp/tcp_init.c */
extern const char * MPIR_CVAR_CH3_INTERFACE_HOSTNAME;
/* declared in src/mpid/ch3/channels/nemesis/netmod/tcp/tcp_init.c */
extern MPIR_T_cvar_range_value_t MPIR_CVAR_CH3_PORT_RANGE;
/* declared in src/mpid/ch3/channels/nemesis/netmod/tcp/tcp_init.c */
extern const char * MPIR_CVAR_NEMESIS_TCP_NETWORK_IFACE;
/* declared in src/mpid/ch3/channels/nemesis/netmod/tcp/tcp_init.c */
extern int MPIR_CVAR_NEMESIS_TCP_HOST_LOOKUP_RETRIES;
/* declared in src/mpid/ch3/channels/nemesis/src/mpid_nem_ckpt.c */
extern int MPIR_CVAR_NEMESIS_ENABLE_CKPOINT;
/* declared in src/mpid/ch3/channels/nemesis/src/mpid_nem_init.c */
extern int MPIR_CVAR_NEMESIS_SHM_EAGER_MAX_SZ;
/* declared in src/mpid/ch3/channels/nemesis/src/mpid_nem_init.c */
extern int MPIR_CVAR_NEMESIS_SHM_READY_EAGER_MAX_SZ;
/* declared in src/mpid/ch3/channels/nemesis/src/mpid_nem_lmt.c */
extern int MPIR_CVAR_ENABLE_FT;
/* declared in src/mpid/ch3/channels/nemesis/src/mpid_nem_network.c */
extern const char * MPIR_CVAR_NEMESIS_NETMOD;
/* declared in src/mpid/ch3/src/ch3u_comm.c */
extern int MPIR_CVAR_CH3_ENABLE_HCOLL;
/* declared in src/mpid/ch3/src/ch3u_port.c */
extern int MPIR_CVAR_CH3_COMM_CONNECT_TIMEOUT;
/* declared in src/mpid/ch3/src/ch3u_rma_ops.c */
extern int MPIR_CVAR_CH3_RMA_OP_PIGGYBACK_LOCK_DATA_SIZE;
/* declared in src/mpid/ch3/src/ch3u_rma_progress.c */
extern int MPIR_CVAR_CH3_RMA_ACTIVE_REQ_THRESHOLD;
/* declared in src/mpid/ch3/src/ch3u_rma_progress.c */
extern int MPIR_CVAR_CH3_RMA_POKE_PROGRESS_REQ_THRESHOLD;
/* declared in src/mpid/ch3/src/ch3u_rma_sync.c */
extern int MPIR_CVAR_CH3_RMA_SCALABLE_FENCE_PROCESS_NUM;
/* declared in src/mpid/ch3/src/ch3u_rma_sync.c */
extern int MPIR_CVAR_CH3_RMA_DELAY_ISSUING_FOR_PIGGYBACKING;
/* declared in src/mpid/ch3/src/mpid_rma.c */
extern int MPIR_CVAR_CH3_RMA_SLOTS_SIZE;
/* declared in src/mpid/ch3/src/mpid_rma.c */
extern int MPIR_CVAR_CH3_RMA_TARGET_LOCK_DATA_BYTES;
/* declared in src/mpid/ch3/src/mpid_vc.c */
extern int MPIR_CVAR_CH3_EAGER_MAX_MSG_SIZE;
/* declared in src/mpid/ch3/src/mpidi_pg.c */
extern int MPIR_CVAR_CH3_PG_VERBOSE;
/* declared in src/mpid/ch3/src/mpidi_rma.c */
extern int MPIR_CVAR_CH3_RMA_OP_WIN_POOL_SIZE;
/* declared in src/mpid/ch3/src/mpidi_rma.c */
extern int MPIR_CVAR_CH3_RMA_OP_GLOBAL_POOL_SIZE;
/* declared in src/mpid/ch3/src/mpidi_rma.c */
extern int MPIR_CVAR_CH3_RMA_TARGET_WIN_POOL_SIZE;
/* declared in src/mpid/ch3/src/mpidi_rma.c */
extern int MPIR_CVAR_CH3_RMA_TARGET_GLOBAL_POOL_SIZE;
/* declared in src/mpid/ch3/src/mpidi_rma.c */
extern int MPIR_CVAR_CH3_RMA_TARGET_LOCK_ENTRY_WIN_POOL_SIZE;
/* declared in src/mpid/ch4/netmod/ofi/init_provider.c */
extern const char * MPIR_CVAR_OFI_USE_PROVIDER;
/* declared in src/mpid/ch4/netmod/ofi/init_provider.c */
extern int MPIR_CVAR_SINGLE_HOST_ENABLED;
/* declared in src/mpid/ch4/netmod/ofi/ofi_am.h */
extern int MPIR_CVAR_CH4_OFI_AM_LONG_FORCE_PIPELINE;
/* declared in src/mpid/ch4/netmod/ofi/ofi_coll.h */
extern int MPIR_CVAR_BCAST_OFI_INTRA_ALGORITHM;
enum BCAST_OFI_INTRA_ALGORITHM_choice {
    MPIR_CVAR_BCAST_OFI_INTRA_ALGORITHM_mpir,
    MPIR_CVAR_BCAST_OFI_INTRA_ALGORITHM_trigger_tree_tagged,
    MPIR_CVAR_BCAST_OFI_INTRA_ALGORITHM_trigger_tree_rma,
    MPIR_CVAR_BCAST_OFI_INTRA_ALGORITHM_auto
};
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_OFI_SKIP_IPV6;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_DATA;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_AV_TABLE;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_SCALABLE_ENDPOINTS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_SHARED_CONTEXTS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_MR_VIRT_ADDRESS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_MR_ALLOCATED;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_MR_REGISTER_NULL;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_MR_PROV_KEY;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_TAGGED;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_AM;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_RMA;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_ATOMICS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_FETCH_ATOMIC_IOVECS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_DATA_AUTO_PROGRESS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_CONTROL_AUTO_PROGRESS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_PT2PT_NOPACK;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_HMEM;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_MR_HMEM;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_RDMA_THRESHOLD;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_CONTEXT_ID_BITS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_RANK_BITS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_TAG_BITS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_MAJOR_VERSION;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_MINOR_VERSION;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_MAX_RMA_SEP_CTX;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_MAX_EAGAIN_RETRY;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_NUM_AM_BUFFERS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_NUM_OPTIMIZED_MEMORY_REGIONS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_RMA_PROGRESS_INTERVAL;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_RMA_IOVEC_MAX;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_EAGER_MAX_MSG_SIZE;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_MAX_NICS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_MULTI_NIC_STRIPING;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_MULTI_NIC_STRIPING_THRESHOLD;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_MULTI_NIC_HASHING;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_MULTIRECV_BUFFER_SIZE;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_OFI_USE_MIN_NICS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_TRIGGERED;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_SEND_ENGINE_TYPE;
enum CH4_OFI_GPU_SEND_ENGINE_TYPE_choice {
    MPIR_CVAR_CH4_OFI_GPU_SEND_ENGINE_TYPE_compute,
    MPIR_CVAR_CH4_OFI_GPU_SEND_ENGINE_TYPE_copy_high_bandwidth,
    MPIR_CVAR_CH4_OFI_GPU_SEND_ENGINE_TYPE_copy_low_latency,
    MPIR_CVAR_CH4_OFI_GPU_SEND_ENGINE_TYPE_yaksa
};
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_RECEIVE_ENGINE_TYPE;
enum CH4_OFI_GPU_RECEIVE_ENGINE_TYPE_choice {
    MPIR_CVAR_CH4_OFI_GPU_RECEIVE_ENGINE_TYPE_compute,
    MPIR_CVAR_CH4_OFI_GPU_RECEIVE_ENGINE_TYPE_copy_high_bandwidth,
    MPIR_CVAR_CH4_OFI_GPU_RECEIVE_ENGINE_TYPE_copy_low_latency,
    MPIR_CVAR_CH4_OFI_GPU_RECEIVE_ENGINE_TYPE_yaksa
};
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_ENABLE_GPU_PIPELINE;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_PIPELINE_THRESHOLD;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_PIPELINE_BUFFER_SZ;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_PIPELINE_NUM_BUFFERS_PER_CHUNK;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_PIPELINE_MAX_NUM_BUFFERS;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_PIPELINE_D2H_ENGINE_TYPE;
/* declared in src/mpid/ch4/netmod/ofi/ofi_init.c */
extern int MPIR_CVAR_CH4_OFI_GPU_PIPELINE_H2D_ENGINE_TYPE;
/* declared in src/mpid/ch4/netmod/ofi/ofi_rma.h */
extern int MPIR_CVAR_CH4_OFI_DISABLE_INJECT_WRITE;
/* declared in src/mpid/ch4/netmod/ucx/ucx_recv.h */
extern int MPIR_CVAR_UCX_DT_RECV;
/* declared in src/mpid/ch4/shm/ipc/gpu/gpu_post.c */
extern int MPIR_CVAR_CH4_IPC_GPU_HANDLE_CACHE;
enum CH4_IPC_GPU_HANDLE_CACHE_choice {
    MPIR_CVAR_CH4_IPC_GPU_HANDLE_CACHE_generic,
    MPIR_CVAR_CH4_IPC_GPU_HANDLE_CACHE_specialized,
    MPIR_CVAR_CH4_IPC_GPU_HANDLE_CACHE_disabled
};
/* declared in src/mpid/ch4/shm/ipc/gpu/gpu_post.c */
extern int MPIR_CVAR_CH4_IPC_GPU_P2P_THRESHOLD;
/* declared in src/mpid/ch4/shm/ipc/gpu/gpu_post.c */
extern int MPIR_CVAR_CH4_IPC_GPU_FAST_COPY_MAX_SIZE;
/* declared in src/mpid/ch4/shm/ipc/gpu/gpu_post.c */
extern int MPIR_CVAR_CH4_IPC_ZE_SHAREABLE_HANDLE;
enum CH4_IPC_ZE_SHAREABLE_HANDLE_choice {
    MPIR_CVAR_CH4_IPC_ZE_SHAREABLE_HANDLE_pidfd,
    MPIR_CVAR_CH4_IPC_ZE_SHAREABLE_HANDLE_drmfd
};
/* declared in src/mpid/ch4/shm/ipc/gpu/gpu_post.c */
extern int MPIR_CVAR_CH4_IPC_GPU_ENGINE_TYPE;
enum CH4_IPC_GPU_ENGINE_TYPE_choice {
    MPIR_CVAR_CH4_IPC_GPU_ENGINE_TYPE_auto,
    MPIR_CVAR_CH4_IPC_GPU_ENGINE_TYPE_compute,
    MPIR_CVAR_CH4_IPC_GPU_ENGINE_TYPE_copy_high_bandwidth,
    MPIR_CVAR_CH4_IPC_GPU_ENGINE_TYPE_copy_low_latency
};
/* declared in src/mpid/ch4/shm/ipc/gpu/gpu_post.c */
extern int MPIR_CVAR_CH4_IPC_GPU_READ_WRITE_PROTOCOL;
enum CH4_IPC_GPU_READ_WRITE_PROTOCOL_choice {
    MPIR_CVAR_CH4_IPC_GPU_READ_WRITE_PROTOCOL_auto,
    MPIR_CVAR_CH4_IPC_GPU_READ_WRITE_PROTOCOL_read,
    MPIR_CVAR_CH4_IPC_GPU_READ_WRITE_PROTOCOL_write
};
/* declared in src/mpid/ch4/shm/ipc/src/ipc_send.h */
extern int MPIR_CVAR_CH4_IPC_MAP_REPEAT_ADDR;
/* declared in src/mpid/ch4/shm/ipc/xpmem/xpmem_post.h */
extern int MPIR_CVAR_CH4_XPMEM_ENABLE;
/* declared in src/mpid/ch4/shm/ipc/xpmem/xpmem_post.h */
extern int MPIR_CVAR_CH4_IPC_XPMEM_P2P_THRESHOLD;
/* declared in src/mpid/ch4/shm/posix/posix_coll.h */
extern int MPIR_CVAR_BCAST_POSIX_INTRA_ALGORITHM;
enum BCAST_POSIX_INTRA_ALGORITHM_choice {
    MPIR_CVAR_BCAST_POSIX_INTRA_ALGORITHM_mpir,
    MPIR_CVAR_BCAST_POSIX_INTRA_ALGORITHM_release_gather,
    MPIR_CVAR_BCAST_POSIX_INTRA_ALGORITHM_auto,
    MPIR_CVAR_BCAST_POSIX_INTRA_ALGORITHM_ipc_read
};
/* declared in src/mpid/ch4/shm/posix/posix_coll.h */
extern int MPIR_CVAR_IBCAST_POSIX_INTRA_ALGORITHM;
enum IBCAST_POSIX_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IBCAST_POSIX_INTRA_ALGORITHM_mpir,
    MPIR_CVAR_IBCAST_POSIX_INTRA_ALGORITHM_release_gather,
    MPIR_CVAR_IBCAST_POSIX_INTRA_ALGORITHM_auto
};
/* declared in src/mpid/ch4/shm/posix/posix_coll.h */
extern int MPIR_CVAR_REDUCE_POSIX_INTRA_ALGORITHM;
enum REDUCE_POSIX_INTRA_ALGORITHM_choice {
    MPIR_CVAR_REDUCE_POSIX_INTRA_ALGORITHM_mpir,
    MPIR_CVAR_REDUCE_POSIX_INTRA_ALGORITHM_release_gather,
    MPIR_CVAR_REDUCE_POSIX_INTRA_ALGORITHM_auto
};
/* declared in src/mpid/ch4/shm/posix/posix_coll.h */
extern int MPIR_CVAR_IREDUCE_POSIX_INTRA_ALGORITHM;
enum IREDUCE_POSIX_INTRA_ALGORITHM_choice {
    MPIR_CVAR_IREDUCE_POSIX_INTRA_ALGORITHM_mpir,
    MPIR_CVAR_IREDUCE_POSIX_INTRA_ALGORITHM_release_gather,
    MPIR_CVAR_IREDUCE_POSIX_INTRA_ALGORITHM_auto
};
/* declared in src/mpid/ch4/shm/posix/posix_coll.h */
extern int MPIR_CVAR_ALLREDUCE_POSIX_INTRA_ALGORITHM;
enum ALLREDUCE_POSIX_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ALLREDUCE_POSIX_INTRA_ALGORITHM_mpir,
    MPIR_CVAR_ALLREDUCE_POSIX_INTRA_ALGORITHM_release_gather,
    MPIR_CVAR_ALLREDUCE_POSIX_INTRA_ALGORITHM_auto
};
/* declared in src/mpid/ch4/shm/posix/posix_coll.h */
extern int MPIR_CVAR_BARRIER_POSIX_INTRA_ALGORITHM;
/* declared in src/mpid/ch4/shm/posix/posix_coll.h */
extern int MPIR_CVAR_ALLTOALL_POSIX_INTRA_ALGORITHM;
enum ALLTOALL_POSIX_INTRA_ALGORITHM_choice {
    MPIR_CVAR_ALLTOALL_POSIX_INTRA_ALGORITHM_mpir,
    MPIR_CVAR_ALLTOALL_POSIX_INTRA_ALGORITHM_ipc_read
};
/* declared in src/mpid/ch4/shm/posix/posix_coll.h */
extern int MPIR_CVAR_POSIX_POLL_FREQUENCY;
/* declared in src/mpid/ch4/shm/posix/posix_coll_gpu_ipc.h */
extern int MPIR_CVAR_BCAST_IPC_READ_MSG_SIZE_THRESHOLD;
/* declared in src/mpid/ch4/shm/posix/posix_coll_gpu_ipc.h */
extern int MPIR_CVAR_ALLTOALL_IPC_READ_MSG_SIZE_THRESHOLD;
/* declared in src/mpid/ch4/shm/posix/posix_coll_release_gather.h */
extern int MPIR_CVAR_POSIX_NUM_COLLS_THRESHOLD;
/* declared in src/mpid/ch4/shm/posix/posix_init.c */
extern const char * MPIR_CVAR_CH4_SHM_POSIX_EAGER;
/* declared in src/mpid/ch4/shm/posix/posix_init.c */
extern const char * MPIR_CVAR_CH4_POSIX_COLL_SELECTION_TUNING_JSON_FILE;
/* declared in src/mpid/ch4/shm/posix/eager/iqueue/iqueue_init.c */
extern int MPIR_CVAR_CH4_SHM_POSIX_IQUEUE_NUM_CELLS;
/* declared in src/mpid/ch4/shm/posix/eager/iqueue/iqueue_init.c */
extern int MPIR_CVAR_CH4_SHM_POSIX_IQUEUE_CELL_SIZE;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern int MPIR_CVAR_COLL_SHM_LIMIT_PER_NODE;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern int MPIR_CVAR_BCAST_INTRANODE_BUFFER_TOTAL_SIZE;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern int MPIR_CVAR_BCAST_INTRANODE_NUM_CELLS;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern int MPIR_CVAR_REDUCE_INTRANODE_BUFFER_TOTAL_SIZE;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern int MPIR_CVAR_REDUCE_INTRANODE_NUM_CELLS;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern int MPIR_CVAR_BCAST_INTRANODE_TREE_KVAL;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern const char * MPIR_CVAR_BCAST_INTRANODE_TREE_TYPE;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern int MPIR_CVAR_REDUCE_INTRANODE_TREE_KVAL;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern const char * MPIR_CVAR_REDUCE_INTRANODE_TREE_TYPE;
/* declared in src/mpid/ch4/shm/posix/release_gather/release_gather.c */
extern int MPIR_CVAR_ENABLE_INTRANODE_TOPOLOGY_AWARE_TREES;
/* declared in src/mpid/ch4/src/ch4_coll.h */
extern int MPIR_CVAR_BARRIER_COMPOSITION;
/* declared in src/mpid/ch4/src/ch4_coll.h */
extern int MPIR_CVAR_BCAST_COMPOSITION;
/* declared in src/mpid/ch4/src/ch4_coll.h */
extern int MPIR_CVAR_ALLREDUCE_COMPOSITION;
/* declared in src/mpid/ch4/src/ch4_coll.h */
extern int MPIR_CVAR_ALLGATHER_COMPOSITION;
/* declared in src/mpid/ch4/src/ch4_coll.h */
extern int MPIR_CVAR_ALLTOALL_COMPOSITION;
/* declared in src/mpid/ch4/src/ch4_coll.h */
extern int MPIR_CVAR_REDUCE_COMPOSITION;
/* declared in src/mpid/ch4/src/ch4_coll_impl.h */
extern int MPIR_CVAR_ALLTOALL_SHM_PER_RANK;
/* declared in src/mpid/ch4/src/ch4_coll_impl.h */
extern int MPIR_CVAR_ALLGATHER_SHM_PER_RANK;
/* declared in src/mpid/ch4/src/ch4_coll_impl.h */
extern int MPIR_CVAR_NUM_MULTI_LEADS;
/* declared in src/mpid/ch4/src/ch4_coll_impl.h */
extern int MPIR_CVAR_ALLREDUCE_SHM_PER_LEADER;
/* declared in src/mpid/ch4/src/ch4_coll_impl.h */
extern int MPIR_CVAR_ALLREDUCE_CACHE_PER_LEADER;
/* declared in src/mpid/ch4/src/ch4_coll_impl.h */
extern int MPIR_CVAR_ALLREDUCE_LOCAL_COPY_OFFSETS;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern const char * MPIR_CVAR_CH4_NETMOD;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern const char * MPIR_CVAR_CH4_SHM;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_ROOTS_ONLY_PMI;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_RUNTIME_CONF_DEBUG;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern const char * MPIR_CVAR_CH4_MT_MODEL;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_NUM_VCIS;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_RESERVE_VCIS;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern const char * MPIR_CVAR_CH4_COLL_SELECTION_TUNING_JSON_FILE;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_IOV_DENSITY_MIN;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_PACK_BUFFER_SIZE;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_NUM_PACK_BUFFERS_PER_CHUNK;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_MAX_NUM_PACK_BUFFERS;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_GPU_COLL_SWAP_BUFFER_SZ;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_GPU_COLL_NUM_BUFFERS_PER_CHUNK;
/* declared in src/mpid/ch4/src/ch4_init.c */
extern int MPIR_CVAR_CH4_GPU_COLL_MAX_NUM_BUFFERS;
/* declared in src/mpid/ch4/src/ch4_progress.h */
extern int MPIR_CVAR_CH4_GLOBAL_PROGRESS;
/* declared in src/mpid/ch4/src/ch4_spawn.c */
extern int MPIR_CVAR_CH4_COMM_CONNECT_TIMEOUT;
/* declared in src/mpid/ch4/src/ch4_stream_enqueue.c */
extern int MPIR_CVAR_CH4_ENABLE_STREAM_WORKQ;
/* declared in src/mpid/ch4/src/mpidig_win.h */
extern int MPIR_CVAR_CH4_RMA_MEM_EFFICIENT;
/* declared in src/mpid/ch4/src/mpidig_win.h */
extern int MPIR_CVAR_CH4_RMA_ENABLE_DYNAMIC_AM_PROGRESS;
/* declared in src/mpid/ch4/src/mpidig_win.h */
extern int MPIR_CVAR_CH4_RMA_AM_PROGRESS_INTERVAL;
/* declared in src/mpid/ch4/src/mpidig_win.h */
extern int MPIR_CVAR_CH4_RMA_AM_PROGRESS_LOW_FREQ_INTERVAL;
/* declared in src/mpid/common/genq/mpidu_genq_shmem_pool.c */
extern int MPIR_CVAR_GENQ_SHMEM_POOL_FREE_QUEUE_SENDER_SIDE;
/* declared in src/mpid/common/hcoll/hcoll_init.c */
extern int MPIR_CVAR_ENABLE_HCOLL;
/* declared in src/mpid/common/sched/mpidu_sched.c */
extern int MPIR_CVAR_COLL_SCHED_DUMP;
/* declared in src/mpid/common/shm/mpidu_shm_alloc.c */
extern int MPIR_CVAR_SHM_RANDOM_ADDR_RETRY;
/* declared in src/mpid/common/shm/mpidu_shm_alloc.c */
extern int MPIR_CVAR_SHM_SYMHEAP_RETRY;
/* declared in src/mpid/common/thread/mpidu_thread_fallback.h */
extern int MPIR_CVAR_ENABLE_HEAVY_YIELD;
int MPIR_MPIR_CVAR_GROUP_COLL_ALGO_from_str(const char *s);
enum MPIR_CVAR_GROUP_COLL_ALGO_group_t {
    MPIR_CVAR_BARRIER_POSIX_INTRA_ALGORITHM_mpir,
    MPIR_CVAR_BARRIER_POSIX_INTRA_ALGORITHM_release_gather,
    MPIR_CVAR_BARRIER_POSIX_INTRA_ALGORITHM_auto
};

/* TODO: this should be defined elsewhere */
#define MPIR_CVAR_assert MPIR_Assert

/* Arbitrary, simplifies interaction with external interfaces like MPI_T_ */
#define MPIR_CVAR_MAX_STRLEN (384)

/* Shortens enum value comparisons */
#define MPIR_CVAR_ENUM_IS(A, a) (MPIR_CVAR_ ## A == MPIR_CVAR_ ## A ## _ ## a)

#endif /* MPIR_CVARS_H_INCLUDED */
