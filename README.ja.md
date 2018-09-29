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

* `GRPC_COMPILER_DIR_GOLANG` は `$GOPATH/src` を推奨

```bash
export GRPC_COMPILER_DIR_PROTO="/path/to/proto"
export GRPC_COMPILER_DIR_GOLANG="/path/to/go_output"
export GRPC_COMPILER_DIR_PHP="/path/to/php_output"
export GRPC_COMPILER_DIR_PYTHON="/path/to/python_output"

cd grpc-compiler/docker
docker-compose up
```

### サンプル

`GRPC_COMPILER_DIR_*` を設定していなければ `examples/proto` の内容がコンパイルされる。

```bash
cd /path/to/mythrnr/grpc-compiler
docker-compose up
```

## ライセンス

__NYSL Version 0.9982__  
See [NYSL.TXT](./NYSL.TXT)

* [NYSL Japanese](http://www.kmonos.net/nysl/)
* [NYSL English](http://www.kmonos.net/nysl/index.en.html)
