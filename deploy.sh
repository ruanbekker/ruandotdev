#!/usr/bin/env sh
set -ex
export DOMAIN=MY_APP_DOMAIN
source /tmp/ruan.dev/env.sh
env
docker stack deploy -c /tmp/ruan.dev/docker-compose.yml blogs
