#!/bin/bash

screen -dmS pcbpd nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpd --data-dir ./pcbpd \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpd" --producer-name pcbpd \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS7ZH8veauyEUu4dJU5bTRSPHFctiFkV3Fyaj1tWsr83Jf6dmXh8=KEY:5JhsjUjKUJXYSvPWAZe23ceNSMdjk9U32jjmgFTZfXxe4yV2y4A"

screen -dmS pcbpr nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpr --data-dir ./pcbpr \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpr" --producer-name pcbpr \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8899" \
    --signature-provider "EOS8FdMPpPxpG5QAqGLncY5kBrEQ9NXPKCKnLH6oWDMPR8q8BrEmT=KEY:5K4MmsY7Th8DqjEY2vbM7npaxSQ56XzvNULkJeqKmbYoVRmPPpB"

#screen -dmS pcbpx 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpx --data-dir ./pcbpx \
    --p2p-listen-endpoint 0.0.0.0:9002 --agent-name "Agent pcbpx" --producer-name pcbpx \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8999" \
    --signature-provider "EOS76wwc1zjzRMPQnEL6rTDWLfhN2ByZd6GhDJoWBKWM6M7cUmyfS=KEY:5K3TXkZAwyJkg7TjSfopd7sTr3RXFccghXHN1nJHTzap1ZKgLdK"
