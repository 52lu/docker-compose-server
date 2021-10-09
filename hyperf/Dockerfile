ARG ALPINE_VERSION

FROM hyperf/hyperf:7.4-alpine-v${ALPINE_VERSION}-base

LABEL maintainer="Hyperf Developers <group@hyperf.io>" version="1.0" license="MIT"

ARG SWOOLE_VERSION
ARG COMPOSER_VERSION
ARG PORT_LIST

##
# ---------- env settings ----------
##
ENV SWOOLE_VERSION=${SWOOLE_VERSION:-"v4.5.7"} \
    COMPOSER_VERSION=${COMPOSER_VERSION:-"2.0.2"} \
    #  install and remove building packages
    PHPIZE_DEPS="autoconf dpkg-dev dpkg file g++ gcc libc-dev make php7-dev php7-pear pkgconf re2c pcre-dev pcre2-dev zlib-dev libtool automake"

# update
RUN set -ex \
    && apk update \
    # for swoole extension libaio linux-headers
    && apk add --no-cache libstdc++ openssl git bash \
    && apk add --no-cache --virtual .build-deps $PHPIZE_DEPS libaio-dev openssl-dev curl-dev

# SWOOLE
RUN  pecl install -o -f swoole-${SWOOLE_VERSION} \
         && echo "memory_limit=1G" > /etc/php7/conf.d/00_default.ini \
         && echo "opcache.enable_cli = 'On'" >> /etc/php7/conf.d/00_opcache.ini \
         && echo "extension=swoole.so" > /etc/php7/conf.d/50_swoole.ini \
         && echo "swoole.use_shortname = 'Off'" >> /etc/php7/conf.d/50_swoole.ini

# php extension:xlswriter
RUN pecl install -o -f xlswriter \
    && echo "extension=xlswriter.so" > /etc/php7/conf.d/50_xlswriter.ini


# install composer
RUN wget -nv -O /usr/local/bin/composer https://github.com/composer/composer/releases/download/${COMPOSER_VERSION}/composer.phar \
    && chmod u+x /usr/local/bin/composer \
    # php info
    && php -v \
    && php -m \
    && php --ri swoole \
    && composer \
    # ---------- clear works ----------
    && apk del .build-deps \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/local/bin/php* \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"

WORKDIR /var/www

EXPOSE 9510-9520