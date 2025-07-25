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
#include <cuda.h>
#include <cuda_runtime.h>
#include "yaksuri_cudai_base.h"
#include "yaksuri_cudai_pup.h"

__global__ void yaksuri_cudai_kernel_pack_REPLACE_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_REPLACE_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LOR_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LOR_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LAND_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LAND_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LXOR_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LXOR_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * sizeof(_Bool))));
}

void yaksuri_cudai_pack_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_REPLACE_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LOR_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LAND_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LXOR_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_cudai_unpack_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_REPLACE_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LOR_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LAND_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LXOR_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_cudai_kernel_pack_REPLACE_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hvector.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t *array_of_displs3 = md->u.hvector.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_REPLACE_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hvector.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t *array_of_displs3 = md->u.hvector.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LOR_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hvector.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t *array_of_displs3 = md->u.hvector.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LOR_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hvector.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t *array_of_displs3 = md->u.hvector.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LAND_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hvector.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t *array_of_displs3 = md->u.hvector.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LAND_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hvector.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t *array_of_displs3 = md->u.hvector.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LXOR_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hvector.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t *array_of_displs3 = md->u.hvector.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LXOR_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hvector.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t *array_of_displs3 = md->u.hvector.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

void yaksuri_cudai_pack_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_REPLACE_hvector_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LOR_hvector_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LAND_hvector_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LXOR_hvector_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_cudai_unpack_hvector_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_REPLACE_hvector_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LOR_hvector_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LAND_hvector_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LXOR_hvector_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_cudai_kernel_pack_REPLACE_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t *array_of_displs3 = md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_REPLACE_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t *array_of_displs3 = md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LOR_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t *array_of_displs3 = md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LOR_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t *array_of_displs3 = md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LAND_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t *array_of_displs3 = md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LAND_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t *array_of_displs3 = md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LXOR_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t *array_of_displs3 = md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LXOR_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t *array_of_displs3 = md->u.blkhindx.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

void yaksuri_cudai_pack_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_REPLACE_blkhindx_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LOR_blkhindx_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LAND_blkhindx_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LXOR_blkhindx_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_cudai_unpack_blkhindx_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_REPLACE_blkhindx_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LOR_blkhindx_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LAND_blkhindx_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LXOR_blkhindx_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_cudai_kernel_pack_REPLACE_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t *array_of_displs3 = md->u.hindexed.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_REPLACE_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t *array_of_displs3 = md->u.hindexed.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LOR_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t *array_of_displs3 = md->u.hindexed.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LOR_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t *array_of_displs3 = md->u.hindexed.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LAND_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t *array_of_displs3 = md->u.hindexed.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LAND_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t *array_of_displs3 = md->u.hindexed.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LXOR_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t *array_of_displs3 = md->u.hindexed.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LXOR_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.blocklength;
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x5 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x6 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t *array_of_displs3 = md->u.hindexed.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + array_of_displs3[x5] + x6 * sizeof(_Bool))));
}

void yaksuri_cudai_pack_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_REPLACE_hindexed_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LOR_hindexed_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LAND_hindexed_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LXOR_hindexed_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_cudai_unpack_hindexed_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_REPLACE_hindexed_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LOR_hindexed_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LAND_hindexed_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LXOR_hindexed_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_cudai_kernel_pack_REPLACE_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.contig.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + array_of_displs3[x4] + x5 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_REPLACE_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.contig.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + array_of_displs3[x4] + x5 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LOR_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.contig.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + array_of_displs3[x4] + x5 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LOR_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.contig.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + array_of_displs3[x4] + x5 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LAND_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.contig.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + array_of_displs3[x4] + x5 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LAND_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.contig.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + array_of_displs3[x4] + x5 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LXOR_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.contig.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + array_of_displs3[x4] + x5 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LXOR_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.count;
    
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.blocklength;
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x4 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.contig.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + array_of_displs3[x4] + x5 * sizeof(_Bool))));
}

void yaksuri_cudai_pack_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_REPLACE_contig_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LOR_contig_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LAND_contig_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LXOR_contig_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_cudai_unpack_contig_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_REPLACE_contig_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LOR_contig_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LAND_contig_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LXOR_contig_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

__global__ void yaksuri_cudai_kernel_pack_REPLACE_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.resized.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + array_of_displs3[x3] + x4 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_REPLACE_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.resized.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + array_of_displs3[x3] + x4 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LOR_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.resized.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + array_of_displs3[x3] + x4 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LOR_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.resized.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + array_of_displs3[x3] + x4 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LAND_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.resized.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + array_of_displs3[x3] + x4 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LAND_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.resized.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LAND(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + array_of_displs3[x3] + x4 * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_pack_LXOR_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.resized.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + array_of_displs3[x3] + x4 * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + idx * sizeof(_Bool))));
}

__global__ void yaksuri_cudai_kernel_unpack_LXOR_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
{
    const char *__restrict__ sbuf = (const char *) inbuf;
    char *__restrict__ dbuf = (char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = blockIdx.x * blockDim.x + threadIdx.x;
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.count;
    
    uintptr_t x1 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.blocklength;
    uintptr_t x2 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.count;
    
    uintptr_t x3 = res / inner_elements;
    res %= inner_elements;
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.blkhindx.blocklength;
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs3 = md->u.resized.child->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    YAKSURI_CUDAI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + idx * sizeof(_Bool))), *((_Bool *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + array_of_displs3[x3] + x4 * sizeof(_Bool))));
}

void yaksuri_cudai_pack_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_REPLACE_resized_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LOR_resized_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LAND_resized_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LXOR_resized_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_cudai_unpack_resized_blkhindx_blkhindx__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_REPLACE_resized_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LOR_resized_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LAND_resized_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LXOR_resized_blkhindx_blkhindx__Bool,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

