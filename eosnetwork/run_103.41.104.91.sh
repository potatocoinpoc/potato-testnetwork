#!/bin/bash

screen -dmS pcbpf nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpf \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpf" --producer-name pcbpf \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5B1Bf4qLVaCGudWpLV6qo6y2iFMGm2vpd1R19QQCu84eVWijZ1=KEY:5KAwYrRVxRToSmwLpp7MexoFbnzmRSiJkPP8eYYq2ZfV2r9dY6y"

#screen -dmS pcbpr 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpr \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpr" --producer-name pcbpr \
    --signature-provider "EOS8FdMPpPxpG5QAqGLncY5kBrEQ9NXPKCKnLH6oWDMPR8q8BrEmT=KEY:5K4MmsY7Th8DqjEY2vbM7npaxSQ56XzvNULkJeqKmbYoVRmPPpB"
