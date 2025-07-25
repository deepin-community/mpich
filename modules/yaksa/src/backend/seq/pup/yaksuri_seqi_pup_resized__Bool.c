/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 *
 * DO NOT EDIT: AUTOMATICALLY GENERATED FILE !!
 */

#include <string.h>
#include <stdint.h>
#include <wchar.h>
#include "yaksuri_seqi_pup.h"

int yaksuri_seqi_pack_resized__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__LXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                YAKSURI_SEQI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + i * extent)), *((_Bool *) (void *) (dbuf + idx)));
                idx += sizeof(_Bool);
            }
            break;
        }
        
        case YAKSA_OP__LOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                YAKSURI_SEQI_OP_LOR(*((const _Bool *) (const void *) (sbuf + i * extent)), *((_Bool *) (void *) (dbuf + idx)));
                idx += sizeof(_Bool);
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                YAKSURI_SEQI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + i * extent)), *((_Bool *) (void *) (dbuf + idx)));
                idx += sizeof(_Bool);
            }
            break;
        }
        
        case YAKSA_OP__LAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                YAKSURI_SEQI_OP_LAND(*((const _Bool *) (const void *) (sbuf + i * extent)), *((_Bool *) (void *) (dbuf + idx)));
                idx += sizeof(_Bool);
            }
            break;
        }
        
        default:
            break;
    }
    
    return rc;
}

int yaksuri_seqi_unpack_resized__Bool(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__LXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                YAKSURI_SEQI_OP_LXOR(*((const _Bool *) (const void *) (sbuf + idx)), *((_Bool *) (void *) (dbuf + i * extent)));
                idx += sizeof(_Bool);
            }
            break;
        }
        
        case YAKSA_OP__LOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                YAKSURI_SEQI_OP_LOR(*((const _Bool *) (const void *) (sbuf + idx)), *((_Bool *) (void *) (dbuf + i * extent)));
                idx += sizeof(_Bool);
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                YAKSURI_SEQI_OP_REPLACE(*((const _Bool *) (const void *) (sbuf + idx)), *((_Bool *) (void *) (dbuf + i * extent)));
                idx += sizeof(_Bool);
            }
            break;
        }
        
        case YAKSA_OP__LAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                YAKSURI_SEQI_OP_LAND(*((const _Bool *) (const void *) (sbuf + idx)), *((_Bool *) (void *) (dbuf + i * extent)));
                idx += sizeof(_Bool);
            }
            break;
        }
        
        default:
            break;
    }
    
    return rc;
}

