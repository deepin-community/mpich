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

__global__ void yaksuri_hipi_kernel_pack_REPLACE_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t stride2 = md->u.hvector.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + x3 * stride2)), *((char *) (void *) (dbuf + idx * sizeof(char))));
}

__global__ void yaksuri_hipi_kernel_unpack_REPLACE_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t stride2 = md->u.hvector.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + idx * sizeof(char))), *((char *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + x3 * stride2)));
}

void yaksuri_hipi_pack_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_REPLACE_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_hipi_unpack_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_REPLACE_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_hipi_kernel_pack_REPLACE_hvector_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.hvector.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.hvector.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.hvector.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t stride2 = md->u.hvector.child->u.hvector.stride;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + x3 * stride2 + x4 * extent3 + x5 * stride3)), *((char *) (void *) (dbuf + idx * sizeof(char))));
}

__global__ void yaksuri_hipi_kernel_unpack_REPLACE_hvector_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.hvector.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.hvector.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.hvector.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t stride2 = md->u.hvector.child->u.hvector.stride;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + idx * sizeof(char))), *((char *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + x3 * stride2 + x4 * extent3 + x5 * stride3)));
}

void yaksuri_hipi_pack_hvector_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_REPLACE_hvector_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_hipi_unpack_hvector_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_REPLACE_hvector_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_hipi_kernel_pack_REPLACE_blkhindx_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.hvector.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.hvector.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.hvector.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.hvector.stride;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2 + x4 * extent3 + x5 * stride3)), *((char *) (void *) (dbuf + idx * sizeof(char))));
}

__global__ void yaksuri_hipi_kernel_unpack_REPLACE_blkhindx_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.hvector.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.hvector.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.hvector.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.hvector.stride;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + idx * sizeof(char))), *((char *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2 + x4 * extent3 + x5 * stride3)));
}

void yaksuri_hipi_pack_blkhindx_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_REPLACE_blkhindx_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_hipi_unpack_blkhindx_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_REPLACE_blkhindx_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_hipi_kernel_pack_REPLACE_hindexed_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.count;
    
    uintptr_t x1;
    for (intptr_t i = 0; i < md->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x1 = i;
                    res %= in_elems;
                    inner_elements = md->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.hvector.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.hvector.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.hvector.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t stride2 = md->u.hindexed.child->u.hvector.stride;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2 + x4 * extent3 + x5 * stride3)), *((char *) (void *) (dbuf + idx * sizeof(char))));
}

__global__ void yaksuri_hipi_kernel_unpack_REPLACE_hindexed_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.count;
    
    uintptr_t x1;
    for (intptr_t i = 0; i < md->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x1 = i;
                    res %= in_elems;
                    inner_elements = md->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.hvector.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.hvector.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.hvector.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t stride2 = md->u.hindexed.child->u.hvector.stride;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + idx * sizeof(char))), *((char *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2 + x4 * extent3 + x5 * stride3)));
}

void yaksuri_hipi_pack_hindexed_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_REPLACE_hindexed_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_hipi_unpack_hindexed_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_REPLACE_hindexed_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_hipi_kernel_pack_REPLACE_contig_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.hvector.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.hvector.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.hvector.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t stride2 = md->u.contig.child->u.hvector.stride;
    intptr_t stride3 = md->u.contig.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * stride2 + x3 * extent3 + x4 * stride3)), *((char *) (void *) (dbuf + idx * sizeof(char))));
}

__global__ void yaksuri_hipi_kernel_unpack_REPLACE_contig_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.hvector.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.hvector.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.hvector.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t stride2 = md->u.contig.child->u.hvector.stride;
    intptr_t stride3 = md->u.contig.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + idx * sizeof(char))), *((char *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * stride2 + x3 * extent3 + x4 * stride3)));
}

void yaksuri_hipi_pack_contig_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_REPLACE_contig_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_hipi_unpack_contig_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_REPLACE_contig_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_hipi_kernel_pack_REPLACE_resized_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.hvector.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.hvector.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.hvector.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t stride2 = md->u.resized.child->u.hvector.stride;
    intptr_t stride3 = md->u.resized.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + x0 * extent + x1 * stride2 + x2 * extent3 + x3 * stride3)), *((char *) (void *) (dbuf + idx * sizeof(char))));
}

__global__ void yaksuri_hipi_kernel_unpack_REPLACE_resized_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = hipBlockDim_x * hipBlockIdx_x + hipThreadIdx_x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.hvector.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.hvector.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.hvector.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t stride2 = md->u.resized.child->u.hvector.stride;
    intptr_t stride3 = md->u.resized.child->u.hvector.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.hvector.child->extent;
    YAKSURI_HIPI_OP_REPLACE(*((const char *) (const void *) (sbuf + idx * sizeof(char))), *((char *) (void *) (dbuf + x0 * extent + x1 * stride2 + x2 * extent3 + x3 * stride3)));
}

void yaksuri_hipi_pack_resized_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_REPLACE_resized_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_hipi_unpack_resized_hvector_contig_char(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_REPLACE_resized_hvector_contig_char,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

