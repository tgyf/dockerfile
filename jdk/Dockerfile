FROM centos:latest
MAINTAINER tgyf<back_up@foxmail.com>
ENV JAVA_VERSION jdk1.8.0_101
RUN mkdir -p /opt/tools
ADD jdk.tar.gz /opt/tools
ADD jdk.sh /etc/profile.d
RUN echo crypto.policy=unlimited >> /opt/tools/$JAVA_VERSION/jre/lib/security/java.security
