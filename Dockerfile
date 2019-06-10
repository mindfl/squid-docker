FROM alpine:3.9.4

RUN apk add --no-cache squid
COPY entrypoint.sh /usr/local/sbin/
COPY squid.conf.wauth /etc/squid/
COPY squid.conf.woauth /etc/squid/

EXPOSE 3128
ENTRYPOINT ["entrypoint.sh"]
