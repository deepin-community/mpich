/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 */

/* ** This file is auto-generated, do not edit ** */

#ifndef NETMOD_INLINE
#define NETMOD_DISABLE_INLINES
#include <mpidimpl.h>
MPL_SUPPRESS_OSX_HAS_NO_SYMBOLS_WARNING;

#include "netmod_inline.h"
MPIDI_NM_funcs_t MPIDI_NM_stubnm_funcs = {
    .init_local = MPIDI_STUBNM_init_local,
    .init_world = MPIDI_STUBNM_init_world,
    .mpi_finalize_hook = MPIDI_STUBNM_mpi_finalize_hook,
    .init_vcis = MPIDI_STUBNM_init_vcis,
    .post_init = MPIDI_STUBNM_post_init,
    .progress = MPIDI_NM_progress,
    .comm_set_hints = MPIDI_STUBNM_comm_set_hints,
    .am_send_hdr = MPIDI_NM_am_send_hdr,
    .am_isend = MPIDI_NM_am_isend,
    .am_send_hdr_reply = MPIDI_NM_am_send_hdr_reply,
    .am_isend_reply = MPIDI_NM_am_isend_reply,
    .am_get_data_copy_cb = MPIDI_NM_am_get_data_copy_cb,
    .am_hdr_max_sz = MPIDI_NM_am_hdr_max_sz,
    .am_eager_limit = MPIDI_NM_am_eager_limit,
    .am_eager_buf_limit = MPIDI_NM_am_eager_buf_limit,
    .am_check_eager = MPIDI_NM_am_check_eager,
    .comm_get_gpid = MPIDI_NM_comm_get_gpid,
    .get_local_upids = MPIDI_STUBNM_get_local_upids,
    .upids_to_gpids = MPIDI_STUBNM_upids_to_gpids,
    .dynamic_send = MPIDI_STUBNM_dynamic_send,
    .dynamic_recv = MPIDI_STUBNM_dynamic_recv,
    .mpi_comm_commit_pre_hook = MPIDI_STUBNM_mpi_comm_commit_pre_hook,
    .mpi_comm_commit_post_hook = MPIDI_STUBNM_mpi_comm_commit_post_hook,
    .mpi_comm_free_hook = MPIDI_STUBNM_mpi_comm_free_hook,
    .mpi_win_create_hook = MPIDI_STUBNM_mpi_win_create_hook,
    .mpi_win_allocate_hook = MPIDI_STUBNM_mpi_win_allocate_hook,
    .mpi_win_allocate_shared_hook = MPIDI_STUBNM_mpi_win_allocate_shared_hook,
    .mpi_win_create_dynamic_hook = MPIDI_STUBNM_mpi_win_create_dynamic_hook,
    .mpi_win_attach_hook = MPIDI_STUBNM_mpi_win_attach_hook,
    .mpi_win_detach_hook = MPIDI_STUBNM_mpi_win_detach_hook,
    .mpi_win_free_hook = MPIDI_STUBNM_mpi_win_free_hook,
    .rma_win_cmpl_hook = MPIDI_NM_rma_win_cmpl_hook,
    .rma_win_local_cmpl_hook = MPIDI_NM_rma_win_local_cmpl_hook,
    .rma_target_cmpl_hook = MPIDI_NM_rma_target_cmpl_hook,
    .rma_target_local_cmpl_hook = MPIDI_NM_rma_target_local_cmpl_hook,
    .am_request_init = MPIDI_NM_am_request_init,
    .am_request_finalize = MPIDI_NM_am_request_finalize,
};

