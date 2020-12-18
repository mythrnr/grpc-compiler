.PHONY: build config docs golang php push python

go ?= 1.15
pecl_grpc = 1.34.0
php ?= 7.4
protoc ?= 3.14.0
python ?= 3.9

build:
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build --parallel

config:
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose config

docs:
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build docs

golang:
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build golang

php:
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build php

service =

push:
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose push $(service)

python:
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build python
