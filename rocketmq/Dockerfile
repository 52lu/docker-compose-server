ARG ROCKETMQ_VERSION
FROM rocketmqinc/rocketmq:${ROCKETMQ_VERSION}

# 设置时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["sh", "mqnamesrv"]