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

```bash
docker-compose up -d xxx
```


