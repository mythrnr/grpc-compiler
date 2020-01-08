FROM golang:alpine

ARG HTTPS_PROXY
ARG PROTOC_VERSION="3.11.2"
ARG PROTOC_DOWNLOAD_FILE="protoc-${PROTOC_VERSION}-linux-x86_64.zip"
ARG PROTOC_URL="https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/${PROTOC_DOWNLOAD_FILE}"
ENV GO111MODULE="on"

RUN set -x \
    && apk update \
    && apk add --no-cache \
        protobuf \
    && apk add --no-cache --virtual needless_libset \
        curl \
        git \
    && cd /tmp \
    && if [ "x" != "x${HTTPS_PROXY}" ]; then \
        curl -x ${HTTPS_PROXY} -L -o ${PROTOC_DOWNLOAD_FILE} ${PROTOC_URL}; \
    else \
        curl -L -o ${PROTOC_DOWNLOAD_FILE} ${PROTOC_URL}; \
    fi \
    && unzip ${PROTOC_DOWNLOAD_FILE} \
    && mv include /usr/include \
    && mkdir -p \
        /go/bin \
        /go/pkg \
        /go/src \
    && go get -v -u \
        google.golang.org/grpc \
        github.com/golang/protobuf/proto \
        github.com/golang/protobuf/protoc-gen-go \
        github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc \
    && apk del needless_libset \
    && rm -rf \
        /tmp/* \
        /var/cache/apk/* \
        /go/pkg/* \
        /go/src/*

COPY ./gendoc.sh ./

CMD ["sh", "gendoc.sh"]
