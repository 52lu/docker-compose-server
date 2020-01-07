ARG REGISTRY_VERSION=latest
FROM registry:${REGISTRY_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 设置时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


VOLUME /var/lib/registry

COPY config.yml /etc/docker/registry/config.yml


EXPOSE 5000
