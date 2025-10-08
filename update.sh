#!/usr/bin/env bash

docker image pull alpine
docker build -t dynamic-dns .
docker image prune -f
docker compose up --build -d
