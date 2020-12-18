.PHONY: build config docs golang php push python

#######################################
#
# Recipes for Building Images
#
#######################################

go ?= 1.15
pecl_grpc = 1.34.0
php ?= 7.4
protoc ?= 3.14.0
python ?= 3.9

build:
	DOCKER_BUILDKIT=1 \
	COMPOSE_DOCKER_CLI_BUILD=1 \
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build --parallel

config:
	DOCKER_BUILDKIT=1 \
	COMPOSE_DOCKER_CLI_BUILD=1 \
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose config

docs:
	DOCKER_BUILDKIT=1 \
	COMPOSE_DOCKER_CLI_BUILD=1 \
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build docs

golang:
	DOCKER_BUILDKIT=1 \
	COMPOSE_DOCKER_CLI_BUILD=1 \
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build golang

php:
	DOCKER_BUILDKIT=1 \
	COMPOSE_DOCKER_CLI_BUILD=1 \
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build php

python:
	DOCKER_BUILDKIT=1 \
	COMPOSE_DOCKER_CLI_BUILD=1 \
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose build python

#######################################
#
# Recipes for Managing Images
#
#######################################

service =

push:
	DOCKER_BUILDKIT=1 \
	COMPOSE_DOCKER_CLI_BUILD=1 \
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker-compose push $(service)

trivy:
	DOCKER_BUILDKIT=1 \
	COMPOSE_DOCKER_CLI_BUILD=1 \
	GO_VERSION="$(go)" \
	PECL_GRPC_VERSION="$(pecl_grpc)" \
	PHP_VERSION="$(php)" \
	PROTOC_VERSION="$(protoc)" \
	PYTHON_VERSION="$(python)" \
	docker images --format "{{.Repository}}:{{.Tag}}" \
		| grep "mythrnr/protobuf-compiler" \
		| grep "$(service)" \
		| xargs -I{} trivy -q \
			--severity HIGH,CRITICAL \
			--exit-code 1 {}
