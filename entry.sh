#!/bin/sh

/usr/sbin/crond -f -l 8 -L /var/log/crond.log &

tail -f /var/log/update-dns.log
