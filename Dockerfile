FROM python:3.6

MAINTAINER Gao Jin <1019855680@qq.com>
WORKDIR /root/
# COPY sources.list  /etc/apt/
COPY pip.conf  /root/.pip/
RUN apt-get install debian-keyring debian-archive-keyring \
&& apt-key update \
&& apt-get update --fix-missing \
&& apt-get install -y vim \
&& apt-get install -y tzdata \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "Asia/Shanghai" > /etc/timezone \
&& dpkg-reconfigure -f noninteractive tzdata \
&& apt-get install -y language-pack-en \
&& rm -rf /var/lib/apt/lists/*
ENV LANG=en_US.UTF-8

