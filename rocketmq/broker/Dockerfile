ARG ROCKETMQ_VERSION
FROM rocketmqinc/rocketmq:${ROCKETMQ_VERSION}


ARG LOCAL_HOST_IP
# 修改配置内容
RUN sed -i 's/DOCKER_HOST_IP/${LOCAL_HOST_IP}/g' config/broker.conf
COPY config/broker.conf  /etc/rocketmq/broker.conf