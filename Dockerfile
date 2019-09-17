FROM ubuntu:18.04

EXPOSE 443
RUN apt -y update && apt -y upgrade && apt -y install software-properties-common
RUN apt -y install shadowsocks

RUN echo "{\"server\":\"0.0.0.0\",\"server_port\":443,\"local_address\":\"127.0.0.1\",\"local_port\":1080,\"password\":\"tang123456\",\"timeout\":300,\"method\":\"aes-256-cfb\",\"fast_open\":false,\"workers\":1,\"prefer_ipv6\":false}" > /etc/shadowsocks/config.json 

CMD ["sh","-c","/usr/bin/ssserver -c /etc/shadowsocks/config.json"]
