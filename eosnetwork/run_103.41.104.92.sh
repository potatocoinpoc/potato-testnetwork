#!/bin/bash

screen -dmS pcbpg nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpg --data-dir ./pcbpg \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpg" --producer-name pcbpg \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5dNbGVNhsyrv8jiPu92SoHPNRb3ChEbtSmpoZNiUAEf2UvuB5X=KEY:5JpSUc2Kh9ZAg7H96nuNT4DbKhsngV8yVjr1Gyfe71LuHtEq9YY"

screen -dmS pcbpw nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpw --data-dir ./pcbpw \
    --p2p-listen-endpoint 0.0.0.0:9002 --agent-name "Agent pcbpw" --producer-name pcbpw \
    --http-server-address "0.0.0.0:8999" \
    --signature-provider "EOS5yR5GNn363W3cnet5PE6xWZxa2hDAhmJN5RrB1e3fmJmVNnDRJ=KEY:5K7hmHA2U3nNpwGx6AffWsHyvsSMJvVKVmSgxnSYAjAvjUfzd5j"
