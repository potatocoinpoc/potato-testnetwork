#!/bin/bash
docker run \
  --name pcbpa -d \
  #-p 8888:8888 \
  -p 9001:9001 \
  -v pcbpa/work:/work \
  -v pcbpa/data:/mnt/dev/data \
  -v pcbpa/config:/mnt/dev/config \
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
