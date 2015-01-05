FROM ubuntu:14.04

MAINTAINER Pengfei.Shi<shipengfei92@gmail.com>

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && apt-get install -y vim.tiny wget sudo net-tools ca-certificates \
 && rm -rf /var/lib/apt/lists/* 

#20150105
