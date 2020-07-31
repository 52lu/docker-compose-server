ARG PHP_VERSION
#FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:php-fpm-${PHP_VERSION}
FROM 172.30.0.51:5000/php-dev-env:php${PHP_VERSION}-fpm
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 配置同步
COPY  php-fpm/laravel.ini /usr/local/etc/php/conf.d
COPY  php-fpm/opcache.ini /usr/local/etc/php/conf.d
COPY  php-fpm/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY  php-fpm/xlaravel.pool.conf /usr/local/etc/php-fpm.d/

WORKDIR /var/www
