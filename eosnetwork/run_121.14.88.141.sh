#!/bin/bash

#screen -dmS pcbpo 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpo --data-dir ./pcbpo \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpo" --producer-name pcbpo \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS8Smcv2eMoFcp1EQSBxcAeuBowSS9xesuHjhvTnK4AACjRycTVA=KEY:5KPr55J2UQNUh3xP5Q6ebqqV6MK5usrXxG4qqRfpaLieGa8VpCm"
