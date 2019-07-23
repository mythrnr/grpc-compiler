# protobuf-compiler

[日本語](https://github.com/mythrnr/protobuf-compiler/blob/master/README.ja.md)

The tool to generate gRPC codes by docker.

## Usage

- See [Examples](https://github.com/mythrnr/protobuf-compiler/tree/master/examples) for details.
- Specify `.proto` dir and output dir to [docker-compose.yml](https://github.com/mythrnr/protobuf-compiler/blob/master/examples/docker-compose.yml), and execute `docker-compose up`

## Build with Protocol Buffers version

```bash
PROTOC_VERSION=3.7.1 PECL_GRPC_VERSION=1.22.0 docker-compose build --parallel
```

## License

__NYSL Version 0.9982__  
See [NYSL.TXT](https://github.com/mythrnr/protobuf-compiler/blob/master/NYSL.TXT)

- [NYSL Japanese](http://www.kmonos.net/nysl/)
- [NYSL English](http://www.kmonos.net/nysl/index.en.html)
