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

__kernel void yaksuri_zei_kernel_pack_REPLACE_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2)) = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_PROD_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2));
    double2 temp_dest = *((double2 *) (void *) (dbuf + idx * sizeof(double2)));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = dest;
}

__kernel void yaksuri_zei_kernel_unpack_PROD_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
    double2 temp_dest = *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2)) = dest;
}

__kernel void yaksuri_zei_kernel_pack_SUM_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) += *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2)) += *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_hvector_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hvector.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hvector.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hvector.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hvector.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hvector.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = *((const double2 *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_hvector_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hvector.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hvector.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hvector.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hvector.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hvector.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_PROD_hvector_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hvector.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hvector.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hvector.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hvector.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hvector.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
    double2 temp_dest = *((double2 *) (void *) (dbuf + idx * sizeof(double2)));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = dest;
}

__kernel void yaksuri_zei_kernel_unpack_PROD_hvector_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hvector.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hvector.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hvector.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hvector.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hvector.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
    double2 temp_dest = *((double2 *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) = dest;
}

__kernel void yaksuri_zei_kernel_pack_SUM_hvector_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hvector.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hvector.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hvector.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hvector.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hvector.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) += *((const double2 *) (const void *) (sbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_hvector_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hvector.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hvector.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hvector.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hvector.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hvector.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t stride1 = md->u.hvector.stride;
    intptr_t *array_of_displs2 = md->u.hvector.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hvector.child->extent;
    uintptr_t extent3 = md->u.hvector.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + x1 * stride1 + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) += *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_blkhindx_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.blkhindx.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.blkhindx.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.blkhindx.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.blkhindx.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.blkhindx.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_blkhindx_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.blkhindx.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.blkhindx.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.blkhindx.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.blkhindx.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.blkhindx.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_PROD_blkhindx_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.blkhindx.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.blkhindx.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.blkhindx.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.blkhindx.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.blkhindx.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
    double2 temp_dest = *((double2 *) (void *) (dbuf + idx * sizeof(double2)));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = dest;
}

__kernel void yaksuri_zei_kernel_unpack_PROD_blkhindx_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.blkhindx.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.blkhindx.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.blkhindx.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.blkhindx.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.blkhindx.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
    double2 temp_dest = *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) = dest;
}

__kernel void yaksuri_zei_kernel_pack_SUM_blkhindx_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.blkhindx.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.blkhindx.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.blkhindx.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.blkhindx.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.blkhindx.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) += *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_blkhindx_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.blkhindx.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.blkhindx.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.blkhindx.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.blkhindx.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.blkhindx.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.blkhindx.array_of_displs;
    intptr_t *array_of_displs2 = md->u.blkhindx.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.blkhindx.child->extent;
    uintptr_t extent3 = md->u.blkhindx.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) += *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_hindexed_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hindexed.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hindexed.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hindexed.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hindexed.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hindexed.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_hindexed_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hindexed.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hindexed.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hindexed.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hindexed.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hindexed.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_PROD_hindexed_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hindexed.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hindexed.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hindexed.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hindexed.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hindexed.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
    double2 temp_dest = *((double2 *) (void *) (dbuf + idx * sizeof(double2)));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = dest;
}

__kernel void yaksuri_zei_kernel_unpack_PROD_hindexed_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hindexed.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hindexed.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hindexed.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hindexed.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hindexed.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
    double2 temp_dest = *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) = dest;
}

__kernel void yaksuri_zei_kernel_pack_SUM_hindexed_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hindexed.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hindexed.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hindexed.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hindexed.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hindexed.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) += *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_hindexed_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.hindexed.child->u.hindexed.count;
    
    uintptr_t x3;
    for (intptr_t i = 0; i < md->u.hindexed.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.hindexed.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.hindexed.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x3 = i;
                    res %= in_elems;
                    inner_elements = md->u.hindexed.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x4 = res;
    
    intptr_t *array_of_displs1 = md->u.hindexed.array_of_displs;
    intptr_t *array_of_displs2 = md->u.hindexed.child->u.hindexed.array_of_displs;
    uintptr_t extent2 = md->u.hindexed.child->extent;
    uintptr_t extent3 = md->u.hindexed.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs1[x1] + x2 * extent2 + array_of_displs2[x3] + x4 * extent3)) += *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_contig_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.contig.child->u.hindexed.count;
    
    uintptr_t x2;
    for (intptr_t i = 0; i < md->u.contig.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.contig.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.contig.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x2 = i;
                    res %= in_elems;
                    inner_elements = md->u.contig.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x3 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = *((const double2 *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_contig_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.contig.child->u.hindexed.count;
    
    uintptr_t x2;
    for (intptr_t i = 0; i < md->u.contig.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.contig.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.contig.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x2 = i;
                    res %= in_elems;
                    inner_elements = md->u.contig.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x3 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3)) = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_PROD_contig_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.contig.child->u.hindexed.count;
    
    uintptr_t x2;
    for (intptr_t i = 0; i < md->u.contig.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.contig.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.contig.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x2 = i;
                    res %= in_elems;
                    inner_elements = md->u.contig.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x3 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3));
    double2 temp_dest = *((double2 *) (void *) (dbuf + idx * sizeof(double2)));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = dest;
}

