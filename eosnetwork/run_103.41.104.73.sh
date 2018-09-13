#!/bin/bash

screen -dmS pcbpb nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpb \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpb" --producer-name pcbpb \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS6syu9mCx2zmkp51V5eiZuRBVBbyAgiBNb7hkX7XDQMFKHZuDnk=KEY:5K63ZFMhZVVzvDiVWuNxmznGGzb4JjeKr53j1uYga1zhkBxTELQ"

screen -dmS pcbpl nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpl \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpl" --producer-name pcbpl \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8899" \
    --signature-provider "EOS7Bn1YDeZ18w2N9DU4KAJxZDt6hk3L7eUwFRAc1hb5bp6xJwxNV=KEY:5KdRpt1juJfbPEryZsQYxyNxSTkXTdqEiL4Yx9cAjdgApt4ANce"

#screen -dmS pcbpv 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpv \
    --p2p-listen-endpoint 0.0.0.0:9002 --agent-name "Agent pcbpv" --producer-name pcbpv \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8999" \
    --signature-provider "EOS5y3Tm1czTCia3o3JidVKmC78J9gRQU8qHjmRjFxTyhh2vxvF5d=KEY:5JJjaKnAb9KM2vkkJDgrYXoeUEdGgWtB5WK1a38wrmKnS3KtkS6"
