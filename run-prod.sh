#!/bin/sh

set -ex

docker pull alexcrichton/rust-central-station
exec docker run \
  --volume `pwd`:/src:ro \
  --publish 80:80 \
  --publish 443:443 \
  --rm \
  alexcrichton/rust-central-station