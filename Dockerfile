FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y wget bzip2 \
                       libgtk2.0-0

# Anaconda3-4.2.0 install
RUN wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh && \
    bash Anaconda3-4.2.0-Linux-x86_64.sh -b && \
    rm -f Anaconda3-4.2.0-Linux-x86_64.sh
ENV PATH $PATH:/root/anaconda3/bin


# Mecab
RUN apt-get install mecab libmecab-dev mecab-ipadic && \
    apt-get install python-mecab

# OpenCV
RUN conda install -c https://conda.binstar.org/menpo opencv3 
