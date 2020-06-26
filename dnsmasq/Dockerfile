FROM alpine:3.4
MAINTAINER tgyf<back_up@foxmail.com>
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main" > /etc/apk/repositories && echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/community" >> /etc/apk/repositories && echo "https://mirror.tuna.tsinghua.edu.cn/alpine/edge/testing" >> /etc/apk/repositories && echo "Asia/Shanghai" > /etc/timezone 
RUN apk add tzdata --no-cache  && TZ=Asia/Shanghai && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk add dnsmasq --no-cache 
CMD ["/usr/sbin/dnsmasq", "-k"]

