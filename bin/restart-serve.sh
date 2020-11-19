docker-compose stop nginx php-fpm workspace redis  &&
docker-compose rm -f nginx php-fpm workspace redis &&
docker-compose build  nginx  php-fpm workspace redis &&
docker-compose up -d  nginx redis
