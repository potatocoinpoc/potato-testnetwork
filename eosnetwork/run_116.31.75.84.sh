#!/bin/bash

#screen -dmS pcbpj 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpj --data-dir ./pcbpj \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpj" --producer-name pcbpj \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S=KEY:5JUNYmkJ5wVmtVY8x9A1KKzYe9UWLZ4Fq1hzGZxfwfzJB8jkw6u"
