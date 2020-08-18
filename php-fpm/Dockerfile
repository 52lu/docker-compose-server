ARG PHP_VERSION
FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:php-fpm-${PHP_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

COPY  php-fpm/laravel.ini /usr/local/etc/php/conf.d
COPY  php-fpm/opcache.ini /usr/local/etc/php/conf.d
COPY  php-fpm/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY  php-fpm/xlaravel.pool.conf /usr/local/etc/php-fpm.d/



WORKDIR /var/www
