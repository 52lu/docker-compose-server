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
## 获取项目
```bash
git clone https://github.com/52lu/docker-compose-server.git
```
## 安装docker-compose


## 启动服务

```bash
docker-compose up -d xxx
```


