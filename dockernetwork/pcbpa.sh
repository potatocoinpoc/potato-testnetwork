#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run \
  --name pcbpa -d \
  -p 9001:9001 \
  -v $DIR/pcbpa/work:/work \
  -v $DIR/pcbpa/data:/mnt/dev/data \
  -v $DIR/pcbpa/config:/mnt/dev/config \
  potatocoin/potato /bin/bash -c \
  "nodepc -p pcbpa \
    --plugin potato::producer_plugin \
    --plugin potato::history_plugin \
    --plugin potato::chain_api_plugin \
    --plugin potato::history_api_plugin \
    --plugin potato::http_plugin \
    -d /mnt/dev/data \
    --config-dir /mnt/dev/config \
    --http-server-address=0.0.0.0:8888 \
    --p2p-listen-endpoint=0.0.0.0:9001 \
    --access-control-allow-origin=* \
    --contracts-console \
    --http-validate-host=false"
