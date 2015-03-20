# This is a comment
FROM ubuntu:14.04
MAINTAINER Dan Gaston <daniel.gaston@gmail.com>
RUN sudo apt-get update && apt-get install -y build-essential python git gcc g++ zlib1g-dev wget curl
RUN wget https://raw.github.com/arq5x/gemini/master/gemini/scripts/gemini_install.py
RUN python gemini_install.py --nodata --nosudo ~/gemini ~/gemini
ENV PATH $PATH:/root/gemini/bin/

#ENTRYPOINT ["gemini"]
#CMD ["--help"]
