#!/bin/sh

PROTO_DIR="/usr/src/proto"
PROJECT_DIR="/usr/src/php_out"

mkdir -p $PROJECT_DIR

function convert_recursive() {
    if [ -d $1 ]; then
        for d in `ls $1`; do
            convert_recursive "$1/$d"
        done
    else
        protoc \
            -I /usr/include \
            --proto_path=$PROTO_DIR \
            --php_out=$PROJECT_DIR \
            --grpc_out=$PROJECT_DIR \
            --plugin=protoc-gen-grpc=/usr/lib/grpc_php_plugin \
            $1
    fi
}

set -ex
convert_recursive $PROTO_DIR
