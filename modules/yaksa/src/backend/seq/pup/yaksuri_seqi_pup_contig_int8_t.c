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

int yaksuri_seqi_pack_contig_int8_t(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.contig.count;
    intptr_t stride1 = type->u.contig.child->extent;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_MAX(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__LAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_LAND(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_SUM(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__BOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_BOR(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__LOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_LOR(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__BXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_BXOR(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_MIN(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__LXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_LXOR(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_PROD(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__BAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_BAND(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_REPLACE(*((const int8_t *) (const void *) (sbuf + i * extent + j1 * stride1)), *((int8_t *) (void *) (dbuf + idx)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        default:
            break;
    }
    
    return rc;
}

int yaksuri_seqi_unpack_contig_int8_t(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.contig.count;
    intptr_t stride1 = type->u.contig.child->extent;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_MAX(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__LAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_LAND(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_SUM(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__BOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_BOR(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__LOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_LOR(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__BXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_BXOR(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_MIN(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__LXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_LXOR(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_PROD(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__BAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_BAND(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    YAKSURI_SEQI_OP_REPLACE(*((const int8_t *) (const void *) (sbuf + idx)), *((int8_t *) (void *) (dbuf + i * extent + j1 * stride1)));
                    idx += sizeof(int8_t);
                }
            }
            break;
        }
        
        default:
            break;
    }
    
    return rc;
}

