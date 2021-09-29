FROM alpine

RUN \
  echo "*** installing dependencies ***" && \
  apk update --no-cache && \
  apk upgrade --no-cache && \
  apk add bash curl && \
  rm -rf /var/cache/apk/*

CMD [ "crond", "-f", "-L", "/var/log/crond.log"]
