FROM alpine

RUN \
  echo "*** installing dependencies ***" && \
  apk update --no-cache && \
  apk upgrade --no-cache && \
  rm -rf /var/cache/apk/*

# COPY ./update-dns.sh /usr/local/update-dns.sh
# RUN chmod 0550 /usr/local/update-dns.sh

RUN printf "*/5	*	*	*	*	run-parts /etc/periodic/5min\n" >> /etc/crontabs/root

CMD [ "crond", "-f" ]
