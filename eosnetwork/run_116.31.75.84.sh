#!/bin/bash

screen -dmS pcbpj nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpj --data-dir ./pcbpj \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpj" --producer-name pcbpj \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7yBtksm8Kkg85r4in4uCbfN77uRwe82apM8jjbhFVDgEgz3w8S=KEY:5JUNYmkJ5wVmtVY8x9A1KKzYe9UWLZ4Fq1hzGZxfwfzJB8jkw6u"

screen -dmS pcbpz nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpz --data-dir ./pcbpz \
    --p2p-listen-endpoint 0.0.0.0:9002 --agent-name "Agent pcbpz" --producer-name pcbpz \
    --http-server-address "0.0.0.0:8999" \
    --signature-provider "EOS8ZjbDEi872aLpuuAjnd76NYW6KzPaf6RBSuwXcHmKm7A1sxayV=KEY:5JrC4vnVXroqvXtmSw3EiXcSv9agfDsKsUghzv2Rhiyrg9J36Z4"
