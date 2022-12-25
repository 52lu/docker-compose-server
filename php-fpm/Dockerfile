ARG PHP_VERSION
FROM registry.cn-beijing.aliyuncs.com/liuqinghui/php-dev-env:php-fpm-${PHP_VERSION}
LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"

# 时区
ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# openvpn
#COPY ./php-fpm/openvpn /var/openvpn
#ENTRYPOINT ['/bin/bash','/var/openvpn/start_openvpn.sh']

WORKDIR /var/www

