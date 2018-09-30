# grpc-compiler

[English](./README.md)

gRPCのコードをDockerで手軽に生成するツール。  
プロジェクトごとに用意するのが面倒だったのでツール化。

## 使い方

### クローン

```bash
mkdir -p /path/to/workspace/github.com/mythrnr
cd /path/to/workspace/github.com/mythrnr

git clone https://github.com/mythrnr/grpc-compiler.git
```

### プロトコルファイルを指定してコンパイル

* `GOLANG_OUTOUT_DIR` は `$GOPATH/src` を推奨

```bash
cd grpc-compiler
vi .env

PROTOFILE_DIR="/path/to/proto"
GOLANG_OUTOUT_DIR="/path/to/go_output"
PHP_OUTOUT_DIR="/path/to/php_output"
PYTHON_OUTOUT_DIR="/path/to/python_output"

docker-compose up
```

## ライセンス

__NYSL Version 0.9982__  
See [NYSL.TXT](./NYSL.TXT)

* [NYSL Japanese](http://www.kmonos.net/nysl/)
* [NYSL English](http://www.kmonos.net/nysl/index.en.html)
