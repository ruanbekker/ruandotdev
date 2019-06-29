#!/usr/bin/env sh
set -ex
export DOMAIN=MY_APP_DOMAIN
export DRONE_COMMIT_SHA=${DRONE_COMMIT_SHA}
docker stack deploy -c /tmp/ruan.dev/docker-compose.yml blogs
