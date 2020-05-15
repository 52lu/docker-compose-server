# docker-compose-server
通过使用docker-compose，来编排一些日常中经常使用的服务;目的是达到快速安装、快速升级；


# 目录结构
```
├── README.md
├── consul
├── docker-compose.yml
├── elasticsearch
├── env-example
├── kibana
├── logstash
├── mysql
├── nexus
├── redis
└── volumes(需手动创建)
```

# 服务列表
``` 
─ consul
─ elasticsearch
─ env-example
─ kibana
─ logstash
─ mysql
─ nexus
─ redis
─ volumes
```


# 使用介绍
## 1.获取项目
```bash
git clone https://github.com/52lu/docker-compose-server.git
```
## 2.安装docker-compose
```bash
# 下载
curl -L https://github.com/docker/compose/releases/download/1.25.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# 赋权
chmod +x /usr/local/bin/docker-compose
```

## 3.启动服务

### 3.1 以启动mongo为示例
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

