ARG KIBANA_VERSION=latest
FROM kibana:${KIBANA_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 设置时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 5601
