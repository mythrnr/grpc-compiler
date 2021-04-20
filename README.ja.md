# protobuf-compiler

[English](https://github.com/mythrnr/protobuf-compiler/blob/master/README.md)

gRPC のコードを Docker で手軽に生成するツール。
プロジェクトごとに用意するのが面倒だったのでツール化。

⚠️ 現在, PHP はビルド不可.  
参考 Issue: <https://github.com/grpc/grpc/issues/25725>

## Status

[![Build Image for Documenter](https://github.com/mythrnr/protobuf-compiler/actions/workflows/docs.yml/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions/workflows/docs.yml)
[![Build Image for Golang](https://github.com/mythrnr/protobuf-compiler/actions/workflows/golang.yml/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions/workflows/golang.yml)
[![Build Image for PHP](https://github.com/mythrnr/protobuf-compiler/actions/workflows/php.yml/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions/workflows/php.yml)
[![Build Image for Python](https://github.com/mythrnr/protobuf-compiler/actions/workflows/python.yml/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions/workflows/python.yml)

## 使い方

- 詳細は [Examples](https://github.com/mythrnr/protobuf-compiler/tree/master/examples) を参照
- [docker-compose.yml](https://github.com/mythrnr/protobuf-compiler/blob/master/examples/docker-compose.yml) に
  `.proto` ファイルのディレクトリと出力先を指定して下記を実行

```bash
docker-compose up
```

## イメージのビルド

### すべてビルドしてプッシュする

```bash
make build

make push
```

### Makefileのオプションについて

| Key         | Default  | Description                                                                                            |
| ----------- | -------- | ------------------------------------------------------------------------------------------------------ |
| `go`        | `1.16`   | イメージ内の Go のバージョン                                                                                       |
| `pecl_grpc` | `1.37.0` | PECL の gRPC のバージョン（[PECL::Package::gRPC](https://pecl.php.net/package/gRPC)）                           |
| `php`       | `7.4`    | イメージ内の PHP のバージョン                                                                                      |
| `protoc`    | `3.15.8` | イメージ内の protoc のバージョン（[protocolbuffers/protobuf](https://github.com/protocolbuffers/protobuf/releases)） |
| `python`    | `3.9`    | イメージ内の Python のバージョン                                                                                   |
| `service`   | -        | `docs` , `golang` , `php` , `python` から特定のもののみビルドした場合, `push` 時に指定                                     |

⚠️ `PHP5` 系はサポート切れの為, `pecl_grpc` のバージョンを `1.33.1` までにしなければビルドできない

```bash
make build go=1.13 protoc=3.12
```

### 特定のイメージのみビルドする

- `push` 実行時に他のイメージがないとエラーになるので,  
  特定のイメージをビルドしたら `push` 時にも指定する

```bash
make golang go=1.16

# Good
make push service=golang go=1.16

# Not work
make push
```

## ライセンス

**NYSL Version 0.9982**  
[LICENCE](https://github.com/mythrnr/protobuf-compiler/blob/master/LICENCE) を参照

- [NYSL Japanese](http://www.kmonos.net/nysl/)
- [NYSL English](http://www.kmonos.net/nysl/index.en.html)
