# Dnsmasq

```
resolve-file=/etc/dnsmasq.resolv.conf
addn-hosts=/etc/dnsmasq.hosts
```
* resolve-file指定dnsmasq从哪里获取上行DNS Server， 默认是从/etc/resolv.conf获取。

* addn-hosts指定dnsmasq从哪个文件中读取“地址 域名”记录， 默认是系统文件/etc/hosts；

* listen-address默认是监控在所有网卡上的

编辑 /etc/dnsmasq.resolv.conf
```
nameserver 127.0.0.1
nameserver 114.114.114.114
nameserver 114.114.115.115
nameserver 223.5.5.5
nameserver 223.6.6.6
```
第二个和第三个是114的公共dns，最后两个是阿里的公共dns