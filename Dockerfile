# vim:set ft=dockerfile:
FROM alpine

MAINTAINER Andrius Kairiukstis <andrius@kairiukstis.com>

RUN apk add --update sipp \
&&  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
