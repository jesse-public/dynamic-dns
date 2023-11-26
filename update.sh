#!/usr/bin/env bash

docker image pull alpine
docker build -t dynamic-dns .
docker-compose up -d
docker image prune -f

