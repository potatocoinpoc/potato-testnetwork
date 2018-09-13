#!/bin/bash

screen -dmS pcbpc nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpc --data-dir ./pcbpc \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpc" --producer-name pcbpc \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5Lo8iT5EkmSCASP6THm9kwePJKcbWzdQ3pj2Hmz3pyYamuViuF=KEY:5JXgXUpAhYbu6Smf9vZiKnYjGmxfGh2BkZCQZAPLv9DzFkAnu9S"

screen -dmS pcbps nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbps --data-dir ./pcbps \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbps" --producer-name pcbps \
    --http-server-address "0.0.0.0:8899" \
    --signature-provider "EOS8imf2TDq6FKtLZ8mvXPWcd6EF2rQwo8zKdLNzsbU9EiMSt9Lwz=KEY:5KLGj1HGRWbk5xNmoKfrcrQHXvcVJBPdAckoiJgFftXSJjLPp7b"
