## JDK

### 1. JDK压缩包重命名
```java
mv jdk1.8.0_101.tar.gz jdk.tar.gz
```
### 2.修改 JDK 镜像Dockerfile对应的版本
```java
ENV JAVA_VERSION jdk1.8.0_101
```
### 3.构建 JDK 镜像
    sudo chmod +x build
    ./build 8