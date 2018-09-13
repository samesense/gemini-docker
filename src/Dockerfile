# This is a comment
FROM ubuntu:14.04
MAINTAINER Dan Gaston <daniel.gaston@gmail.com>
RUN sudo apt-get update && apt-get install -y build-essential python git gcc g++ zlib1g-dev wget curl

RUN mkdir /gdata/
RUN mkdir -p /gemini/bin/
RUN wget https://github.com/arq5x/gemini/raw/master/gemini/scripts/gemini_install.py
RUN python gemini_install.py /gemini/ /gdata/

ENV PATH $PATH:/gemini/bin/
