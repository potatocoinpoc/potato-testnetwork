#!/bin/bash

#screen -dmS pcbpp 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpp \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpp" --producer-name pcbpp \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS57VTWSiPyx45cSWGdGNtAZnmpqMrAvASQmL9hmXnoLNrgadwf7=KEY:5JV9UNEpPKa4sqxSxvGWYPY9ZBTzAttyq7ShPvLUJSetwAeSXFW"
