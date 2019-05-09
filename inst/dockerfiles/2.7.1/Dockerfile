# Borrowed from https://github.com/blaxterlab/ncbi-blast-docker/blob/master/Dockerfile
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    parallel \
    wget \
    libidn11

RUN wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.7.1/ncbi-blast-2.7.1+-x64-linux.tar.gz && \
    tar zxf ncbi-blast-2.7.1+-x64-linux.tar.gz && \
    rm ncbi-blast-2.7.1+-x64-linux.tar.gz

ENV PATH=".:/ncbi-blast-2.7.1+/bin:${PATH}"

RUN mkdir /working_dir

WORKDIR /working_dir
