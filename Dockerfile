FROM alpine

RUN apk add --no-cache bind bind-dnssec-tools
VOLUME /etc/bind

RUN cp /etc/bind/named.conf.recursive /etc/bind/named.conf
WORKDIR app

COPY startup.sh .

CMD ["./startup.sh"]