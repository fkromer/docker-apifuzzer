#FROM rcarmo/alpine-python:2.7
FROM python:2.7-alpine
MAINTAINER Florian Kromer <florian.kromer@mailbox.org>

RUN apk add --no-cache git
RUN git clone git://github.com/KissPeter/APIFuzzer.git
RUN pip2.7 install -r APIFuzzer/requirements.txt
WORKDIR APIFuzzer
CMD python2.7 fuzzer.py
