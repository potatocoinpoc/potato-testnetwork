#!/bin/bash

# screen -dmS pcbpe 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpe --data-dir ./pcbpe \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpe" --producer-name pcbpe \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS6CE8NmWwpcV6ePDiE4vzhyZfpYvmrtugumEpTYauQUMVLT1ZYP=KEY:5J31hi73ZfRDJv1MTVoqdGPh4J9e8Nzt5szdxn6zLrUnwGwyd2j"

# screen -dmS pcbps nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbps --data-dir ./pcbps \
#     --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbps" --producer-name pcbps \
#     --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8899" \
#     --signature-provider "EOS8imf2TDq6FKtLZ8mvXPWcd6EF2rQwo8zKdLNzsbU9EiMSt9Lwz=KEY:5KLGj1HGRWbk5xNmoKfrcrQHXvcVJBPdAckoiJgFftXSJjLPp7b"

# #screen -dmS pcbpy 
# nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpy --data-dir ./pcbpy \
#     --p2p-listen-endpoint 0.0.0.0:9002 --agent-name "Agent pcbpy" --producer-name pcbpy \
#     --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8999" \
#     --signature-provider "EOS63piLomgbAGShNu7zv3whiR52Abz8gVVMRNAqw4apJ8EQKEnQ5=KEY:5J498VQKaFVbh2ovPrMxa5DThE1fiWWfna6H2ZofmGMaVM7bs2M"
