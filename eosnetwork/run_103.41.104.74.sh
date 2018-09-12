#!/bin/bash

#screen -dmS pcbpc 
nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpc \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpc" --producer-name pcbpc \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5Lo8iT5EkmSCASP6THm9kwePJKcbWzdQ3pj2Hmz3pyYamuViuF=KEY:5JXgXUpAhYbu6Smf9vZiKnYjGmxfGh2BkZCQZAPLv9DzFkAnu9S"
