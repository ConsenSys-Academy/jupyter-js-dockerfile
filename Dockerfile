FROM jupyter/minimal-notebook:latest

MAINTAINER Josh Crites <critesjosh@gmail.com>

RUN apt-get install -yq --no-install-recommends nodejs-legacy npm libzmq3-dev && \
npm install -g ijavascript && \
ijs --ijs-install=global
