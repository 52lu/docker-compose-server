ARG PHP_VERSION
FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:php-fpm-${PHP_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 配置同步
COPY  php-fpm/laravel.ini /usr/local/etc/php/conf.d
COPY  php-fpm/opcache.ini /usr/local/etc/php/conf.d
COPY  php-fpm/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY  php-fpm/xlaravel.pool.conf /usr/local/etc/php-fpm.d/

###########################################################################
# 安装 Xhprof:

ARG INSTALL_XHPROF=false
RUN if [ ${INSTALL_XHPROF} = true ]; then \
    # Install the php xhprof extension
    if [ $(php -r "echo PHP_MAJOR_VERSION;") = 7 ]; then \
      curl -L -o /tmp/xhprof.tar.gz "https://github.com/tideways/php-xhprof-extension/archive/v4.1.7.tar.gz"; \
    else \
      curl -L -o /tmp/xhprof.tar.gz "https://codeload.github.com/phacility/xhprof/tar.gz/master"; \
    fi \
    && mkdir -p xhprof \
    && tar -C xhprof -zxvf /tmp/xhprof.tar.gz --strip 1 \
    && ( \
        cd xhprof \
        && phpize \
        && ./configure \
        && make \
        && make install \
    ) \
    && rm -r xhprof \
    && rm /tmp/xhprof.tar.gz \
;fi

COPY php-fpm/xhprof.ini /usr/local/etc/php/conf.d

RUN if [ ${INSTALL_XHPROF} = false ]; then \
    rm /usr/local/etc/php/conf.d/xhprof.ini \
;fi
###########################################################################

WORKDIR /var/www
