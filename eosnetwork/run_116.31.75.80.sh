#!/bin/bash

screen -dmS pcbph nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbph --data-dir ./pcbph \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbph" --producer-name pcbph \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS8Znrtgwt8TfpmbVpTKvA2oB8Nqey625CLN8bCN3TEbgx86Dsvr=KEY:5K463ynhZoCDDa4RDcr63cUwWLTnKqmdcoTKTHBjqoKfv4u5V7p"

screen -dmS pcbpx nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpx --data-dir ./pcbpx \
    --p2p-listen-endpoint 0.0.0.0:9002 --agent-name "Agent pcbpx" --producer-name pcbpx \
    --http-server-address "0.0.0.0:8999" \
    --signature-provider "EOS76wwc1zjzRMPQnEL6rTDWLfhN2ByZd6GhDJoWBKWM6M7cUmyfS=KEY:5K3TXkZAwyJkg7TjSfopd7sTr3RXFccghXHN1nJHTzap1ZKgLdK"
