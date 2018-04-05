# docker-apifuzzer

![Docker Pulls](https://img.shields.io/docker/pulls/fkromer/apifuzzer.svg)
![Docker Stars](https://img.shields.io/docker/stars/fkromer/apifuzzer.svg)
![Docker Automated build](https://img.shields.io/docker/automated/fkromer/apifuzzer.svg)
![Docker Build Status](https://img.shields.io/docker/build/fkromer/apifuzzer.svg)
![MicroBadger Size](https://img.shields.io/microbadger/image-size/fkromer/apifuzzer.svg)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/fkromer/apifuzzer.svg)

APIFuzzer dockerized...

Docker [alpine-python:2.7 image](https://hub.docker.com/r/rcarmo/alpine-python/)
which provides [APIFuzzer](https://github.com/KissPeter/APIFuzzer) (`master` branch).

## Usage

Build image.

    docker build -t apifuzzer:latest .

Print help.

    docker run --rm -it apifuzzer:latest

Consider you have the OpenAPI defintion file `api.json` in the `$PWD/api/`.
(Adjust mounting with `-v` option accordingly.)

Fuzz (`-s` specifies OpenAPI definition file, `-u` specifies URL.).

    docker run --rm -it -v $PWD/api:/APIFuzzer/srcfileroot apifuzzer:latest -s /APIFuzzer/srcfileroot/api.json -u <url-to-fuzz>
