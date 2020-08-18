docker-compose stop nginx  &&
docker-compose rm -f  nginx  &&
docker-compose build  nginx  &&
docker-compose up -d  nginx
