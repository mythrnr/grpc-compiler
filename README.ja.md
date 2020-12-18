# protobuf-compiler

[English](https://github.com/mythrnr/protobuf-compiler/blob/master/README.md)

gRPC のコードを Docker で手軽に生成するツール。
プロジェクトごとに用意するのが面倒だったのでツール化。

## Status

[![Build Image for Documenter](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20Documenter/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+Documenter%22)

[![Build Image Golang](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20Golang/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+Golang%22)

[![Build Image for PHP](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20PHP/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+PHP%22)

[![Build Image for Python](https://github.com/mythrnr/protobuf-compiler/workflows/Build%20Image%20for%20Python/badge.svg)](https://github.com/mythrnr/protobuf-compiler/actions?query=workflow%3A%22Build+Image+for+Python%22)

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

| Key | Default | Description |
|-|-|-|
| `go` | `1.15` | イメージ内の Go のバージョン |
| `pecl_grpc` | `1.34.0` | PECL の gRPC のバージョン（[PECL::Package::gRPC](https://pecl.php.net/package/gRPC)） |
| `php` | `7.4` | イメージ内の PHP のバージョン |
| `protoc` | `3.14.0` | イメージ内の protoc のバージョン（[protocolbuffers/protobuf](https://github.com/protocolbuffers/protobuf/releases)） |
| `python` | `3.9` | イメージ内の Python のバージョン |
| `service` | - | `docs` , `golang` , `php` , `python` から特定のもののみビルドした場合, `push` 時に指定 |

⚠️ `PHP5` 系はサポート切れの為, `pecl_grpc` のバージョンを `1.33.1` までにしなければビルドできない


```bash
make build go=1.13 protoc=3.12
```

### 特定のイメージのみビルドする

- `push` 実行時に他のイメージがないとエラーになるので, 特定のイメージをビルドしたら `push` 時にも指定する

```bash
make golang go=1.14

# Good
make push service=golang

# Not work
make push
```

## ライセンス

__NYSL Version 0.9982__
[NYSL.TXT](https://github.com/mythrnr/protobuf-compiler/blob/master/NYSL.TXT) を参照

- [NYSL Japanese](http://www.kmonos.net/nysl/)
- [NYSL English](http://www.kmonos.net/nysl/index.en.html)
