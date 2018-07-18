FROM python:2.7-alpine
LABEL maintainer="Florian Kromer <florian.kromer@mailbox.org>"

RUN apk add --no-cache git
RUN git clone git://github.com/KissPeter/APIFuzzer.git
WORKDIR /APIFuzzer
RUN git checkout tags/v0.9
RUN pip2.7 install -r requirements.txt
CMD python2.7 fuzzer.py
