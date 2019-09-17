FROM ubuntu:18.04

EXPOSE 443

RUN apt-get install software-properties-common python-software-properties
RUN apt -y update && apt -y upgrade
RUN apt -y install shadowsocks

RUN echo "{\n\
    "server":"0.0.0.0",\n\
    "server_port":443,\n\
    "local_address": "127.0.0.1",\n\
    "local_port":1080,\n\
    "password":"tang123456",\n\
    "timeout":300,\n\
    "method":"aes-256-cfb",\n\
    "fast_open": false,\n\
    "workers": 1,\n\
    "prefer_ipv6": false\n\
}" > /etc/shadowsocks/config.json 

CMD ["sh","-c","/usr/bin/ssserver -c /etc/shadowsocks/config.json"]
