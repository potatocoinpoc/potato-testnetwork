#!/bin/bash

#screen -dmS pcbpi 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpi --data-dir ./pcbpi \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpi" --producer-name pcbpi \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS69X3383RzBZj41k73CSjUNXM5MYGpnDxyPnWUKPEtYQmTBWz4D=KEY:5JtUScZK2XEp3g9gh7F8bwtPTRAkASmNrrftmx4AxDKD5K4zDnr"
