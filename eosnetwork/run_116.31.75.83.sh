#!/bin/bash

#screen -dmS pcbpi 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpi \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpi" --producer-name pcbpi \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS69X3383RzBZj41k73CSjUNXM5MYGpnDxyPnWUKPEtYQmTBWz4D=KEY:5JtUScZK2XEp3g9gh7F8bwtPTRAkASmNrrftmx4AxDKD5K4zDnr"
