ARG PHP_VERSION=${PHP_VERSION}
FROM php:${PHP_VERSION}-alpine
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

ARG CHANGE_SOURCE=false
RUN if [ ${CHANGE_SOURCE} = true ]; then \
    # Change application source from dl-cdn.alpinelinux.org to aliyun source
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories \
;fi

RUN apk --update add wget \
  curl \
  git \
  build-base \
  libmemcached-dev \
  libmcrypt-dev \
  libxml2-dev \
  pcre-dev \
  zlib-dev \
  autoconf \
  cyrus-sasl-dev \
  libgsasl-dev \
  supervisor



###########################################################################
# Swoole EXTENSION
###########################################################################
ARG INSTALL_SWOOLE=true
RUN if [ ${INSTALL_SWOOLE} = true ]; then \
    # Install Php Swoole Extension
    if [ $(php -r "echo PHP_MAJOR_VERSION;") = "5" ]; then \
      pecl -q install swoole-2.0.10; \
    else \
      if [ $(php -r "echo PHP_MINOR_VERSION;") = "0" ]; then \
        pecl install swoole-2.2.0; \
      else \
        pecl install swoole; \
      fi \
    fi \
    && docker-php-ext-enable swoole \
;fi



###########################################################################
# 安装PHP扩展
###########################################################################

#RUN docker-php-ext-install mysqli mbstring pdo pdo_mysql tokenizer xml pcntl
RUN docker-php-ext-install  pcntl
#RUN pecl channel-update pecl.php.net && pecl install memcached mcrypt-1.0.1 mongodb && docker-php-ext-enable memcached mongodb

## php版本
RUN php -v | head -n 1 | grep -q "PHP ${PHP_VERSION}."

###########################################################################
# apt源清理
###########################################################################

USER root
# Clean up
RUN rm /var/cache/apk/* \
    && mkdir -p /var/www

# 工作目录
WORKDIR /var/www/easyswoole

# 暴露端口范围
ARG EASYSWOOLE_PORT_LIST
EXPOSE ${EASYSWOOLE_PORT_LIST}
