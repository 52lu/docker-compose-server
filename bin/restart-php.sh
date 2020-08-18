docker-compose stop php-fpm   &&
docker-compose rm -f php-fpm  &&
docker-compose build  php-fpm  &&
docker-compose up -d php-fpm &&
docker-compose ps
