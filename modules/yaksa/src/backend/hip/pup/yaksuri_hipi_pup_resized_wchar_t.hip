/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 *
 * DO NOT EDIT: AUTOMATICALLY GENERATED FILE !!
 */

#include <string.h>
#include <stdint.h>
#include <wchar.h>
#include <assert.h>
#include <hip/hip_runtime_api.h>
#include <hip/hip_runtime.h>
#include "yaksuri_hipi_base.h"
#include "yaksuri_hipi_pup.h"

__global__ void yaksuri_hipi_kernel_pack_REPLACE_resized_wchar_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    YAKSURI_HIPI_OP_REPLACE(*((const wchar_t *) (const void *) (sbuf + x0 * extent)), *((wchar_t *) (void *) (dbuf + idx * sizeof(wchar_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_REPLACE_resized_wchar_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    YAKSURI_HIPI_OP_REPLACE(*((const wchar_t *) (const void *) (sbuf + idx * sizeof(wchar_t))), *((wchar_t *) (void *) (dbuf + x0 * extent)));
}

void yaksuri_hipi_pack_resized_wchar_t(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_REPLACE_resized_wchar_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_hipi_unpack_resized_wchar_t(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_REPLACE_resized_wchar_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

