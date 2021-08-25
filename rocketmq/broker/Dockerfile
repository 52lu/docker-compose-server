ARG ROCKETMQ_VERSION
FROM rocketmqinc/rocketmq:${ROCKETMQ_VERSION}

ARG LOCAL_HOST_IP
RUN echo ${LOCAL_HOST_IP}

## 修改配置内容
USER root
# 覆盖配置文件
COPY broker.conf /opt/rocketmq-${ROCKETMQ_VERSION}/conf/broker.conf

# 动态修改IP
RUN sed -i "s/dockerHost/${LOCAL_HOST_IP}/g" /opt/rocketmq-${ROCKETMQ_VERSION}/conf/broker.conf
