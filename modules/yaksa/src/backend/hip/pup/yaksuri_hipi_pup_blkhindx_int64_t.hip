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

__global__ void yaksuri_hipi_kernel_pack_LAND_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_LAND(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_LAND_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_LAND(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_BAND_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_BAND(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_BAND_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_BAND(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_REPLACE_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_REPLACE(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_REPLACE_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_REPLACE(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_MIN_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_MIN(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_MIN_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_MIN(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_MAX_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_MAX(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_MAX_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_MAX(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_BXOR_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_BXOR(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_BXOR_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_BXOR(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_LOR_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_LOR(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_LOR_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_LOR(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_SUM_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_SUM(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_SUM_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_SUM(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_BOR_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_BOR(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_BOR_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_BOR(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_LXOR_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_LXOR(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_LXOR_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_LXOR(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_pack_PROD_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_PROD(*((const int64_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + idx * sizeof(int64_t))));
}

__global__ void yaksuri_hipi_kernel_unpack_PROD_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, const yaksuri_hipi_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    YAKSURI_HIPI_OP_PROD(*((const int64_t *) (const void *) (sbuf + idx * sizeof(int64_t))), *((int64_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int64_t))));
}

void yaksuri_hipi_pack_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__LAND:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_LAND_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BAND:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_BAND_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_REPLACE_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__MIN:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_MIN_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__MAX:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_MAX_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BXOR:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_BXOR_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_LOR_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__SUM:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_SUM_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BOR:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_BOR_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_LXOR_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__PROD:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_pack_PROD_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

void yaksuri_hipi_unpack_blkhindx_int64_t(const void *inbuf, void *outbuf, uintptr_t count, yaksa_op_t op, yaksuri_hipi_md_s *md, int n_threads, int n_blocks_x, int n_blocks_y, int n_blocks_z, hipStream_t stream)
{
void *args[] = { &inbuf, &outbuf, &count, &md };
    hipError_t cerr;
    switch (op) {
        case YAKSA_OP__LAND:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_LAND_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BAND:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_BAND_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__REPLACE:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_REPLACE_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__MIN:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_MIN_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__MAX:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_MAX_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BXOR:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_BXOR_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LOR:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_LOR_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__SUM:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_SUM_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__BOR:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_BOR_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__LXOR:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_LXOR_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

        case YAKSA_OP__PROD:
        cerr = hipLaunchKernel((const void *) yaksuri_hipi_kernel_unpack_PROD_blkhindx_int64_t,
            dim3(n_blocks_x, n_blocks_y, n_blocks_z), dim3(n_threads), args, 0, stream);
        YAKSURI_HIPI_HIP_ERR_CHECK(cerr);
        break;

    }
}

