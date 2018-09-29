ARG LANG_VERSION

FROM python:${LANG_VERSION}-alpine

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
        libstdc++ \
    && apk add --no-cache --virtual needless_libset \
        curl \
        g++ \
        gcc \
        git \
        python3-dev \
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
    && git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc \
    && cd /tmp/grpc \
    && python -m pip install --upgrade pip \
    && python -m pip install \
        grpcio \
        grpcio-tools \
        googleapis-common-protos \
    && apk del needless_libset \
    && rm -rf /tmp/* \
    && rm -rf /var/cache/apk/*
