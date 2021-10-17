FROM alpine:3.14.2

RUN apk add --no-cache bind bind-dnssec-tools
VOLUME /etc/bind

CMD ["named", "-g"]