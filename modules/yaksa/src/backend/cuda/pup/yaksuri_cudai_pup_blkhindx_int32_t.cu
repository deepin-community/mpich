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

__global__ void yaksuri_cudai_kernel_pack_BXOR_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_BXOR(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_BXOR_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_BXOR(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_LAND_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_LAND(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_LAND_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_LAND(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_LXOR_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_LXOR(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_LXOR_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_LXOR(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_MAX_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_MAX(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_MAX_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_MAX(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_PROD_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_PROD(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_PROD_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_PROD(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_MIN_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_MIN(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_MIN_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_MIN(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_LOR_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_LOR(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_LOR_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_LOR(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_BAND_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_BAND(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_BAND_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_BAND(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_REPLACE_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_REPLACE(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_REPLACE_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_REPLACE(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_SUM_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_SUM(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_SUM_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_SUM(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_pack_BOR_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_BOR(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))));
}

__global__ void yaksuri_cudai_kernel_unpack_BOR_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_cudai_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_CUDAI_OP_BOR(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int32_t))));
}

void yaksuri_cudai_pack_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__BXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_BXOR_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LAND_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LXOR_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__MAX:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_MAX_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__PROD:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_PROD_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__MIN:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_MIN_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_LOR_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_BAND_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_REPLACE_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__SUM:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_SUM_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_pack_BOR_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_cudai_unpack_blkhindx_int32_t(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_cudai_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, cudaStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    cudaError_t cerr;
    switch (op) {
        case YAKSA_OP__BXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_BXOR_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LAND_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LXOR_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__MAX:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_MAX_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__PROD:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_PROD_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__MIN:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_MIN_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_LOR_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BAND:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_BAND_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__REPLACE:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_REPLACE_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__SUM:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_SUM_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BOR:
        cerr = cudaLaunchKernel((const void *) yaksuri_cudai_kernel_unpack_BOR_blkhindx_int32_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_CUDAI_CUDA_ERR_CHECK(cerr);
        break;

    }
}

