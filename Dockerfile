FROM alpine

RUN \
  echo "*** installing dependencies ***" && \
  apk update --no-cache && \
  apk upgrade --no-cache && \
  apk add curl apk-cron && \
  rm -rf /var/cache/apk/*

COPY crontab /crontab
COPY update-dns.sh /update-dns.sh
COPY entry.sh /entry.sh
RUN chmod 755 /entry.sh /update-dns.sh
RUN /usr/bin/crontab /crontab

CMD [ "/entry.sh" ]
