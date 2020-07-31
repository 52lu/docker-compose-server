ARG PHP_VERSION
#FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:php-fpm-${PHP_VERSION}
#FROM 172.30.0.51:5000/php-dev-env:php-fpm-${PHP_VERSION}
#FROM laradock/php-fpm:2.6.2-7.2
FROM 172.30.0.51:5000/php-dev-env:php7.2-fpm
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"


COPY  php-fpm/laravel.ini /usr/local/etc/php/conf.d
COPY  php-fpm/opcache.ini /usr/local/etc/php/conf.d
COPY  php-fpm/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY  php-fpm/xlaravel.pool.conf /usr/local/etc/php-fpm.d/

WORKDIR /var/www
