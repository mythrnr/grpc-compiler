FROM python:alpine

ARG HTTPS_PROXY
ARG PROTOC_VERSION
ARG PROTOC_DOWNLOAD_FILE="protoc-${PROTOC_VERSION}-linux-x86_64.zip"
ARG PROTOC_URL="https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/${PROTOC_DOWNLOAD_FILE}"

RUN : "${PROTOC_VERSION?:PROTOC_VERSION is required.}" \
    && set -x \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
        libstdc++ \
    && apk add --no-cache --virtual needless_libset \
        curl \
        g++ \
        gcc \
        git \
        linux-headers \
        python3-dev \
    && cd /tmp \
    && if [ "x" != "x${HTTPS_PROXY}" ]; then \
        curl -x ${HTTPS_PROXY} -L -o ${PROTOC_DOWNLOAD_FILE} ${PROTOC_URL}; \
    else \
        curl -L -o ${PROTOC_DOWNLOAD_FILE} ${PROTOC_URL}; \
    fi \
    && unzip ${PROTOC_DOWNLOAD_FILE} \
    && mv include /usr/include \
    && python -m pip install --upgrade --proxy=${HTTPS_PROXY} \
        pip \
        grpcio \
        grpcio-tools \
        googleapis-common-protos \
    && apk del needless_libset \
    && rm -rf \
        /tmp/* \
        /var/cache/apk/*

COPY ./compile.sh ./

CMD ["sh", "compile.sh"]
