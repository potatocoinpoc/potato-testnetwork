#!/bin/bash

#screen -dmS pcbpa 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpa \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpa" --producer-name pcbpa \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7n1U9Z2NQeVEvQZYjHCedNXRVWshmmuGH2j3r6bD4c8fH4U8QL=KEY:5KdC5izmPV6WkY4afTdzzcyx5dyQ2z6Ax9tDCSqFwGBA5twQogz"


