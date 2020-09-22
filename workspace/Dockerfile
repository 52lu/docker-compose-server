ARG PHP_VERSION
FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:workspace-${PHP_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

ARG PHP_VERSION
ARG WORKSPACE_PORT_LIST
EXPOSE ${WORKSPACE_PORT_LIST}



###########################################################################
# Crontab
###########################################################################

USER root

COPY ./crontab /etc/cron.d

RUN chmod -R 644 /etc/cron.d
## 设置git
RUN  git config --global user.email "cron@example.com"
RUN  git config --global user.name "定时任务"


###########################################################################
# 修改php-cli配置
###########################################################################
USER root
ARG HYPERF_ENV=false
COPY ./php-cli.ini  /tmp/php-cli.ini
RUN if [ ${HYPERF_ENV} = true ]; then\
    cp -rf /tmp/php-cli.ini /etc/php/${PHP_VERSION}/cli/conf.d/php-cli.ini \
    && rm -rf /tmp/php-cli.ini \
;fi



