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

int yaksuri_seqi_pack_hindexed_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hindexed.count;
    intptr_t *restrict array_of_blocklengths1 = type->u.hindexed.array_of_blocklengths;
    intptr_t *restrict array_of_displs1 = type->u.hindexed.array_of_displs;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(double, *((const double *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))), *((double *) (void *) (dbuf + idx)));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const double *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))), *((double *) (void *) (dbuf + idx)));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(double, *((const double *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))), *((double *) (void *) (dbuf + idx)));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const double *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))), *((double *) (void *) (dbuf + idx)));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const double *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))), *((double *) (void *) (dbuf + idx)));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        default:
            break;
    }
    
    return rc;
}

int yaksuri_seqi_unpack_hindexed_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hindexed.count;
    intptr_t *restrict array_of_blocklengths1 = type->u.hindexed.array_of_blocklengths;
    intptr_t *restrict array_of_displs1 = type->u.hindexed.array_of_displs;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(double, *((const double *) (const void *) (sbuf + idx)), *((double *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const double *) (const void *) (sbuf + idx)), *((double *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(double, *((const double *) (const void *) (sbuf + idx)), *((double *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const double *) (const void *) (sbuf + idx)), *((double *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const double *) (const void *) (sbuf + idx)), *((double *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(double))));
                        idx += sizeof(double);
                    }
                }
            }
            break;
        }
        
        default:
            break;
    }
    
    return rc;
}

