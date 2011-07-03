#!/bin/bash
vpn_host=vpn.alibaba-inc.com #VPN服务器
user=hua.qiuh #用户名
key=123457z #密码中不变的部分

sudo whoami > /dev/null
read -s -p "Enter dynamic digital password: " passwd 
echo ""

#vpnc运行必须要有root权限,
#因为需要创建网络连接tun0
sudo `dirname $0`/array_vpnc.bin $vpn_host $user $key$passwd
