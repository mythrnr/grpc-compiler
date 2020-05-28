# protobuf-compiler

[日本語](https://github.com/mythrnr/protobuf-compiler/blob/master/README.ja.md)

The tool to generate gRPC codes by docker.

## Status

[![Build Image for Documenter](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20Documenter/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+Documenter%22)

[![Build Image Golang](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20Golang/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+Golang%22)

[![Build Image for PHP](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20PHP/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+PHP%22)

[![Build Image for Python](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20Python/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+Python%22)

## Usage

- See [Examples](https://github.com/mythrnr/protobuf-compiler/tree/master/examples) for details.
- Specify `.proto` dir and output dir to [docker-compose.yml](https://github.com/mythrnr/protobuf-compiler/blob/master/examples/docker-compose.yml), and execute `docker-compose up`

## Build with Protocol Buffers version

```bash
PROTOC_VERSION=3.11.2 PECL_GRPC_VERSION=1.26.0 docker-compose build --parallel
```

## License

__NYSL Version 0.9982__
See [NYSL.TXT](https://github.com/mythrnr/protobuf-compiler/blob/master/NYSL.TXT)

- [NYSL Japanese](http://www.kmonos.net/nysl/)
- [NYSL English](http://www.kmonos.net/nysl/index.en.html)
