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

int yaksuri_seqi_pack_hvector_blklen_1_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_1_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 1; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

int yaksuri_seqi_pack_hvector_blklen_2_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_2_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 2; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

int yaksuri_seqi_pack_hvector_blklen_3_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_3_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 3; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

int yaksuri_seqi_pack_hvector_blklen_4_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_4_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 4; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

int yaksuri_seqi_pack_hvector_blklen_5_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_5_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 5; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

int yaksuri_seqi_pack_hvector_blklen_6_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_6_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 6; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

int yaksuri_seqi_pack_hvector_blklen_7_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_7_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 7; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

int yaksuri_seqi_pack_hvector_blklen_8_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_8_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < 8; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

int yaksuri_seqi_pack_hvector_blklen_generic_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))), *((long double *) (void *) (dbuf + idx)));
                        idx += sizeof(long double);
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

int yaksuri_seqi_unpack_hvector_blklen_generic_long_double(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
{
    int rc = YAKSA_SUCCESS;
    const char *restrict sbuf = (const char *) inbuf;
    char *restrict dbuf = (char *) outbuf;
    uintptr_t extent ATTRIBUTE((unused)) = type->extent;
    
    intptr_t count1 = type->u.hvector.count;
    intptr_t blocklength1 ATTRIBUTE((unused)) = type->u.hvector.blocklength;
    intptr_t stride1 = type->u.hvector.stride;
    uintptr_t extent1 ATTRIBUTE((unused)) = type->extent;
    
    uintptr_t idx = 0;
    switch (op) {
        case YAKSA_OP__MAX:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_MAX_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__SUM:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_SUM(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__MIN:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_MIN_FLOAT(long double, *((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__PROD:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_PROD(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__REPLACE:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < blocklength1; k1++) {
                        YAKSURI_SEQI_OP_REPLACE(*((const long double *) (const void *) (sbuf + idx)), *((long double *) (void *) (dbuf + i * extent + j1 * stride1 + k1 * sizeof(long double))));
                        idx += sizeof(long double);
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

