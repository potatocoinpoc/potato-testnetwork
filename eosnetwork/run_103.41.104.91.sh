#!/bin/bash

screen -dmS pcbpf nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpf --data-dir ./pcbpf \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpf" --producer-name pcbpf \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5B1Bf4qLVaCGudWpLV6qo6y2iFMGm2vpd1R19QQCu84eVWijZ1=KEY:5KAwYrRVxRToSmwLpp7MexoFbnzmRSiJkPP8eYYq2ZfV2r9dY6y"

screen -dmS pcbpt nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpt --data-dir ./pcbpt \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpt" --producer-name pcbpt \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8899" \
    --signature-provider "EOS7Ef4kuyTbXbtSPP5Bgethvo6pbitpuEz2RMWhXb8LXxEgcR7MC=KEY:5K6qk1KaCYYWX86UhAfUsbMwhGPUqrqHrZEQDjs9ekP5j6LgHUu"

#screen -dmS pcbpz 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpz --data-dir ./pcbpz \
    --p2p-listen-endpoint 0.0.0.0:9002 --agent-name "Agent pcbpz" --producer-name pcbpz \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8999" \
    --signature-provider "EOS8ZjbDEi872aLpuuAjnd76NYW6KzPaf6RBSuwXcHmKm7A1sxayV=KEY:5JrC4vnVXroqvXtmSw3EiXcSv9agfDsKsUghzv2Rhiyrg9J36Z4"

