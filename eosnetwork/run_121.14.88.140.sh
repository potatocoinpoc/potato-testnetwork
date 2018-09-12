#!/bin/bash

screen -dmS pcbpn nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpn \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpn" --producer-name pcbpn \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS8UkmsnCo4GxDihbKwgoZY6f2QLSMEqBZ2frGLckxrCHrz15r7X=KEY:5HqyipkJSm5fwYhbhGC3vmmoBwabtgJSPecnvmN2mMrCTQfWBSS"

#screen -dmS pcbpx 
nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpx \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpx" --producer-name pcbpx \
    --signature-provider "EOS76wwc1zjzRMPQnEL6rTDWLfhN2ByZd6GhDJoWBKWM6M7cUmyfS=KEY:5K3TXkZAwyJkg7TjSfopd7sTr3RXFccghXHN1nJHTzap1ZKgLdK"
