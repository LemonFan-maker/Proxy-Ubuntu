#!/bin/bash
echo "V2ray-代理上Pixiv.com"
mkdir /usr/install
CHOICE_A = $(echo -e "\n${BOLD}选择代理[ 1-3 ]：${PLAIN}")
read -p "${CHOICE_A}" INPUT
case $INPUT in
1)
        wget https://github-do.panbaidu.cn//https://raw.githubusercontent.com/LemonFan-maker/PIXIV-CN/master/config1.json -q -P  /usr/install
        cp /usr/install/config1.json /usr/install/config.json
        rm -rf /usr/install/config1.json
        echo -e "\n${BOLD}使用${BLUE}1${PLAIN}作为代理服务器."
        ;;
2)
        wget https://github-do.panbaidu.cn//https://raw.githubusercontent.com/LemonFan-maker/PIXIV-CN/master/config2.json -q -P /usr/install
        cp /usr/install/config2.json /usr/install/config.json
        rm -rf /usr/install/config2.json
        echo -e "\n${BOLD}使用${BLUE}2${PLAIN}作为代理服务器."
        ;;
3)
        wget https://github-do.panbaidu.cn//https://raw.githubusercontent.com/LemonFan-maker/PIXIV-CN/master/config3.json -q -P /usr/install
        cp /usr/install/config3.json /usr/install/config.json
        rm -rf /usr/install/config3.json
        echo -e "\n${BOLD}使用${BLUE}3${PLAIN}作为代理服务器."
        ;;
*)
        wget https://github-do.panbaidu.cn//https://raw.githubusercontent.com/LemonFan-maker/PIXIV-CN/master/config1.json -q -P /usr/install
        cp /usr/install/config1.json /usr/install/config.json
        rm -rf /usr/install/config1.json
        echo -e "\n$WARN 输入错误，将默认使用${BLUE}1${PLAIN}作为代理服务器."
        sleep 2s
        ;;
esac
mkdir /opt/V2ray/
wget https://github-do.panbaidu.cn//https://github.com/v2fly/v2ray-core/releases/download/v4.44.0/v2ray-linux-64.zip -q -P /usr/install
unzip -q /usr/install/v2ray-linux-64.zip -d /opt/V2ray
rm /opt/V2ray/config.json
cp /usr/install/config.json /opt/V2ray
rm -rf /usr/install

chmod +X /opt/V2ray/v2ray
chmod 777 /opt/V2ray/v2ray
chmod 777 /opt/V2ray

cd /opt/V2ray
echo "/n ${BLUE} 代理已经启动. /n ${GREEN} SOCK5地址:0.0.0.0:10808 /n ${GREEN} HTTP地址:0.0.0.0:10809"
./v2ray


