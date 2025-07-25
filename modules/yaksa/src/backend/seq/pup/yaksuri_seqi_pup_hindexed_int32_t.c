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

int yaksuri_seqi_pack_hindexed_int32_t(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
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
                        YAKSURI_SEQI_OP_MAX(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__LAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_LAND(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
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
                        YAKSURI_SEQI_OP_SUM(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__BOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_BOR(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__LOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_LOR(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__BXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_BXOR(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
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
                        YAKSURI_SEQI_OP_MIN(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__LXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_LXOR(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
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
                        YAKSURI_SEQI_OP_PROD(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__BAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_BAND(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
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
                        YAKSURI_SEQI_OP_REPLACE(*((const int32_t *) (const void *) (sbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))), *((int32_t *) (void *) (dbuf + idx)));
                        idx += sizeof(int32_t);
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

int yaksuri_seqi_unpack_hindexed_int32_t(const void *inbuf, void *outbuf, uintptr_t count, yaksi_type_s * type, yaksa_op_t op)
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
                        YAKSURI_SEQI_OP_MAX(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__LAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_LAND(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
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
                        YAKSURI_SEQI_OP_SUM(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__BOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_BOR(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__LOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_LOR(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__BXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_BXOR(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
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
                        YAKSURI_SEQI_OP_MIN(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__LXOR:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_LXOR(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
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
                        YAKSURI_SEQI_OP_PROD(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
                    }
                }
            }
            break;
        }
        
        case YAKSA_OP__BAND:
        {
            for (intptr_t i = 0; i < count; i++) {
                for (intptr_t j1 = 0; j1 < count1; j1++) {
                    for (intptr_t k1 = 0; k1 < array_of_blocklengths1[j1]; k1++) {
                        YAKSURI_SEQI_OP_BAND(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
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
                        YAKSURI_SEQI_OP_REPLACE(*((const int32_t *) (const void *) (sbuf + idx)), *((int32_t *) (void *) (dbuf + i * extent + array_of_displs1[j1] + k1 * sizeof(int32_t))));
                        idx += sizeof(int32_t);
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

