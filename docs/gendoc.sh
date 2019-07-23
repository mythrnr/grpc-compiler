#!/bin/sh

PROTO_DIR="/proto"
OUTPUT_DIR="/output"

function gen_doc_recursive() {
    if [ -d $1 ]; then
        set +e
        ls $1/*.proto
        exists=$?
        set -e

        if [ "0" = "$exists" ]; then
            OUTDIR=$OUTPUT_DIR/`basename $1`
            mkdir -p $OUTDIR
            protoc \
                -I /usr/include \
                --proto_path=$PROTO_DIR \
                --doc_out=markdown,README.md:$OUTDIR \
                $1/*.proto
        else
            for d in `ls $1`; do
                gen_doc_recursive "$1/$d"
            done
        fi
    else
        protoc \
            -I /usr/include \
            --proto_path=$PROTO_DIR \
            --doc_out=markdown,README.md:$OUTPUT_DIR \
            $1
    fi
}

set -ex

gen_doc_recursive $PROTO_DIR
