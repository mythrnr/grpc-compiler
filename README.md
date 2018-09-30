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

* `GOLANG_OUTOUT_DIR` is recommended to set `$GOPATH/src`

```bash
cd grpc-compiler
vi .env

PROTOFILE_DIR="/path/to/proto"
GOLANG_OUTOUT_DIR="/path/to/go_output"
PHP_OUTOUT_DIR="/path/to/php_output"
PYTHON_OUTOUT_DIR="/path/to/python_output"

docker-compose up
```

## License

__NYSL Version 0.9982__  
See [NYSL.TXT](./NYSL.TXT)

* [NYSL Japanese](http://www.kmonos.net/nysl/)
* [NYSL English](http://www.kmonos.net/nysl/index.en.html)
