#!/bin/bash

screen -dmS pcbpp nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpp \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpp" --producer-name pcbpp \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS57VTWSiPyx45cSWGdGNtAZnmpqMrAvASQmL9hmXnoLNrgadwf7=KEY:5JV9UNEpPKa4sqxSxvGWYPY9ZBTzAttyq7ShPvLUJSetwAeSXFW"

#screen -dmS pcbpz 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpz \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpz" --producer-name pcbpz \
    --signature-provider "EOS8ZjbDEi872aLpuuAjnd76NYW6KzPaf6RBSuwXcHmKm7A1sxayV=KEY:5JrC4vnVXroqvXtmSw3EiXcSv9agfDsKsUghzv2Rhiyrg9J36Z4"

