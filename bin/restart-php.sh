docker-compose stop nginx  php-fpm workspace  &&
docker-compose rm -f  nginx  php-fpm workspace  &&
docker-compose build nginx php-fpm workspace  &&
docker-compose up -d nginx &&
docker-compose ps