MPIDI_NM_native_funcs_t MPIDI_NM_native_stubnm_funcs = {
    .mpi_isend = MPIDI_NM_mpi_isend,
    .mpi_cancel_send = MPIDI_NM_mpi_cancel_send,
    .mpi_irecv = MPIDI_NM_mpi_irecv,
    .mpi_imrecv = MPIDI_NM_mpi_imrecv,
    .mpi_cancel_recv = MPIDI_NM_mpi_cancel_recv,
    .mpi_psend_init = MPIDI_STUBNM_mpi_psend_init,
    .mpi_precv_init = MPIDI_STUBNM_mpi_precv_init,
    .part_start = MPIDI_NM_part_start,
    .mpi_pready_range = MPIDI_NM_mpi_pready_range,
    .mpi_pready_list = MPIDI_NM_mpi_pready_list,
    .mpi_parrived = MPIDI_NM_mpi_parrived,
    .mpi_alloc_mem = MPIDI_STUBNM_mpi_alloc_mem,
    .mpi_free_mem = MPIDI_STUBNM_mpi_free_mem,
    .mpi_improbe = MPIDI_NM_mpi_improbe,
    .mpi_iprobe = MPIDI_NM_mpi_iprobe,
    .mpi_win_set_info = MPIDI_STUBNM_mpi_win_set_info,
    .mpi_win_shared_query = MPIDI_NM_mpi_win_shared_query,
    .mpi_put = MPIDI_NM_mpi_put,
    .mpi_win_start = MPIDI_NM_mpi_win_start,
    .mpi_win_complete = MPIDI_NM_mpi_win_complete,
    .mpi_win_post = MPIDI_NM_mpi_win_post,
    .mpi_win_wait = MPIDI_NM_mpi_win_wait,
    .mpi_win_test = MPIDI_NM_mpi_win_test,
    .mpi_win_lock = MPIDI_NM_mpi_win_lock,
    .mpi_win_unlock = MPIDI_NM_mpi_win_unlock,
    .mpi_win_get_info = MPIDI_STUBNM_mpi_win_get_info,
    .mpi_get = MPIDI_NM_mpi_get,
    .mpi_win_free = MPIDI_STUBNM_mpi_win_free,
    .mpi_win_fence = MPIDI_NM_mpi_win_fence,
    .mpi_win_create = MPIDI_STUBNM_mpi_win_create,
    .mpi_accumulate = MPIDI_NM_mpi_accumulate,
    .mpi_win_attach = MPIDI_STUBNM_mpi_win_attach,
    .mpi_win_allocate_shared = MPIDI_STUBNM_mpi_win_allocate_shared,
    .mpi_rput = MPIDI_NM_mpi_rput,
    .mpi_win_flush_local = MPIDI_NM_mpi_win_flush_local,
    .mpi_win_detach = MPIDI_STUBNM_mpi_win_detach,
    .mpi_compare_and_swap = MPIDI_NM_mpi_compare_and_swap,
    .mpi_raccumulate = MPIDI_NM_mpi_raccumulate,
    .mpi_rget_accumulate = MPIDI_NM_mpi_rget_accumulate,
    .mpi_fetch_and_op = MPIDI_NM_mpi_fetch_and_op,
    .mpi_win_allocate = MPIDI_STUBNM_mpi_win_allocate,
    .mpi_win_flush = MPIDI_NM_mpi_win_flush,
    .mpi_win_flush_local_all = MPIDI_NM_mpi_win_flush_local_all,
    .mpi_win_unlock_all = MPIDI_NM_mpi_win_unlock_all,
    .mpi_win_create_dynamic = MPIDI_STUBNM_mpi_win_create_dynamic,
    .mpi_rget = MPIDI_NM_mpi_rget,
    .mpi_win_sync = MPIDI_NM_mpi_win_sync,
    .mpi_win_flush_all = MPIDI_NM_mpi_win_flush_all,
    .mpi_get_accumulate = MPIDI_NM_mpi_get_accumulate,
    .mpi_win_lock_all = MPIDI_NM_mpi_win_lock_all,
    .rank_is_local = MPIDI_NM_rank_is_local,
    .mpi_barrier = MPIDI_NM_mpi_barrier,
    .mpi_bcast = MPIDI_NM_mpi_bcast,
    .mpi_allreduce = MPIDI_NM_mpi_allreduce,
    .mpi_allgather = MPIDI_NM_mpi_allgather,
    .mpi_allgatherv = MPIDI_NM_mpi_allgatherv,
    .mpi_scatter = MPIDI_NM_mpi_scatter,
    .mpi_scatterv = MPIDI_NM_mpi_scatterv,
    .mpi_gather = MPIDI_NM_mpi_gather,
    .mpi_gatherv = MPIDI_NM_mpi_gatherv,
    .mpi_alltoall = MPIDI_NM_mpi_alltoall,
    .mpi_alltoallv = MPIDI_NM_mpi_alltoallv,
    .mpi_alltoallw = MPIDI_NM_mpi_alltoallw,
    .mpi_reduce = MPIDI_NM_mpi_reduce,
    .mpi_reduce_scatter = MPIDI_NM_mpi_reduce_scatter,
    .mpi_reduce_scatter_block = MPIDI_NM_mpi_reduce_scatter_block,
    .mpi_scan = MPIDI_NM_mpi_scan,
    .mpi_exscan = MPIDI_NM_mpi_exscan,
    .mpi_neighbor_allgather = MPIDI_NM_mpi_neighbor_allgather,
    .mpi_neighbor_allgatherv = MPIDI_NM_mpi_neighbor_allgatherv,
    .mpi_neighbor_alltoallv = MPIDI_NM_mpi_neighbor_alltoallv,
    .mpi_neighbor_alltoallw = MPIDI_NM_mpi_neighbor_alltoallw,
    .mpi_neighbor_alltoall = MPIDI_NM_mpi_neighbor_alltoall,
    .mpi_ineighbor_allgather = MPIDI_NM_mpi_ineighbor_allgather,
    .mpi_ineighbor_allgatherv = MPIDI_NM_mpi_ineighbor_allgatherv,
    .mpi_ineighbor_alltoall = MPIDI_NM_mpi_ineighbor_alltoall,
    .mpi_ineighbor_alltoallv = MPIDI_NM_mpi_ineighbor_alltoallv,
    .mpi_ineighbor_alltoallw = MPIDI_NM_mpi_ineighbor_alltoallw,
    .mpi_ibarrier = MPIDI_NM_mpi_ibarrier,
    .mpi_ibcast = MPIDI_NM_mpi_ibcast,
    .mpi_iallgather = MPIDI_NM_mpi_iallgather,
    .mpi_iallgatherv = MPIDI_NM_mpi_iallgatherv,
    .mpi_iallreduce = MPIDI_NM_mpi_iallreduce,
    .mpi_ialltoall = MPIDI_NM_mpi_ialltoall,
    .mpi_ialltoallv = MPIDI_NM_mpi_ialltoallv,
    .mpi_ialltoallw = MPIDI_NM_mpi_ialltoallw,
    .mpi_iexscan = MPIDI_NM_mpi_iexscan,
    .mpi_igather = MPIDI_NM_mpi_igather,
    .mpi_igatherv = MPIDI_NM_mpi_igatherv,
    .mpi_ireduce_scatter_block = MPIDI_NM_mpi_ireduce_scatter_block,
    .mpi_ireduce_scatter = MPIDI_NM_mpi_ireduce_scatter,
    .mpi_ireduce = MPIDI_NM_mpi_ireduce,
    .mpi_iscan = MPIDI_NM_mpi_iscan,
    .mpi_iscatter = MPIDI_NM_mpi_iscatter,
    .mpi_iscatterv = MPIDI_NM_mpi_iscatterv,
    .mpi_type_commit_hook = MPIDI_STUBNM_mpi_type_commit_hook,
    .mpi_type_free_hook = MPIDI_STUBNM_mpi_type_free_hook,
    .mpi_op_commit_hook = MPIDI_STUBNM_mpi_op_commit_hook,
    .mpi_op_free_hook = MPIDI_STUBNM_mpi_op_free_hook,
};
#endif
