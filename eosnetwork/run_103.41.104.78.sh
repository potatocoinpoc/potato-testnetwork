#!/bin/bash

screen -dmS pcbpe nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpe --data-dir ./pcbpe \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpe" --producer-name pcbpe \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS6CE8NmWwpcV6ePDiE4vzhyZfpYvmrtugumEpTYauQUMVLT1ZYP=KEY:5J31hi73ZfRDJv1MTVoqdGPh4J9e8Nzt5szdxn6zLrUnwGwyd2j"

screen -dmS pcbpu nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpu --data-dir ./pcbpu \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpu" --producer-name pcbpu \
    --http-server-address "0.0.0.0:8899" \
    --signature-provider "EOS5n442Qz4yVc4LbdEOSDnxNSseAiUCrNjRxAfPhUvM8tWS5svid6=KEY:5JCStvbRgUZ6hjyfUiUaxt5iU3HP6zC1kwx3W7SweaEGvs4EPfQ"
