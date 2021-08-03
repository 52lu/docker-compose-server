ARG PHP_VERSION
FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:workspace-${PHP_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"
###########################################################################
# Crontab
###########################################################################

USER root

COPY ./crontab /etc/cron.d

RUN chmod -R 644 /etc/cron.d
## 设置git
RUN  git config --global user.email "cron@example.com"
RUN  git config --global user.name "定时任务"
