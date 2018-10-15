#!/bin/bash
docker run \
  --name node2 -d \
  #-p 8888:8888 \
  -p 9003:9003 \
  -v node3/work:/work \
  -v node3/data:/mnt/dev/data \
  -v node3/config:/mnt/dev/config \
  potatocoin/potato /bin/bash -c \
  "nodepc -p node3 \
    --plugin potato::producer_plugin \
    --plugin potato::history_plugin \
    --plugin potato::chain_api_plugin \
    --plugin potato::history_api_plugin \
    --plugin potato::http_plugin \
    -d /mnt/dev/data \
    --config-dir /mnt/dev/config \
    --http-server-address=0.0.0.0:8888 \
    --p2p-listen-endpoint=0.0.0.0:9003 \
    --access-control-allow-origin=* \
    --contracts-console \
    --http-validate-host=false"
