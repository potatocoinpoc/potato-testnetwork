#!/bin/bash

screen -dmS pcbpf nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpf --data-dir ./pcbpf \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpf" --producer-name pcbpf \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5B1Bf4qLVaCGudWpLV6qo6y2iFMGm2vpd1R19QQCu84eVWijZ1=KEY:5KAwYrRVxRToSmwLpp7MexoFbnzmRSiJkPP8eYYq2ZfV2r9dY6y"

screen -dmS pcbpv nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpv --data-dir ./pcbpv \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpv" --producer-name pcbpv \
    --http-server-address "0.0.0.0:8999" \
    --signature-provider "EOS5y3Tm1czTCia3o3JidVKmC78J9gRQU8qHjmRjFxTyhh2vxvF5d=KEY:5JJjaKnAb9KM2vkkJDgrYXoeUEdGgWtB5WK1a38wrmKnS3KtkS6"
