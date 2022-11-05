ARG ROCKETMQ_VERSION
FROM rocketmqinc/rocketmq:${ROCKETMQ_VERSION}

ARG LOCAL_HOST_IP
RUN echo ${LOCAL_HOST_IP}


## 修改配置内容
USER root
# 覆盖配置文件
COPY broker.conf /opt/rocketmq/conf/broker.conf

# 动态修改IP
RUN sed -i "s/dockerHost/${LOCAL_HOST_IP}/g" /opt/rocketmq/conf/broker.conf

RUN cat /opt/rocketmq/conf/broker.conf
