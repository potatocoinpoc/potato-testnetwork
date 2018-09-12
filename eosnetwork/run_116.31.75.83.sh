#!/bin/bash

screen -dmS pcbpi nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpi \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpi" --producer-name pcbpi \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS69X3383RzBZj41k73CSjUNXM5MYGpnDxyPnWUKPEtYQmTBWz4D=KEY:5JtUScZK2XEp3g9gh7F8bwtPTRAkASmNrrftmx4AxDKD5K4zDnr"

#screen -dmS pcbpt 
nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpt \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpt" --producer-name pcbpt \
    --signature-provider "EOS7Ef4kuyTbXbtSPP5Bgethvo6pbitpuEz2RMWhXb8LXxEgcR7MC=KEY:5K6qk1KaCYYWX86UhAfUsbMwhGPUqrqHrZEQDjs9ekP5j6LgHUu"
