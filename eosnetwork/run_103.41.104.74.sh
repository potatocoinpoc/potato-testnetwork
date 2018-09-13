#!/bin/bash

# screen -dmS pcbpc 
nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpc --data-dir ./pcbpc \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpc" --producer-name pcbpc \
    --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5Lo8iT5EkmSCASP6THm9kwePJKcbWzdQ3pj2Hmz3pyYamuViuF=KEY:5JXgXUpAhYbu6Smf9vZiKnYjGmxfGh2BkZCQZAPLv9DzFkAnu9S"

# screen -dmS pcbpq nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpq --data-dir ./pcbpq \
#     --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpq" --producer-name pcbpq \
#     --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8899" \
#     --signature-provider "EOS5dt9CWCKM1scrWpFsRbzY71Up9UYFmJs1ySFKLJDGdYJmgEH3f=KEY:5K4GSGP2r1Yu3RqmPZPF8Hv6Zrv2YWsUEoCqwwHxKsZavz2tChg"

# #screen -dmS pcbpw 
# nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpw --data-dir ./pcbpw \
#     --p2p-listen-endpoint 0.0.0.0:9002 --agent-name "Agent pcbpw" --producer-name pcbpw \
#     --plugin eosio::http_plugin --plugin eosio::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8999" \
#     --signature-provider "EOS5yR5GNn363W3cnet5PE6xWZxa2hDAhmJN5RrB1e3fmJmVNnDRJ=KEY:5K7hmHA2U3nNpwGx6AffWsHyvsSMJvVKVmSgxnSYAjAvjUfzd5j"
