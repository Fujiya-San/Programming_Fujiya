FROM ubuntu:18.04

RUN \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
    apt-utils \
    git \
    g++ \
    make \
    cmake \
    curl \
    vim

RUN curl -S -o /tmp/openjdk-16.0.1_linux-aarch64_bin.tar.gz https://download.java.net/java/GA/jdk16.0.1/7147401fd7354114ac51ef3e1328291f/9/GPL/openjdk-16.0.1_linux-aarch64_bin.tar.gz -# && \
    tar -C /usr/local/lib -xvf /tmp/openjdk-16.0.1_linux-aarch64_bin.tar.gz && \
    rm /tmp/openjdk-16.0.1_linux-aarch64_bin.tar.gz
    
RUN curl -S -o /tmp/apache-ant-1.10.10-bin.tar.gz https://ftp.kddi-research.jp/infosystems/apache//ant/binaries/apache-ant-1.10.10-bin.tar.gz -# && \
    tar -C /usr/local/ -xvf /tmp/apache-ant-1.10.10-bin.tar.gz && \
    rm /tmp/apache-ant-1.10.10-bin.tar.gz && \
    rm -f /usr/local/lib/ant && \
    ln -s /usr/local/apache-ant-1.10.10 /usr/local/lib/ant