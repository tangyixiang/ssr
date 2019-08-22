FROM yixiang94/ssr:1.0

EXPOSE 443

CMD ["sh","-c","/usr/bin/ssserver -c /etc/shadowsocks/config.json"]