__kernel void yaksuri_zei_kernel_unpack_PROD_contig_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.contig.child->u.hindexed.count;
    
    uintptr_t x2;
    for (intptr_t i = 0; i < md->u.contig.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.contig.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.contig.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x2 = i;
                    res %= in_elems;
                    inner_elements = md->u.contig.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x3 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
    double2 temp_dest = *((double2 *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3)) = dest;
}

__kernel void yaksuri_zei_kernel_pack_SUM_contig_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.contig.child->u.hindexed.count;
    
    uintptr_t x2;
    for (intptr_t i = 0; i < md->u.contig.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.contig.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.contig.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x2 = i;
                    res %= in_elems;
                    inner_elements = md->u.contig.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x3 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) += *((const double2 *) (const void *) (sbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_contig_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.contig.child->u.hindexed.count;
    
    uintptr_t x2;
    for (intptr_t i = 0; i < md->u.contig.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.contig.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.contig.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x2 = i;
                    res %= in_elems;
                    inner_elements = md->u.contig.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x3 = res;
    
    intptr_t stride1 = md->u.contig.child->extent;
    intptr_t *array_of_displs2 = md->u.contig.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.contig.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + x1 * stride1 + array_of_displs2[x2] + x3 * extent3)) += *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_REPLACE_resized_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.resized.child->u.hindexed.count;
    
    uintptr_t x1;
    for (intptr_t i = 0; i < md->u.resized.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.resized.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.resized.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x1 = i;
                    res %= in_elems;
                    inner_elements = md->u.resized.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_REPLACE_resized_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.resized.child->u.hindexed.count;
    
    uintptr_t x1;
    for (intptr_t i = 0; i < md->u.resized.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.resized.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.resized.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x1 = i;
                    res %= in_elems;
                    inner_elements = md->u.resized.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3)) = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

__kernel void yaksuri_zei_kernel_pack_PROD_resized_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.resized.child->u.hindexed.count;
    
    uintptr_t x1;
    for (intptr_t i = 0; i < md->u.resized.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.resized.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.resized.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x1 = i;
                    res %= in_elems;
                    inner_elements = md->u.resized.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3));
    double2 temp_dest = *((double2 *) (void *) (dbuf + idx * sizeof(double2)));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) = dest;
}

__kernel void yaksuri_zei_kernel_unpack_PROD_resized_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.resized.child->u.hindexed.count;
    
    uintptr_t x1;
    for (intptr_t i = 0; i < md->u.resized.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.resized.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.resized.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x1 = i;
                    res %= in_elems;
                    inner_elements = md->u.resized.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.hindexed.child->extent;
    double2 dest;
    double2 src = *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
    double2 temp_dest = *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3));
    dest.x = temp_dest.x * src.x - temp_dest.y * src.y;
    dest.y = temp_dest.x * src.y + temp_dest.y * src.x;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3)) = dest;
}

__kernel void yaksuri_zei_kernel_pack_SUM_resized_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.resized.child->u.hindexed.count;
    
    uintptr_t x1;
    for (intptr_t i = 0; i < md->u.resized.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.resized.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.resized.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x1 = i;
                    res %= in_elems;
                    inner_elements = md->u.resized.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + idx * sizeof(double2))) += *((const double2 *) (const void *) (sbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3));
}

__kernel void yaksuri_zei_kernel_unpack_SUM_resized_hindexed_resized_c_double_complex(__global const void *inbuf, __global void *outbuf, unsigned long count, __global const yaksuri_zei_md_s *__restrict__ md)
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
    inner_elements /= md->u.resized.child->u.hindexed.count;
    
    uintptr_t x1;
    for (intptr_t i = 0; i < md->u.resized.child->u.hindexed.count; i++) {
            uintptr_t in_elems = md->u.resized.child->u.hindexed.array_of_blocklengths[i] *
                                 md->u.resized.child->u.hindexed.child->num_elements;
            if (res < in_elems) {
                    x1 = i;
                    res %= in_elems;
                    inner_elements = md->u.resized.child->u.hindexed.child->num_elements;
                    break;
            } else {
                    res -= in_elems;
            }
    }
    
    uintptr_t x2 = res;
    
    intptr_t *array_of_displs2 = md->u.resized.child->u.hindexed.array_of_displs;
    uintptr_t extent3 = md->u.resized.child->u.hindexed.child->extent;
    *((double2 *) (void *) (dbuf + x0 * extent + array_of_displs2[x1] + x2 * extent3)) += *((const double2 *) (const void *) (sbuf + idx * sizeof(double2)));
}

