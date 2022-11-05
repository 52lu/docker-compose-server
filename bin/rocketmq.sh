docker-compose stop rocketmq rocketmq-broker rocketmq-console   &&
docker-compose rm -f rocketmq rocketmq-broker rocketmq-console  &&
docker-compose build  rocketmq rocketmq-broker rocketmq-console   &&
docker-compose up -d  rocketmq
