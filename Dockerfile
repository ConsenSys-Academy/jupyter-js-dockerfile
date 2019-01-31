FROM jupyter/minimal-notebook:latest

MAINTAINER Josh Crites <critesjosh@gmail.com>

USER root

RUN sudo apt-get install ipython ipython-notebook
RUN npm install -g ijavascript --unsafe-perm
RUN ijsinstall

USER $NB_UID

RUN npm install -g ganache-cli

RUN git clone https://github.com/critesjosh/web3js-jupyternotebook.git
RUN cd web3js-jupyternotebook
RUN npm install
