## YAPI 部署说明
### 1. 启动 MongoDB

    docker run -d --name mongo-yapi mongo
    
### 2.构建 Yapi 镜像
    sudo chmod +x build
    ./build 1.8.1

### 3.初始化 Yapi 数据库索引及管理员账号    
    docker run -it --rm \
      --link mongo-yapi:mongo \
      --entrypoint npm \
      --workdir /api/vendors \
      yapi:1.8.1 \
      run install-server

### 4.启动 Yapi 服务
    docker run -d \
      --name yapi \
      --link mongo-yapi:mongo \
      --workdir /api/vendors \
      -p 3000:3000 \
      yapi:1.8.1 \
      server/app.js
  