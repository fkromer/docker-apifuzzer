# docker-apifuzzer

![Docker Pulls](https://img.shields.io/docker/pulls/fkromer/apifuzzer.svg)
![Docker Stars](https://img.shields.io/docker/stars/fkromer/apifuzzer.svg)
![Docker Automated build](https://img.shields.io/docker/automated/fkromer/apifuzzer.svg)
![Docker Build Status](https://img.shields.io/docker/build/fkromer/apifuzzer.svg)
![MicroBadger Size](https://img.shields.io/microbadger/image-size/fkromer/apifuzzer.svg)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/fkromer/apifuzzer.svg)
[![Build Status](https://travis-ci.org/fkromer/docker-apifuzzer.svg?branch=master)](https://travis-ci.org/fkromer/docker-apifuzzer)

APIFuzzer dockerized...

Docker [python:2.7-alpine](https://hub.docker.com/r/library/python/) which
provides [APIFuzzer](https://github.com/KissPeter/APIFuzzer) (`v0.9`).

## Usage

Print help (with `latest` or e.g. `v0.1.0` as `<tag>`).

    docker run --rm -it fkromer/apifuzzer:<tag>

Consider you have the OpenAPI defintion file `api.json` in the `$PWD/api/`.
(Adjust mounting with `-v` option accordingly.)

Fuzz (`<tag>` latest or specific tag, `-s` specifies OpenAPI definition file, `-u` specifies URL.).

    docker run --rm -it -v $PWD/api:/APIFuzzer/srcfileroot fkromer/apifuzzer:<tag> -s /APIFuzzer/srcfileroot/api.json -u <url-to-fuzz>

## Development

Lint the Dockerfile.

    docker run --rm -i lukasmartinelli/hadolint < Dockerfile

Build image.

    docker build -t apifuzzer:latest .
