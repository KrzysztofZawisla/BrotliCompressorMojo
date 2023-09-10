# BrotliCompressorMojo

Simple CLI tool to compress files using Brotli algorithm. This program uses [Mojo](https://www.modular.com/mojo).

## Usage

```sh
brotli-compressor <path-to-input-file> <path-to-output>
```

## How to build

```sh
mojo build ./source/index.mojo -o ./brotli-compressor
```

## How to run without building binary

```sh
mojo run ./source/index.mojo <path-to-input-file> <path-to-output>
```
