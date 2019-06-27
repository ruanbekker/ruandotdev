#!/usr/bin/env sh
export DOMAIN=${APP_DOMAIN}
docker stack deploy --prune -c /tmp/ruan.dev/docker-compose.yml blogs
