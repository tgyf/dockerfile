###docker run -d --name dnsmasq --cap-add=NET_ADMIN --net host -p 53:53/udp -v /opt/docker/dnsmasq/dnsmasq.conf:/etc/dnsmasq.conf  -v /opt/docker/dnsmasq/dnsmasq.resolv.conf:/etc/dnsmasq.resolv.conf -v /opt/docker/dnsmasq/dnsmasq.hosts:/etc/dnsmasq.hosts dnsmasq
## --net host这个参数，让容器运行在宿主机相同的网络上，之前没有的时候，外部服务没问题，但是本机其他容器里面域名解析会不正常
## --cap-add这个参数，权限只有dhcp的时候才需要，dnsmasq强制检查了，比较烦,勉强接受吧
docker run -d --name dnsmasq --cap-add=NET_ADMIN  --publish 53:53/udp --net host dnsmasq dnsmasq