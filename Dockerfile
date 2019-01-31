FROM alpine:latest

LABEL maintainer "Fabian"

EXPOSE 8080

RUN mkdir /tmp/upload && \
  chmod 770 /tmp/upload

ADD entrypoint.sh /app

RUN chmod 770 /app/entrypoint.sh

WORKDIR /app

RUN curl -kL "https://github.com/fschwinn/openshift/blob/master/test.sh" -o test.sh && \
  chmod 777 /app/test.sh
