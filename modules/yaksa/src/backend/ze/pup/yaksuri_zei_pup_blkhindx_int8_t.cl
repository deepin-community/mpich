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

__kernel void yaksuri_zei_kernel_pack_BAND_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) &= *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_unpack_BAND_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) &= *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) = *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_BOR_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) |= *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_unpack_BOR_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) |= *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_BXOR_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) ^= *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_unpack_BXOR_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) ^= *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_LAND_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = (*((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) && (*((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_unpack_LAND_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) = (*((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)))) && (*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_pack_SUM_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) += *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) += *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_LXOR_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = !(*((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) != !(*((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_unpack_LXOR_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) = !(*((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)))) != !(*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_pack_MAX_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) ^ ((*((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) ^ *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) & -( *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) < *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MAX_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) = *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) ^ ((*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) ^ *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)))) & -( *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) < *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)))));
}

__kernel void yaksuri_zei_kernel_pack_LOR_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = (*((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) || (*((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_unpack_LOR_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) = (*((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)))) || (*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_pack_PROD_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) *= *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_unpack_PROD_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) *= *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_MIN_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) ^ ((*((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) ^ *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) & -( *((const int8_t *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) < *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MIN_blkhindx_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) = *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t))) ^ ((*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) ^ *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)))) & -( *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) < *((int8_t *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * sizeof(int8_t)))));
}

