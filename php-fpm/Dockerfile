ARG PHP_VERSION
FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:php-fpm-${PHP_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

## 安装 Yaf
#RUN pecl install yaf && docker-php-ext-enable yaf;



# 配置同步
#COPY  ./laravel.ini /usr/local/etc/php/conf.d
#COPY  ./opcache.ini /usr/local/etc/php/conf.d
#COPY  ./xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
#COPY  ./xlaravel.pool.conf /usr/local/etc/php-fpm.d/

WORKDIR /var/www
