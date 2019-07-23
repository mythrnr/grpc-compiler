#!/bin/sh

PROTO_DIR="/proto"
OUTPUT_DIR="/output"

function convert_recursive() {
    if [ -d $1 ]; then
        for d in `ls $1`; do
            convert_recursive "$1/$d"
        done
    else
        python \
            -m grpc_tools.protoc \
            -I /usr/include \
            --proto_path=$PROTO_DIR \
            --python_out=$OUTPUT_DIR \
            --grpc_python_out=$OUTPUT_DIR \
            $1
    fi
}

set -ex

convert_recursive $PROTO_DIR
