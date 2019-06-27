#!/usr/bin/env sh
export DOMAIN=${DOMAIN}
docker stack deploy --prune -c /tmp/ruan.dev/docker-compose.yml blogs
