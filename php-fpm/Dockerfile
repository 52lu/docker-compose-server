ARG PHP_VERSION
FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:php-fpm-${PHP_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 配置同步
COPY  ./laravel.ini /usr/local/etc/php/conf.d
COPY  ./opcache.ini /usr/local/etc/php/conf.d
COPY  ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

WORKDIR /var/www
