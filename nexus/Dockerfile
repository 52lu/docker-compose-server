ARG NEXUS_VERSION=latest
FROM sonatype/nexus3:${NEXUS_VERSION}

LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 设置时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

VOLUME /nexus
EXPOSE 8081

