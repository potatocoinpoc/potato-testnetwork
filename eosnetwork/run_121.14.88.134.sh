#!/bin/bash

#screen -dmS pcbpm 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpm --data-dir ./pcbpm \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpm" --producer-name pcbpm \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS6cNcTC6WTFkKV4C8DoxcTXdDTDKvj3vgZEVDGVFckK1eTNJQtf=KEY:5JRMbcnc35NkvxKTZUnoe3W4ENQCjhMUFwjN5jQmAqN9D7N6y3N"
