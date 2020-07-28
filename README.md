# 搭建BookStack文档编辑平台，支持中文PDF导出

### 相关资源
- [应用官网](https://www.bookstackapp.com/)
- [基础镜像](https://hub.docker.com/r/linuxserver/bookstack)

### 依赖
`注: 官网安装需要富强，或者使用国内镜像源，例如`[阿里云](https://developer.aliyun.com/mirror/docker-ce)
- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### 启动容器，稍等片刻后访问 http://127.0.0.1:6880
```bash
sudo docker-compose up -d
```

### 默认账号
* 账号: `admin@admin.com`
* 密码: `password`

### 指定导出PDF工具`wkhtmltopdf`
在首次启动容器后，在`data/bookstack/www/.env`文件增加下列内容
```bash
WKHTMLTOPDF=/usr/bin/wkhtmltopdf
```

### 关于基础镜像导出PDF时缺少中文字体问题
需要将宋体文件`simsun.ttc`放入`/usr/share/fonts/chinese/TrueType/`路径下，此项目的已经解决这个问题，详细可参考`Dockerfile`