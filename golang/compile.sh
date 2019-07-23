#!/bin/sh

PROTO_DIR="/proto"
OUTPUT_DIR="/output"
PACKAGE_DIR="/go/src/"${PACKAGE_ROOT:?"Package Root dir is not defined. please set Environment variable by name PACKAGE_ROOT"}

function convert_recursive() {
    if [ -d $1 ]; then
        for d in `ls $1`; do
            convert_recursive "$1/$d"
        done
    else
        protoc \
            -I /usr/include \
            --proto_path=$PROTO_DIR \
            --go_out=plugins=grpc:/go/src \
            $1
    fi
}

set -ex

convert_recursive $PROTO_DIR
cp -r $PACKAGE_DIR/* $OUTPUT_DIR
