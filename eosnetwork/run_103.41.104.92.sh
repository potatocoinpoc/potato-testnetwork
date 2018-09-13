#!/bin/bash

screen -dmS pcbpg nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpg \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpg" --producer-name pcbpg \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5dNbGVNhsyrv8jiPu92SoHPNRb3ChEbtSmpoZNiUAEf2UvuB5X=KEY:5JpSUc2Kh9ZAg7H96nuNT4DbKhsngV8yVjr1Gyfe71LuHtEq9YY"

#screen -dmS pcbpu 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpu \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpu" --producer-name pcbpu \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8899" \
    --signature-provider "EOS5n442Qz4yVc4LbdEOSDnxNSseAiUCrNjRxAfPhUvM8tWS5svid6=KEY:5JCStvbRgUZ6hjyfUiUaxt5iU3HP6zC1kwx3W7SweaEGvs4EPfQ"
