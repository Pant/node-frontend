#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t pant/node-frontend:16 .

docker build -t pant/node-frontend:latest .

docker push pant/node-frontend:16

docker push pant/node-frontend:latest
