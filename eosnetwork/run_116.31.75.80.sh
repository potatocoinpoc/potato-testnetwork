#!/bin/bash

#screen -dmS pcbph 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbph --data-dir ./pcbph \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbph" --producer-name pcbph \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS8Znrtgwt8TfpmbVpTKvA2oB8Nqey625CLN8bCN3TEbgx86Dsvr=KEY:5K463ynhZoCDDa4RDcr63cUwWLTnKqmdcoTKTHBjqoKfv4u5V7p"
