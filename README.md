# Dockerfile项目 构建说明

## 目录结构

|名称|说明|备注|
|:-:|:-|:-|
|build.sh|构建镜像脚本|包含构建镜像所需依赖|
|run.sh|容器运行测试脚本|-|

*Tips:由于部分脚本使用windows编写,Linux下使用需要转换文件格式
使用Vim编辑器转换：
```java
:set fileformat=unix
```