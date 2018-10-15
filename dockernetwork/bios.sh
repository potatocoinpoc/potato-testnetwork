#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run \
  --name bios -d \
  -p 8888:8888 \
  -p 9876:9876 \
  -v $DIR/bios/work:/work \
  -v $DIR/bios/data:/mnt/dev/data \
  -v $DIR/bios/config:/mnt/dev/config \
  potatocoin/potato /bin/bash -c \
  "nodepc -e -p potato \
    --plugin potato::producer_plugin \
    --plugin potato::history_plugin \
    --plugin potato::chain_api_plugin \
    --plugin potato::history_api_plugin \
    --plugin potato::http_plugin \
    -d /mnt/dev/data \
    --config-dir /mnt/dev/config \
    --http-server-address=0.0.0.0:8888 \
    --p2p-listen-endpoint=0.0.0.0:9876 \
    --access-control-allow-origin=* \
    --contracts-console \
    --http-validate-host=false"
