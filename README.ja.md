# grpc-compiler

[English](./README.md)

gRPCのコードをDockerで手軽に生成するツール。  
プロジェクトごとに用意するのが面倒だったのでツール化。

## 使い方

### プロトコルファイルを指定してコンパイル

```bash
export GRPC_COMPILER_DIR_PROTO="/path/to/proto"
export GRPC_COMPILER_DIR_GOLANG="/path/to/go_output"
export GRPC_COMPILER_DIR_PHP="/path/to/php_output"
export GRPC_COMPILER_DIR_PYTHON="/path/to/python_output"

cd grpc-compiler/docker
docker-compose up
```

### サンプル

`GRPC_COMPILER_DIR_*` を設定していなければ `example/proto` の内容がコンパイルされる。

```bash
cd grpc-compiler/docker
docker-compose up
```

## ライセンス

__NYSL Version 0.9982__  
See [NYSL.TXT](./NYSL.TXT)

* [NYSL Japanese](http://www.kmonos.net/nysl/)
* [NYSL English](http://www.kmonos.net/nysl/index.en.html)
