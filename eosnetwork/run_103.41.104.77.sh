#!/bin/bash

screen -dmS pcbpd nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpd --data-dir ./pcbpd \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpd" --producer-name pcbpd \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7ZH8veauyEUu4dJU5bTRSPHFctiFkV3Fyaj1tWsr83Jf6dmXh8=KEY:5JhsjUjKUJXYSvPWAZe23ceNSMdjk9U32jjmgFTZfXxe4yV2y4A"

screen -dmS pcbpt nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpt --data-dir ./pcbpt \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpt" --producer-name pcbpt \
    --http-server-address "0.0.0.0:8899" \
    --signature-provider "EOS7Ef4kuyTbXbtSPP5Bgethvo6pbitpuEz2RMWhXb8LXxEgcR7MC=KEY:5K6qk1KaCYYWX86UhAfUsbMwhGPUqrqHrZEQDjs9ekP5j6LgHUu"
