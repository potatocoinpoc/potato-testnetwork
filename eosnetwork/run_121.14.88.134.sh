#!/bin/bash

screen -dmS pcbpm nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpm \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpm" --producer-name pcbpm \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS6cNcTC6WTFkKV4C8DoxcTXdDTDKvj3vgZEVDGVFckK1eTNJQtf=KEY:5JRMbcnc35NkvxKTZUnoe3W4ENQCjhMUFwjN5jQmAqN9D7N6y3N"

#screen -dmS pcbpw 
nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpw \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpw" --producer-name pcbpw \
    --signature-provider "EOS5yR5GNn363W3cnet5PE6xWZxa2hDAhmJN5RrB1e3fmJmVNnDRJ=KEY:5K7hmHA2U3nNpwGx6AffWsHyvsSMJvVKVmSgxnSYAjAvjUfzd5j"
