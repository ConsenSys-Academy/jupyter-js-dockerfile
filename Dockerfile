FROM jupyter/minimal-notebook:latest

MAINTAINER Josh Crites <critesjosh@gmail.com>

USER root

RUN apt-get update
RUN apt-get install -y curl gnupg2
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get install -y nodejs libzmq3-dev build-essential && npm install -g ijavascript
RUN ijs --ijs-install-kernel

USER $NB_UID
