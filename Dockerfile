FROM python:3.6

MAINTAINER Gao Jin <1019855680@qq.com>
WORKDIR /root/
# COPY sources.list  /etc/apt/
COPY pip.conf  /root/.pip/
COPY requirements.txt requirements.txt
RUN apt-get update \
&& apt-get install -y vim \
&& apt-get install -y python3-lxml \
&& apt-get install -y python3-bsddb3 \
&& pip install -r requirements.txt