# Borrowed from https://github.com/blaxterlab/ncbi-blast-docker/blob/master/Dockerfile
FROM debian:jessie

RUN apt-get update && apt-get install -y \
    parallel \
    wget

RUN wget ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/2.7.1/ncbi-blast-2.7.1+-x64-linux.tar.gz && \
    tar zxf ncbi-blast-2.7.1+-x64-linux.tar.gz

ENV PATH=".:/ncbi-blast-2.7.1+/bin:${PATH}"

RUN mkdir /query && mkdir /db && mkdir /out
