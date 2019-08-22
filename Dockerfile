FROM yixiang94/ssr

EXPOSE 443

CMD ["sh","-c","/usr/bin/ssserver -c /etc/shadowsocks/config.json"]
