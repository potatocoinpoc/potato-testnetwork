#!/bin/bash

#screen -dmS pcbpg 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpg \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpg" --producer-name pcbpg \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5dNbGVNhsyrv8jiPu92SoHPNRb3ChEbtSmpoZNiUAEf2UvuB5X=KEY:5JpSUc2Kh9ZAg7H96nuNT4DbKhsngV8yVjr1Gyfe71LuHtEq9YY"
