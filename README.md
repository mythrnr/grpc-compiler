# protobuf-compiler

[日本語](https://github.com/mythrnr/protobuf-compiler/blob/master/README.ja.md)

The tool to generate gRPC codes by docker.

⚠️ Now, PHP image cannnot build.  
Issue: <https://github.com/grpc/grpc/issues/25725>

## Status

[![Build Image for Documenter](https://github.com/mythrnr/protobuf-compiler/actions/workflows/docs.yml/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions/workflows/docs.yml)
[![Build Image for Golang](https://github.com/mythrnr/protobuf-compiler/actions/workflows/golang.yml/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions/workflows/golang.yml)
[![Build Image for PHP](https://github.com/mythrnr/protobuf-compiler/actions/workflows/php.yml/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions/workflows/php.yml)
[![Build Image for Python](https://github.com/mythrnr/protobuf-compiler/actions/workflows/python.yml/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions/workflows/python.yml)

## Usage

- See [Examples](https://github.com/mythrnr/protobuf-compiler/tree/master/examples) for details.
- Specify `.proto` dir and output dir to [docker-compose.yml](https://github.com/mythrnr/protobuf-compiler/blob/master/examples/docker-compose.yml), and execute following command.

```bash
docker-compose up
```

## Building Images

### Build and Push all images

```bash
make build

make push
```

### About Makefile options

| Key         | Default  | Description                                                                                                   |
| ----------- | -------- | ------------------------------------------------------------------------------------------------------------- |
| `go`        | `1.16`   | Go Version in the image                                                                                       |
| `pecl_grpc` | `1.36.0` | PECL::Package::gRPC Version in the image（[PECL::Package::gRPC](https://pecl.php.net/package/gRPC)             |
| `php`       | `7.4`    | PHP Version in the image                                                                                      |
| `protoc`    | `3.15.7` | protoc Version in the image（[protocolbuffers/protobuf](https://github.com/protocolbuffers/protobuf/releases)） |
| `python`    | `3.9`    | Python Version in the image                                                                                   |
| `service`   | -        | If you build only certain things from `docs` , `golang` , `php` or `python`, specify when to `push`.          |

⚠️ Because `PHP5` series is no longer supported, the version of `pecl_grpc` must be up to `1.33.1` to be able to build.

```bash
make build go=1.13 protoc=3.12
```

### Specify target to build

- If you build a specific image, you should also specify it at `push` time.

```bash
make golang go=1.16

# Good
make push service=golang go=1.16

# Not work
make push
```

## License

**NYSL Version 0.9982**  
See [LICENCE](https://github.com/mythrnr/protobuf-compiler/blob/master/LICENCE)

- [NYSL Japanese](http://www.kmonos.net/nysl/)
- [NYSL English](http://www.kmonos.net/nysl/index.en.html)
