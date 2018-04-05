# docker-apifuzzer

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
