# A very basic Dockerfile with vim
FROM ubuntu:18.04

LABEL maintainer "Nandan Tavargeri"

ENV DOC_ROOT /var/www/mysite-dev

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y \
nginx \
php7.0 \
&& rm -rf /var/lib/apt/lists/*

ADD code/sites/mysite ${DOC_ROOT}
