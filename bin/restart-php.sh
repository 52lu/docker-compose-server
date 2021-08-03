docker-compose stop php-fpm  workspace &&
docker-compose rm -f php-fpm  workspace &&
docker-compose build  php-fpm workspace  &&
docker-compose up -d php-fpm workspace &&
docker-compose ps
