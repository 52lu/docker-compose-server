ARG REDIS_VERSION=latest
FROM redis:${REDIS_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 设置时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 创建目录
RUN mkdir -p  /var/log/redis /var/run/redis  /var/lib/redis
RUN chmod 777 /var/log/redis /var/run/redis  /var/lib/redis

# 配置文件
COPY ./config/redis.conf /usr/local/etc/redis/redis.conf

VOLUME /data
EXPOSE 6379
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
#CMD ["redis-server"]
