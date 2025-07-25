/*
 * Copyright (C) by Argonne National Laboratory
 *     See COPYRIGHT in top-level directory
 *
 * DO NOT EDIT: AUTOMATICALLY GENERATED FILE !!
 */

#include <stdio.h>
#include <stdlib.h>
#include <wchar.h>
#include "yaksi.h"
#include "yaksu.h"
#include "yaksuri_zei.h"
#include "yaksuri_zei_populate_pupfns.h"
#include "yaksuri_zei_pup.h"

int yaksuri_zei_populate_pupfns_blkhindx_hvector(yaksi_type_s * type)
{
    int rc = YAKSA_SUCCESS;
    yaksuri_zei_type_s *ze = (yaksuri_zei_type_s *) type->backend.ze.priv;
    
    char *str = getenv("YAKSA_ENV_MAX_NESTING_LEVEL");
    int max_nesting_level;
    if (str) {
        max_nesting_level = atoi(str);
    } else {
        max_nesting_level = YAKSI_ENV_DEFAULT_NESTING_LEVEL;
    }
    
    switch (type->u.blkhindx.child->u.hvector.child->kind) {
        case YAKSI_TYPE_KIND__HVECTOR:
        switch (type->u.blkhindx.child->u.hvector.child->u.hvector.child->kind) {
            case YAKSI_TYPE_KIND__BUILTIN:
            switch (type->u.blkhindx.child->u.hvector.child->u.hvector.child->u.builtin.handle) {
                case YAKSA_TYPE__CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_char";
                }
                break;
                case YAKSA_TYPE__INT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int8_t";
                }
                break;
                case YAKSA_TYPE__INT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int16_t";
                }
                break;
                case YAKSA_TYPE__INT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int32_t";
                }
                break;
                case YAKSA_TYPE__INT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int64_t";
                }
                break;
                case YAKSA_TYPE__FLOAT:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_float;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_float;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_float;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_float;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_float;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_float;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_float;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_float;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_float;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_float;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_float";
                }
                break;
                case YAKSA_TYPE__DOUBLE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_double;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_double;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_double;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_double;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_double;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_double;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_double;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_double;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_double;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_double;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_double";
                }
                break;
                case YAKSA_TYPE__C_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_c_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_c_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_c_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_c_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_c_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_c_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_c_complex";
                }
                break;
                case YAKSA_TYPE__C_DOUBLE_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_c_double_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_c_double_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_c_double_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_c_double_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_c_double_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_c_double_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_c_double_complex";
                }
                break;
                case YAKSA_TYPE__UNSIGNED_CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_char";
                }
                break;
                case YAKSA_TYPE__UINT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int8_t";
                }
                break;
                case YAKSA_TYPE__UINT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int16_t";
                }
                break;
                case YAKSA_TYPE__UINT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int32_t";
                }
                break;
                case YAKSA_TYPE__UINT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int64_t";
                }
                break;
                case YAKSA_TYPE__BYTE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hvector_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hvector_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hvector_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hvector_int8_t";
                }
                break;
                default:
                    break;
            }
            break;
            default:
                break;
        }
        break;
        case YAKSI_TYPE_KIND__BLKHINDX:
        switch (type->u.blkhindx.child->u.hvector.child->u.blkhindx.child->kind) {
            case YAKSI_TYPE_KIND__BUILTIN:
            switch (type->u.blkhindx.child->u.hvector.child->u.blkhindx.child->u.builtin.handle) {
                case YAKSA_TYPE__CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_char";
                }
                break;
                case YAKSA_TYPE__INT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int8_t";
                }
                break;
                case YAKSA_TYPE__INT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int16_t";
                }
                break;
                case YAKSA_TYPE__INT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int32_t";
                }
                break;
                case YAKSA_TYPE__INT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int64_t";
                }
                break;
                case YAKSA_TYPE__FLOAT:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_float;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_float;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_float;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_float;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_float;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_float;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_float;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_float;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_float;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_float;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_float";
                }
                break;
                case YAKSA_TYPE__DOUBLE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_double;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_double;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_double;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_double;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_double;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_double;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_double;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_double;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_double;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_double;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_double";
                }
                break;
                case YAKSA_TYPE__C_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_c_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_c_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_c_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_c_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_c_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_c_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_c_complex";
                }
                break;
                case YAKSA_TYPE__C_DOUBLE_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_c_double_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_c_double_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_c_double_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_c_double_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_c_double_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_c_double_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_c_double_complex";
                }
                break;
                case YAKSA_TYPE__UNSIGNED_CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_char";
                }
                break;
                case YAKSA_TYPE__UINT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int8_t";
                }
                break;
                case YAKSA_TYPE__UINT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int16_t";
                }
                break;
                case YAKSA_TYPE__UINT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int32_t";
                }
                break;
                case YAKSA_TYPE__UINT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int64_t";
                }
                break;
                case YAKSA_TYPE__BYTE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_blkhindx_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_blkhindx_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_blkhindx_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_blkhindx_int8_t";
                }
                break;
                default:
                    break;
            }
            break;
            default:
                break;
        }
        break;
        case YAKSI_TYPE_KIND__HINDEXED:
        switch (type->u.blkhindx.child->u.hvector.child->u.hindexed.child->kind) {
            case YAKSI_TYPE_KIND__BUILTIN:
            switch (type->u.blkhindx.child->u.hvector.child->u.hindexed.child->u.builtin.handle) {
                case YAKSA_TYPE__CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_char";
                }
                break;
                case YAKSA_TYPE__INT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int8_t";
                }
                break;
                case YAKSA_TYPE__INT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int16_t";
                }
                break;
                case YAKSA_TYPE__INT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int32_t";
                }
                break;
                case YAKSA_TYPE__INT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int64_t";
                }
                break;
                case YAKSA_TYPE__FLOAT:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_float;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_float;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_float;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_float;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_float;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_float;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_float;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_float;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_float;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_float;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_float";
                }
                break;
                case YAKSA_TYPE__DOUBLE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_double;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_double;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_double;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_double;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_double;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_double;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_double;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_double;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_double;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_double;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_double";
                }
                break;
                case YAKSA_TYPE__C_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_c_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_c_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_c_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_c_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_c_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_c_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_c_complex";
                }
                break;
                case YAKSA_TYPE__C_DOUBLE_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_c_double_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_c_double_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_c_double_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_c_double_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_c_double_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_c_double_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_c_double_complex";
                }
                break;
                case YAKSA_TYPE__UNSIGNED_CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_char";
                }
                break;
                case YAKSA_TYPE__UINT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int8_t";
                }
                break;
                case YAKSA_TYPE__UINT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int16_t";
                }
                break;
                case YAKSA_TYPE__UINT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int32_t";
                }
                break;
                case YAKSA_TYPE__UINT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int64_t";
                }
                break;
                case YAKSA_TYPE__BYTE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_hindexed_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_hindexed_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_hindexed_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_hindexed_int8_t";
                }
                break;
                default:
                    break;
            }
            break;
            default:
                break;
        }
        break;
        case YAKSI_TYPE_KIND__CONTIG:
        switch (type->u.blkhindx.child->u.hvector.child->u.contig.child->kind) {
            case YAKSI_TYPE_KIND__BUILTIN:
            switch (type->u.blkhindx.child->u.hvector.child->u.contig.child->u.builtin.handle) {
                case YAKSA_TYPE__CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_char";
                }
                break;
                case YAKSA_TYPE__INT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int8_t";
                }
                break;
                case YAKSA_TYPE__INT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int16_t";
                }
                break;
                case YAKSA_TYPE__INT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int32_t";
                }
                break;
                case YAKSA_TYPE__INT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int64_t";
                }
                break;
                case YAKSA_TYPE__FLOAT:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_float;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_float;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_float;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_float;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_float;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_float;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_float;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_float;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_float;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_float;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_float";
                }
                break;
                case YAKSA_TYPE__DOUBLE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_double;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_double;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_double;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_double;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_double;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_double;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_double;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_double;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_double;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_double;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_double";
                }
                break;
                case YAKSA_TYPE__C_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_c_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_c_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_c_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_c_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_c_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_c_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_c_complex";
                }
                break;
                case YAKSA_TYPE__C_DOUBLE_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_c_double_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_c_double_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_c_double_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_c_double_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_c_double_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_c_double_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_c_double_complex";
                }
                break;
                case YAKSA_TYPE__UNSIGNED_CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_char";
                }
                break;
                case YAKSA_TYPE__UINT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int8_t";
                }
                break;
                case YAKSA_TYPE__UINT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int16_t";
                }
                break;
                case YAKSA_TYPE__UINT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int32_t";
                }
                break;
                case YAKSA_TYPE__UINT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int64_t";
                }
                break;
                case YAKSA_TYPE__BYTE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_contig_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_contig_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_contig_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_contig_int8_t";
                }
                break;
                default:
                    break;
            }
            break;
            default:
                break;
        }
        break;
        case YAKSI_TYPE_KIND__RESIZED:
        switch (type->u.blkhindx.child->u.hvector.child->u.resized.child->kind) {
            case YAKSI_TYPE_KIND__BUILTIN:
            switch (type->u.blkhindx.child->u.hvector.child->u.resized.child->u.builtin.handle) {
                case YAKSA_TYPE__CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_char";
                }
                break;
                case YAKSA_TYPE__INT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int8_t";
                }
                break;
                case YAKSA_TYPE__INT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int16_t";
                }
                break;
                case YAKSA_TYPE__INT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int32_t";
                }
                break;
                case YAKSA_TYPE__INT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int64_t";
                }
                break;
                case YAKSA_TYPE__FLOAT:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_float;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_float;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_float;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_float;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_float;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_float;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_float;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_float;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_float;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_float;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_float";
                }
                break;
                case YAKSA_TYPE__DOUBLE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_double;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_double;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_double;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_double;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_double;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_double;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_double;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_double;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_double;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_double;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_double";
                }
                break;
                case YAKSA_TYPE__C_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_c_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_c_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_c_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_c_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_c_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_c_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_c_complex";
                }
                break;
                case YAKSA_TYPE__C_DOUBLE_COMPLEX:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_c_double_complex;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_c_double_complex;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_c_double_complex;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_c_double_complex;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_c_double_complex;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_c_double_complex;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_c_double_complex";
                }
                break;
                case YAKSA_TYPE__UNSIGNED_CHAR:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_char;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_char;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_char";
                }
                break;
                case YAKSA_TYPE__UINT8_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int8_t";
                }
                break;
                case YAKSA_TYPE__UINT16_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int16_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int16_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int16_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int16_t";
                }
                break;
                case YAKSA_TYPE__UINT32_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int32_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int32_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int32_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int32_t";
                }
                break;
                case YAKSA_TYPE__UINT64_T:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int64_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int64_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int64_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int64_t";
                }
                break;
                case YAKSA_TYPE__BYTE:
                if (max_nesting_level >= 3) {
                    ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_resized_int8_t;
                    ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_resized_int8_t;
                    ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_resized_int8_t;
                    ze->name = "yaksuri_zei_op_blkhindx_hvector_resized_int8_t";
                }
                break;
                default:
                    break;
            }
            break;
            default:
                break;
        }
        break;
        case YAKSI_TYPE_KIND__BUILTIN:
        switch (type->u.blkhindx.child->u.hvector.child->u.builtin.handle) {
            case YAKSA_TYPE__CHAR:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_char;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_char;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_char";
            }
            break;
            case YAKSA_TYPE__INT8_T:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int8_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int8_t";
            }
            break;
            case YAKSA_TYPE__INT16_T:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int16_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int16_t";
            }
            break;
            case YAKSA_TYPE__INT32_T:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int32_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int32_t";
            }
            break;
            case YAKSA_TYPE__INT64_T:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int64_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int64_t";
            }
            break;
            case YAKSA_TYPE__FLOAT:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_float;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_float;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_float;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_float;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_float;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_float;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_float;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_float;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_float;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_float;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_float";
            }
            break;
            case YAKSA_TYPE__DOUBLE:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_double;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_double;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_double;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_double;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_double;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_double;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_double;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_double;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_double;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_double;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_double";
            }
            break;
            case YAKSA_TYPE__C_COMPLEX:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_c_complex;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_c_complex;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_c_complex;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_c_complex;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_c_complex;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_c_complex;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_c_complex";
            }
            break;
            case YAKSA_TYPE__C_DOUBLE_COMPLEX:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_c_double_complex;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_c_double_complex;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_c_double_complex;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_c_double_complex;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_c_double_complex;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_c_double_complex;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_c_double_complex";
            }
            break;
            case YAKSA_TYPE__UNSIGNED_CHAR:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_char;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_char;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_char";
            }
            break;
            case YAKSA_TYPE__UINT8_T:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int8_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int8_t";
            }
            break;
            case YAKSA_TYPE__UINT16_T:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int16_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int16_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int16_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int16_t";
            }
            break;
            case YAKSA_TYPE__UINT32_T:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int32_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int32_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int32_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int32_t";
            }
            break;
            case YAKSA_TYPE__UINT64_T:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int64_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int64_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int64_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int64_t";
            }
            break;
            case YAKSA_TYPE__BYTE:
            if (max_nesting_level >= 2) {
                ze->pack[YAKSA_OP__BAND] = yaksuri_zei_pack_BAND_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BAND] = yaksuri_zei_unpack_BAND_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__REPLACE] = yaksuri_zei_pack_REPLACE_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__REPLACE] = yaksuri_zei_unpack_REPLACE_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__BOR] = yaksuri_zei_pack_BOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BOR] = yaksuri_zei_unpack_BOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__BXOR] = yaksuri_zei_pack_BXOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__BXOR] = yaksuri_zei_unpack_BXOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LAND] = yaksuri_zei_pack_LAND_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LAND] = yaksuri_zei_unpack_LAND_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__SUM] = yaksuri_zei_pack_SUM_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__SUM] = yaksuri_zei_unpack_SUM_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LXOR] = yaksuri_zei_pack_LXOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LXOR] = yaksuri_zei_unpack_LXOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__MAX] = yaksuri_zei_pack_MAX_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__MAX] = yaksuri_zei_unpack_MAX_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__LOR] = yaksuri_zei_pack_LOR_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__LOR] = yaksuri_zei_unpack_LOR_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__PROD] = yaksuri_zei_pack_PROD_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__PROD] = yaksuri_zei_unpack_PROD_blkhindx_hvector_int8_t;
                ze->pack[YAKSA_OP__MIN] = yaksuri_zei_pack_MIN_blkhindx_hvector_int8_t;
                ze->unpack[YAKSA_OP__MIN] = yaksuri_zei_unpack_MIN_blkhindx_hvector_int8_t;
                ze->name = "yaksuri_zei_op_blkhindx_hvector_int8_t";
            }
            break;
            default:
                break;
        }
        break;
        default:
            break;
    }
    
    return rc;
}
