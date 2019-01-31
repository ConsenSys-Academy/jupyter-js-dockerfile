FROM jupyter/minimal-notebook:latest

MAINTAINER Josh Crites <critesjosh@gmail.com>

RUN npm install -g ijavascript --unsafe-perm
RUN ijsinstall

USER $NB_UID

# install ganache on image
RUN npm install -g ganache-cli

# clone a github repo with example web3.js notebooks
RUN git clone https://github.com/critesjosh/web3js-jupyternotebook.git
RUN cd web3js-jupyternotebook && npm install
