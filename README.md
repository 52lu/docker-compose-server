## 1.介绍
通过使用docker-compose,将一些日常开发中经常使用的服务进行编排,集装在docker中，以容器的方式运行服务、管理服务、升级或者降级服务。期望达到一次构建处处使用，再也不用再像之前那么复杂的安装、配置、启动....

## 2.配置修改

修改 .env
```shell script
# 改成自己电脑的IP
DOCKER_HOST_IP=改成自己电脑的IP

# 本地php项目的上级目录
APP_CODE_PATH_HOST=本地php项目的上级目录

# 持久卷位置,放在 ~/docker-volume 下
DATA_PATH_HOST=持久卷位置
```

## 3.服务列表
- consul
- elasticsearch
- env-example
- grafana
- kibana
- logstash
- memcached
- mongo
- mysql
- nginx
- php-fpm
- prometheus
- pulsar
- rabbitmq
- redis
- rocketmq
- workspace
- zipkin

# 4.使用介绍
## 4.1 获取项目
```bash
git clone https://github.com/52lu/docker-compose-server.git
```
## 4.2 安装docker-compose
```bash
# 下载
curl -L https://github.com/docker/compose/releases/download/1.25.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# 赋权
chmod +x /usr/local/bin/docker-compose
```

## 5.启动服务

### 5.1 以启动mongo为示例
```bash
➜  docker_compose_server git:(master) ✗ docker-compose build mongo
Building mongo
Step 1/5 : FROM mongo:latest
 ---> bcef5fd2979d
Step 2/5 : LABEL maintainer="liuqinghui <liuqinghui1991@163.com>"
 ---> Using cache
 ---> fed01971acf4
Step 3/5 : VOLUME /data/db /data/configdb
 ---> Using cache
 ---> 1696bc90fce6
Step 4/5 : CMD ["mongod"]
 ---> Using cache
 ---> cc8baec43bf6
Step 5/5 : EXPOSE 27017
 ---> Using cache
 ---> 6255839f2a97
Successfully built 6255839f2a97
Successfully tagged dockcompose_mongo:latest
➜  docker_compose_server git:(master) ✗ docker-compose up -d mongo
Creating dockcompose_mongo_1 ... done
➜  docker_compose_server git:(master) ✗ docker-compose ps
       Name                     Command             State            Ports
------------------------------------------------------------------------------------
dockcompose_mongo_1   docker-entrypoint.sh mongod   Up      0.0.0.0:27017->27017/tcp
➜  docker_compose_server git:(master) ✗
```
