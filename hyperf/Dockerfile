ARG HYPERF_ALPINE_VERSION
ARG HYPERF_PHP_VERSION

FROM hyperf/hyperf:${HYPERF_PHP_VERSION}-alpine-v${HYPERF_ALPINE_VERSION}-swoole

LABEL maintainer="Hyperf Developers <group@hyperf.io>" version="1.0" license="MIT"

ARG HYPERF_COMPOSER_VERSION
##
ENV HYPERF_COMPOSER_VERSION=${HYPERF_COMPOSER_VERSION:-"2.0.2"} \
    #  install and remove building packages
    PHPIZE_DEPS="autoconf dpkg-dev dpkg file g++ gcc libc-dev make php7-dev php7-pear pkgconf re2c pcre-dev pcre2-dev zlib-dev libtool automake"

# update
RUN set -ex \
    # 把 apk 的默认源改为aliyun镜像
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    # 更新包列表
    && apk update \
    && apk add --no-cache libstdc++ openssl git bash \
    && apk add --no-cache --virtual .build-deps $PHPIZE_DEPS libaio-dev openssl-dev curl-dev

# xlswriter扩展
RUN pecl install -o -f xlswriter \
    && echo "extension=xlswriter.so" > /etc/php7/conf.d/50_xlswriter.ini


# install composer
RUN wget -nv -O /usr/local/bin/composer https://github.com/composer/composer/releases/download/${HYPERF_COMPOSER_VERSION}/composer.phar \
    && chmod u+x /usr/local/bin/composer

#### 安装sdebug 扩展
#RUN  apk add php-devel  \
#    && cd /tmp \
#    # from mirrors
#    && git clone https://gitee.com/vyi/sdebug sdebug \
#    # 进入克隆的目录
#    && cd sdebug \
#    # 切换到 sdebug_2_9 分支，这里一定到切换分支，因为 master 分支是 Xdebug 的源码
#    && git checkout sdebug_2_9 \
#    && phpize \
#    && ./configure --enable-xdebug \
#    && make \
#    && make install \
#    # 这里 安装完成后执行的值 xdebug
#    && docker-php-ext-enable xdebug \
#    && php -m \
#    # 这里检查也是哟,注意是 sdebug
#    && php --ri sdebug \

# 复制配置文件
COPY ./common.ini /etc/php7/conf.d/50-common.ini
#COPY ./opcache.ini /etc/php7/conf.d/50_opcache.ini
COPY ./sdebug.ini /etc/php7/conf.d/50_sdebug.ini
COPY ./swoole.ini /etc/php7/conf.d/50_swoole.ini
#COPY ./xdebug.so /usr/lib/php7/modules/xdebug.so

WORKDIR /var/www

EXPOSE 9510-9520