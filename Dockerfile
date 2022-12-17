FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y git \
&& apt install -y slim \
&& apt install -y ubuntu-desktop \
&& apt -y install novnc python3-websockify python3-numpy \
&& apt-get clean all && \
apt-get purge && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
