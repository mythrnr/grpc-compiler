# grpc-compiler

[日本語](./README.ja.md)

The tool to generate gRPC codes by docker.

## Usage

### Clone repo

```bash
mkdir -p /path/to/workspace/github.com/mythrnr
cd /path/to/workspace/github.com/mythrnr

git clone https://github.com/mythrnr/grpc-compiler.git
```

### Compile your proto files

* `GRPC_COMPILER_DIR_GOLANG` is recommended to set `$GOPATH/src`

```bash
export GRPC_COMPILER_DIR_PROTO="/path/to/proto"
export GRPC_COMPILER_DIR_GOLANG="/path/to/go_output"
export GRPC_COMPILER_DIR_PHP="/path/to/php_output"
export GRPC_COMPILER_DIR_PYTHON="/path/to/python_output"

cd grpc-compiler/docker
docker-compose up
```

### Example

`examples/proto` is compiled, if `GRPC_COMPILER_DIR_*` is not defined

```bash
cd /path/to/mythrnr/grpc-compiler
docker-compose up
```

## License

__NYSL Version 0.9982__  
See [NYSL.TXT](./NYSL.TXT)

* [NYSL Japanese](http://www.kmonos.net/nysl/)
* [NYSL English](http://www.kmonos.net/nysl/index.en.html)
