/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 *
 * DO NOT EDIT: AUTOMATICALLY GENERATED FILE !!
 */

typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long uint64_t;
#include "yaksuri_zei_md.h"

__kernel void yaksuri_zei_kernel_pack_BAND_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) &= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2));
}

__kernel void yaksuri_zei_kernel_unpack_BAND_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) &= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BOR_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) |= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2));
}

__kernel void yaksuri_zei_kernel_unpack_BOR_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) |= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BXOR_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2));
}

__kernel void yaksuri_zei_kernel_unpack_BXOR_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) ^= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LAND_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) && (*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)));
}

__kernel void yaksuri_zei_kernel_unpack_LAND_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) = (*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2))) && (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_SUM_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) += *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) += *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LXOR_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = !(*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) != !(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)));
}

__kernel void yaksuri_zei_kernel_unpack_LXOR_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) = !(*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2))) != !(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_MAX_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MAX_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2))));
}

__kernel void yaksuri_zei_kernel_pack_LOR_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) || (*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)));
}

__kernel void yaksuri_zei_kernel_unpack_LOR_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) = (*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2))) || (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_PROD_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) *= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2));
}

__kernel void yaksuri_zei_kernel_unpack_PROD_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) *= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_MIN_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MIN_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t stride2 = md->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) = *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2)) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + x3 * stride2))));
}

__kernel void yaksuri_zei_kernel_pack_BAND_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) &= *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BAND_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) &= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BOR_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) |= *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BOR_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) |= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BXOR_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^= *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BXOR_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LAND_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) && (*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LAND_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) && (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_SUM_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) += *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) += *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LXOR_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = !(*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) != !(*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LXOR_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = !(*((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) != !(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_MAX_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MAX_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_LOR_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) || (*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LOR_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) || (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_PROD_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) *= *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_PROD_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) *= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_MIN_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MIN_hvector_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hvector.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    intptr_t stride3 = md->u.hvector.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_BAND_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) &= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BAND_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) &= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BOR_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) |= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BOR_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) |= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BXOR_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BXOR_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LAND_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) && (*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LAND_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) && (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_SUM_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) += *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) += *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LXOR_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = !(*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) != !(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LXOR_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = !(*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) != !(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_MAX_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MAX_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_LOR_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) || (*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LOR_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) || (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_PROD_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) *= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_PROD_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) *= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_MIN_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MIN_blkhindx_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.blkhindx.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    intptr_t stride3 = md->u.blkhindx.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_BAND_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) &= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BAND_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) &= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BOR_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) |= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BOR_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) |= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BXOR_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BXOR_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LAND_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) && (*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LAND_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) && (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_SUM_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) += *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) += *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LXOR_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = !(*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) != !(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LXOR_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = !(*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) != !(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_MAX_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MAX_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_LOR_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) || (*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LOR_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) || (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_PROD_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) *= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_PROD_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) *= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_MIN_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MIN_hindexed_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.hindexed.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x5 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.blkhindx.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    intptr_t stride3 = md->u.hindexed.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) = *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3 + x5 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_BAND_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) &= *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BAND_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) &= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BOR_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) |= *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BOR_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) |= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BXOR_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^= *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BXOR_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) ^= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LAND_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) && (*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LAND_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3))) && (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_SUM_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) += *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) += *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LXOR_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = !(*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) != !(*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LXOR_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) = !(*((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3))) != !(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_MAX_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MAX_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_LOR_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) || (*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LOR_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3))) || (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_PROD_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) *= *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_PROD_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) *= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_MIN_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MIN_contig_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.contig.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.contig.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.contig.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) = *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3 + x4 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_BAND_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) &= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BAND_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) &= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BOR_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) |= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BOR_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) |= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_BXOR_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_BXOR_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) ^= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LAND_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) && (*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LAND_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3))) && (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_SUM_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) += *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) += *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_LXOR_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = !(*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) != !(*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LXOR_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) = !(*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3))) != !(*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_MAX_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MAX_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) = *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3))));
}

__kernel void yaksuri_zei_kernel_pack_LOR_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = (*((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) || (*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)));
}

__kernel void yaksuri_zei_kernel_unpack_LOR_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) = (*((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3))) || (*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))));
}

__kernel void yaksuri_zei_kernel_pack_PROD_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) *= *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3));
}

__kernel void yaksuri_zei_kernel_unpack_PROD_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) *= *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t)));
}

__kernel void yaksuri_zei_kernel_pack_MIN_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    sbuf = (__global const char *) ((__global char *)sbuf - md->true_lb);
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) = *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t))) ^ ((*((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) ^ *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))) & -( *((const int32_t *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) < *((int32_t *) (void *) (dbuf + idx * sizeof(int32_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MIN_resized_blkhindx_contig_int32_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    dbuf = dbuf - md->true_lb;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
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
    inner_elements /= md->u.resized.child->u.blkhindx.child->u.contig.count;
    
    uintptr_t x3 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.blkhindx.array_of_displs;
    intptr_t stride3 = md->u.resized.child->u.blkhindx.child->u.contig.child->extent;
    uintptr_t extent3 = md->u.resized.child->u.blkhindx.child->extent;
    *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) = *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3)) ^ ((*((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) ^ *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3))) & -( *((const int32_t *) (const void *) (sbuf + idx * sizeof(int32_t))) < *((int32_t *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3 + x3 * stride3))));
}

