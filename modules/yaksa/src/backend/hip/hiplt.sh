#!/bin/sh
##
## Copyright (C) by Argonne National Laboratory
##     See COPYRIGHT in top-level directory
##

set -e

verbose=
if test "$1" = "--verbose" ; then
    verbose=1
    shift
fi

LO_FILEPATH="$1"
O_FILEPATH="${LO_FILEPATH%%.lo}.o"
shift # handle the rest of the arguments together with ${@}

LO_DIR=$(dirname $O_FILEPATH)
O_FILENAME=$(basename $O_FILEPATH)

LOCAL_PIC_DIR=".libs/"
LOCAL_NPIC_DIR=""
PIC_DIR="$LO_DIR/$LOCAL_PIC_DIR"
NPIC_DIR="$LO_DIR/$LOCAL_NPIC_DIR"

PIC_FILEPATH="$PIC_DIR/$O_FILENAME"
NPIC_FILEPATH="$NPIC_DIR/$O_FILENAME"
LOCAL_PIC_FILEPATH="$LOCAL_PIC_DIR$O_FILENAME"
LOCAL_NPIC_FILEPATH="$LOCAL_NPIC_DIR$O_FILENAME"

if test ! -d "$PIC_DIR" ; then
    mkdir -p "$PIC_DIR"
fi

CMD="${@} -fPIC -o $PIC_FILEPATH"
if test "$verbose" ; then echo "$CMD" ; fi
eval "$CMD"

CMD="${@} -o $NPIC_FILEPATH"
if test "$verbose" ; then echo "$CMD" ; fi
eval "$CMD"

LIBTOOL_VERSION=$(libtool --version | head -n 1)

cat > $LO_FILEPATH <<EOF
# $LO_FILEPATH - a libtool object file
# Generated by $LIBTOOL_VERSION
#
# Please DO NOT delete this file!
# It is necessary for linking the library.

# Name of the PIC object.
pic_object="$LOCAL_PIC_FILEPATH"

# Name of the non-PIC object.
non_pic_object="$LOCAL_NPIC_FILEPATH"
EOF

