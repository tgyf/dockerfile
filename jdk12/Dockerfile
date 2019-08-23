FROM centos:latest
MAINTAINER tgyf<back_up@foxmail.com>
RUN mkdir -p /opt/tools
ADD jdk-12.0.2_linux-x64_bin.tar.gz /opt/tools
ADD jdk.sh /etc/profile.d
RUN echo crypto.policy=unlimited >> /opt/tools/jdk-12.0.2_linux-x64_bin/jre/lib/security/java.security
