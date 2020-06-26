FROM alpine:3.10
MAINTAINER tgyf<back_up@foxmail.com>
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.10/main" > /etc/apk/repositories && echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.10/community" >> /etc/apk/repositories && echo "https://mirror.tuna.tsinghua.edu.cn/alpine/edge/testing" >> /etc/apk/repositories 
RUN apk update && apk add --no-cache curl bash tree tzdata \
    && cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime \
    && echo -ne "Alpine Linux 3.10 image. (`uname -rsv`)\n" >> /root/.built
CMD ["/bin/bash"]
