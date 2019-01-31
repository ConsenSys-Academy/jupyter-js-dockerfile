FROM jupyter/minimal-notebook:latest

MAINTAINER Josh Crites <critesjosh@gmail.com>

USER root

RUN apt-get update
RUN npm install -g ijavascript --unsafe-perm
RUN ijs --ijs-install-kernel

USER $NB_UID
