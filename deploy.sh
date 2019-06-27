#!/usr/bin/env sh
set -ex
export DOMAIN=MY_APP_DOMAIN
docker stack deploy --prune -c /tmp/ruan.dev/docker-compose.yml blogs
