ARG PHP_FPM_TAG
ARG PHP_VERSION
ARG PHP_FPM_TAG_VERSION
FROM liuqinghui/php${PHP_VERSION}-fpm-${PHP_FPM_TAG}:${PHP_FPM_TAG_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

COPY  php-fpm/laravel.ini /usr/local/etc/php/conf.d
COPY  php-fpm/opcache.ini /usr/local/etc/php/conf.d
COPY  php-fpm/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY  php-fpm/xlaravel.pool.conf /usr/local/etc/php-fpm.d/