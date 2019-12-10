ARG REGISTRY_VERSION=latest

FROM registry:${REGISTRY_VERSION}

LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"
VOLUME /var/lib/registry

COPY config.yml /etc/docker/registry/config.yml


EXPOSE 5000
