#!/bin/bash

screen -dmS pcbpl 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpl --data-dir ./pcbpl \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpl" --producer-name pcbpl \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV=KEY:5KdRpt1juJfbPEryZsQYxyNxSTkXTdqEiL4Yx9cAjdgApt4ANce"

