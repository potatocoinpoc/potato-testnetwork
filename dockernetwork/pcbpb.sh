#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run \
  --name pcbpb -d \
  -p 9002:9002 \
  -v $DIR/pcbpb/work:/work \
  -v $DIR/pcbpb/data:/mnt/dev/data \
  -v $DIR/pcbpb/config:/mnt/dev/config \
  potatocoin/potato /bin/bash -c \
  "nodepc -p pcbpb \
    --plugin potato::producer_plugin \
    --plugin potato::history_plugin \
    --plugin potato::chain_api_plugin \
    --plugin potato::history_api_plugin \
    --plugin potato::http_plugin \
    -d /mnt/dev/data \
    --config-dir /mnt/dev/config \
    --http-server-address=0.0.0.0:8888 \
    --p2p-listen-endpoint=0.0.0.0:9002 \
    --access-control-allow-origin=* \
    --contracts-console \
    --http-validate-host=false"
