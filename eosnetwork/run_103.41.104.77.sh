#!/bin/bash

screen -dmS pcbpd nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpd \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpd" --producer-name pcbpd \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7ZH8veauyEUu4dJU5bTRSPHFctiFkV3Fyaj1tWsr83Jf6dmXh8=KEY:5JhsjUjKUJXYSvPWAZe23ceNSMdjk9U32jjmgFTZfXxe4yV2y4A"

#screen -dmS pcbpl 
nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpl \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpl" --producer-name pcbpl \
    --signature-provider "EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV=KEY:5KdRpt1juJfbPEryZsQYxyNxSTkXTdqEiL4Yx9cAjdgApt4ANce"
