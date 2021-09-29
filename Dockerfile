FROM alpine

RUN \
  echo "*** installing dependencies ***" && \
  apk update --no-cache && \
  apk upgrade --no-cache && \
  rm -rf /var/cache/apk/*

CMD [ "crond", "-f" ]
