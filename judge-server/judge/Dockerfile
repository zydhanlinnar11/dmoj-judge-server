FROM python:3.9.6-slim-buster

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y python3-dev python3-pip build-essential libseccomp-dev

# Install C++
RUN apt-get install -y --no-install-recommends \
        curl file gcc g++ libseccomp-dev bzip2 gzip \
        libxtst6 tini

# Install Java 11
RUN apt-get install -y --no-install-recommends default-jdk-headless openjdk-11-jre-headless default-jre

# Install Pypy3 and Python3
RUN apt-get install -y --no-install-recommends pypy3 python3-setuptools python3-wheel cython3

# Install Kotlin
RUN apt install snapd && \
    snap install core && \
    snap install kotlin --classic

RUN useradd -m judge

# Install DMOJ
RUN pip3 install dmoj
RUN git clone --recursive https://github.com/DMOJ/judge.git
RUN mkdir /judge /problems && cd /judge && \
    HOME=~judge . ~judge/.profile && \
    runuser -u judge -w PATH -- dmoj-autoconf -V > /judge-runtime-paths.yml && \
    echo '  crt_x86_in_lib32: true' >> /judge-runtime-paths.yml

ENTRYPOINT ["/judge/.docker/entry"]