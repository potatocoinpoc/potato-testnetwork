#!/bin/bash

#screen -dmS pcbpb 
nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpb \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpb" --producer-name pcbpb \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS6syu9mCx2zmkp51V5eiZuRBVBbyAgiBNb7hkX7XDQMFKHZuDnk=KEY:5K63ZFMhZVVzvDiVWuNxmznGGzb4JjeKr53j1uYga1zhkBxTELQ"



