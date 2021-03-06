FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y

# Install C++
RUN apt-get install -y --no-install-recommends gcc g++

# Install Python3 & Pypy3
RUN apt-get install -y --no-install-recommends python3-dev python3-pip build-essential libseccomp-dev pypy3

# Install DMOJ
RUN pip3 install setuptools
RUN pip3 install dmoj
RUN useradd -m judge
RUN mkdir -p /judge /problems && cd /judge && \
    HOME=~judge . ~judge/.profile
COPY judge/judge.yml /judge.yml 

# Install Java 11
RUN apt-get install -y --no-install-recommends default-jdk-headless default-jre-headless

# Install Kotlin
RUN apt-get install -y --no-install-recommends wget
RUN wget https://github.com/JetBrains/kotlin/releases/download/v1.5.21/kotlin-compiler-1.5.21.zip
RUN apt-get install -y --no-install-recommends unzip
RUN unzip kotlin-compiler-1.5.21.zip
ENV PATH="/kotlinc/bin:${PATH}"
RUN rm kotlin-compiler-1.5.21.zip

# Install NFS and setup supervisor
RUN apt-get install -y nfs-common
COPY judge/entry.sh /entry.sh

# Uncomment to check runtimes
# RUN runuser -u judge -w PATH -- dmoj-autoconf

ENTRYPOINT bash /entry.sh