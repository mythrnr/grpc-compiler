# grpc-compiler

[日本語](./README.ja.md)

The tool to generate gRPC codes by docker.

## Usage

### Compile your proto files

```bash
export GRPC_COMPILER_DIR_PROTO="/path/to/proto"
export GRPC_COMPILER_DIR_GOLANG="/path/to/go_output"
export GRPC_COMPILER_DIR_PHP="/path/to/php_output"
export GRPC_COMPILER_DIR_PYTHON="/path/to/python_output"

cd grpc-compiler/docker
docker-compose up
```

### Example

`example/proto` is compiled, if `GRPC_COMPILER_DIR_*` is not defined

```bash
cd grpc-compiler/docker
docker-compose up
```

## License

__NYSL Version 0.9982__  
See [NYSL.TXT](./NYSL.TXT)

* [NYSL Japanese](http://www.kmonos.net/nysl/)
* [NYSL English](http://www.kmonos.net/nysl/index.en.html)
