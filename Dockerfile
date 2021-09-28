FROM alpine

RUN \
  echo "*** installing dependencies ***" && \
  apk update --no-cache && \
  apk upgrade --no-cache && \
  apk install cron && \
  rm -rf /var/cache/apk/*

COPY ./update-dns.sh /update-dns.sh
RUN chmod 0550 /update-dns.sh

COPY crontab /etc/cron.d/cron
RUN chmod 0644 /etc/cron.d/cron

CMD [ "cron", "-f" ]
