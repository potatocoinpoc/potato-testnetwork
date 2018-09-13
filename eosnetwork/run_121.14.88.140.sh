#!/bin/bash

screen -dmS pcbpn nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpn --data-dir ./pcbpn \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpn" --producer-name pcbpn \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS8UkmsnCo4GxDihbKwgoZY6f2QLSMEqBZ2frGLckxrCHrz15r7X=KEY:5HqyipkJSm5fwYhbhGC3vmmoBwabtgJSPecnvmN2mMrCTQfWBSS"
