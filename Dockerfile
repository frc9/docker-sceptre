FROM python:3.7.0-alpine3.7

ARG VERSION

RUN mkdir -p /opt/sceptre

WORKDIR /opt/sceptre

RUN pip install --upgrade pip
RUN pip install sceptre==$VERSION

RUN mkdir -p /data
WORKDIR /data

RUN mkdir -p /root/.aws
VOLUME /root/.aws

CMD ["sceptre"]
