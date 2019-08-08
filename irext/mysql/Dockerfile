FROM mysql:5.6
MAINTAINER tgyf<back_up@foxmail.com>
#定义时区参数
ENV TZ=Asia/Shanghai
#设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone
#设置编码
ENV LANG C.UTF-8
#设置root密码
#ENV MYSQL_ROOT_PASSWORD=421aWill
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
#离线数据库
COPY  irext_20190616.sql /mysql/irext.sql
COPY  privileges.sql /mysql/privileges.sql
COPY  create_db.sh /mysql/create_db.sh
#mysql -uroot -p421aWill < init.sql
CMD ["sh", "/mysql/create_db.sh"]