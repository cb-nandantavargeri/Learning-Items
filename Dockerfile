# A very basic Dockerfile with vim
FROM ubuntu:18.04
LABEL maintainer "Nandan Tavargeri"
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y vim
