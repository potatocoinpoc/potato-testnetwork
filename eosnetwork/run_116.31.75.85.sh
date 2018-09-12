#!/bin/bash

screen -dmS pcbpk nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpk \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpk" --producer-name pcbpk \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7WnhaKwHpbSidYuh2DF1qAExTRUtPEdZCaZqt75cKcixuQUtdA=KEY:5K6LU8aVpBq9vJsnpCvaHCcyYwzPPKXfDdyefYyAMMs3Qy42fUr"

#screen -dmS pcbpv 
nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpv \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpv" --producer-name pcbpv \
    --signature-provider "EOS5y3Tm1czTCia3o3JidVKmC78J9gRQU8qHjmRjFxTyhh2vxvF5d=KEY:5JJjaKnAb9KM2vkkJDgrYXoeUEdGgWtB5WK1a38wrmKnS3KtkS6"
