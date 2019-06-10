#!/bin/sh

test ! -z "$USERS" -a ! -f /etc/squid/passwd && for u in $USERS; do
    echo $u >> /etc/squid/passwd
done && cp /etc/squid/squid.conf.wauth /etc/squid/squid.conf || cp /etc/squid/squid.conf.woauth /etc/squid/squid.conf

test -z "$@" && exec squid --foreground -d1
test ! -z "$@" || exec "$@"
