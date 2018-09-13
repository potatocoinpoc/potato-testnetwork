#!/bin/bash

screen -dmS pcbpk nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpk --data-dir ./pcbpk \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpk" --producer-name pcbpk \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7WnhaKwHpbSidYuh2DF1qAExTRUtPEdZCaZqt75cKcixuQUtdA=KEY:5K6LU8aVpBq9vJsnpCvaHCcyYwzPPKXfDdyefYyAMMs3Qy42fUr"

