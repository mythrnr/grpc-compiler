ARG LANG_VERSION

FROM golang:${LANG_VERSION}-alpine

ARG HTTP_PROXY
ARG HTTPS_PROXY
ARG PROTOC_VERSION
ARG WORK_DIR

ENV HTTP_PROXY ${HTTP_PROXY}
ENV HTTPS_PROXY ${HTTPS_PROXY}

WORKDIR ${WORK_DIR}

RUN set -x \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
        protobuf \
    && apk add --no-cache --virtual needless_libset \
        curl \
        git \
    && go get -u google.golang.org/grpc \
    && go get -u github.com/golang/protobuf/proto \
    && go install github.com/golang/protobuf/proto \
    && go get -u github.com/golang/protobuf/protoc-gen-go \
    && cd /tmp \
    &&  if [ "x" != "x${HTTP_PROXY}" ]; then \
            curl -x ${HTTP_PROXY} \
                -L -o /tmp/protoc-${PROTOC_VERSION}-linux-x86_64.zip \
                https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip; \
        else \
            curl \
                -L -o /tmp/protoc-${PROTOC_VERSION}-linux-x86_64.zip \
                https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip; \
        fi \
    && unzip protoc-${PROTOC_VERSION}-linux-x86_64.zip \
    && mv include /usr/include \
    && apk del needless_libset \
    && rm -rf /tmp/* \
    && rm -rf /var/cache/apk/*
