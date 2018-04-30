FROM ruby:2.4.4-alpine3.7
MAINTAINER Lucro Engineering <dev@lucro.com>

ENV DEV_PACKAGES="tzdata nodejs postgresql-client curl"

RUN apk --update --upgrade add $DEV_PACKAGES && \
    rm /var/cache/apk/*

CMD [ "/bin/sh" ]
