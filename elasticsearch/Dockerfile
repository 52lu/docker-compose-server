ARG ELASTICSEARCH_VERSION=latest
FROM elasticsearch:${ELASTICSEARCH_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 设置时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

EXPOSE 9200 9300
