ARG ELASTICSEARCH_VERSION=latest

FROM elasticsearch:${ELASTICSEARCH_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 设置时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# copy配置文件
COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# 安装中文分词IK
ARG IK_VERSION=7.5.0
ENV IK_VERSION ${IK_VERSION}
RUN sh -c "/bin/echo -e 'y' | /usr/share/elasticsearch/bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${IK_VERSION}/elasticsearch-analysis-ik-${IK_VERSION}.zip"


EXPOSE 9200 9300
