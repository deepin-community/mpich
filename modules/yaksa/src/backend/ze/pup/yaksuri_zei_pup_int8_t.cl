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

__kernel void yaksuri_zei_kernel_pack_BAND_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) &= *((const int8_t *) (const void *) (sbuf + x0 * extent));
}

__kernel void yaksuri_zei_kernel_unpack_BAND_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) &= *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = *((const int8_t *) (const void *) (sbuf + x0 * extent));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) = *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_BOR_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) |= *((const int8_t *) (const void *) (sbuf + x0 * extent));
}

__kernel void yaksuri_zei_kernel_unpack_BOR_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) |= *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_BXOR_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) ^= *((const int8_t *) (const void *) (sbuf + x0 * extent));
}

__kernel void yaksuri_zei_kernel_unpack_BXOR_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) ^= *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_LAND_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = (*((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) && (*((const int8_t *) (const void *) (sbuf + x0 * extent)));
}

__kernel void yaksuri_zei_kernel_unpack_LAND_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) = (*((int8_t *) (void *) (dbuf + x0 * extent))) && (*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_pack_SUM_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) += *((const int8_t *) (const void *) (sbuf + x0 * extent));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) += *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_LXOR_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = !(*((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) != !(*((const int8_t *) (const void *) (sbuf + x0 * extent)));
}

__kernel void yaksuri_zei_kernel_unpack_LXOR_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) = !(*((int8_t *) (void *) (dbuf + x0 * extent))) != !(*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_pack_MAX_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = *((const int8_t *) (const void *) (sbuf + x0 * extent)) ^ ((*((const int8_t *) (const void *) (sbuf + x0 * extent)) ^ *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) & -( *((const int8_t *) (const void *) (sbuf + x0 * extent)) < *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MAX_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) = *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) ^ ((*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) ^ *((int8_t *) (void *) (dbuf + x0 * extent))) & -( *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) < *((int8_t *) (void *) (dbuf + x0 * extent))));
}

__kernel void yaksuri_zei_kernel_pack_LOR_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = (*((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) || (*((const int8_t *) (const void *) (sbuf + x0 * extent)));
}

__kernel void yaksuri_zei_kernel_unpack_LOR_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) = (*((int8_t *) (void *) (dbuf + x0 * extent))) || (*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))));
}

__kernel void yaksuri_zei_kernel_pack_PROD_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) *= *((const int8_t *) (const void *) (sbuf + x0 * extent));
}

__kernel void yaksuri_zei_kernel_unpack_PROD_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) *= *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t)));
}

__kernel void yaksuri_zei_kernel_pack_MIN_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) = *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t))) ^ ((*((const int8_t *) (const void *) (sbuf + x0 * extent)) ^ *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))) & -( *((const int8_t *) (const void *) (sbuf + x0 * extent)) < *((int8_t *) (void *) (dbuf + idx * sizeof(int8_t)))));
}

__kernel void yaksuri_zei_kernel_unpack_MIN_int8_t(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
{
    __global const char *__restrict__ sbuf = (__global char *) inbuf;
    __global char *__restrict__ dbuf = (__global char *) outbuf;
    uintptr_t extent = md->extent;
    uintptr_t idx = get_global_id(0);
    uintptr_t res = idx;
    uintptr_t inner_elements = md->num_elements;
    
    if (idx >= (count * inner_elements))
        return;
    
    uintptr_t x0 = res;
    
    *((int8_t *) (void *) (dbuf + x0 * extent)) = *((int8_t *) (void *) (dbuf + x0 * extent)) ^ ((*((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) ^ *((int8_t *) (void *) (dbuf + x0 * extent))) & -( *((const int8_t *) (const void *) (sbuf + idx * sizeof(int8_t))) < *((int8_t *) (void *) (dbuf + x0 * extent))));
}

