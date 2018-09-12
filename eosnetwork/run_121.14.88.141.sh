#!/bin/bash

screen -dmS pcbpo nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpo \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpo" --producer-name pcbpo \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS8Smcv2eMoFcp1EQSBxcAeuBowSS9xesuHjhvTnK4AACjRycTVA=KEY:5KPr55J2UQNUh3xP5Q6ebqqV6MK5usrXxG4qqRfpaLieGa8VpCm"

#screen -dmS pcbpy 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpy \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpy" --producer-name pcbpy \
    --signature-provider "EOS63piLomgbAGShNu7zv3whiR52Abz8gVVMRNAqw4apJ8EQKEnQ5=KEY:5J498VQKaFVbh2ovPrMxa5DThE1fiWWfna6H2ZofmGMaVM7bs2M"
