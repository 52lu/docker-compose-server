FROM python:3.6

LABEL Author="Pad0y<github.com/Pad0y>"

ENV LANG C.UTF-8 LC_ALL=C.UTF-8

# 时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


COPY ./init.sh /data/init.sh
ADD ./chineseocr_lite /data/chineseocr_lite

WORKDIR /data/chineseocr_lite/


