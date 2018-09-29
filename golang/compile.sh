#!/bin/sh

PROTO_DIR="/go/src/proto"
PROJECT_DIR="/go/src/go_out"

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
            --go_out=plugins=grpc:$PROJECT_DIR \
            $1
    fi
}

set -ex
convert_recursive $PROTO_DIR
