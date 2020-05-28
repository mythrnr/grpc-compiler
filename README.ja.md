# protobuf-compiler

[English](https://github.com/mythrnr/protobuf-compiler/blob/master/README.md)

gRPCのコードをDockerで手軽に生成するツール。
プロジェクトごとに用意するのが面倒だったのでツール化。

## Status

[![Build Image for Documenter](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20Documenter/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+Documenter%22)

[![Build Image Golang](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20Golang/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+Golang%22)

[![Build Image for PHP](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20PHP/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+PHP%22)

[![Build Image for Python](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20Python/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+Python%22)

## 使い方

- 詳細は [Examples](https://github.com/mythrnr/protobuf-compiler/tree/master/examples) を参照
- [docker-compose.yml](https://github.com/mythrnr/protobuf-compiler/blob/master/examples/docker-compose.yml) に
`.proto` ファイルのディレクトリと出力先を指定してコンパイル

```bash
docker-compose up
```

## Protocol Buffersのバージョンを指定してイメージをビルドする

```bash
PROTOC_VERSION=3.11.2 PECL_GRPC_VERSION=1.26.0 docker-compose build --parallel
```

## ライセンス

__NYSL Version 0.9982__
[NYSL.TXT](https://github.com/mythrnr/protobuf-compiler/blob/master/NYSL.TXT) を参照

- [NYSL Japanese](http://www.kmonos.net/nysl/)
- [NYSL English](http://www.kmonos.net/nysl/index.en.html)
