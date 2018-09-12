#!/bin/bash

screen -dmS pcbpq nodepc --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./pcbpq \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpq" --producer-name pcbpq \
    --plugin potato::http_plugin --plugin potato::chain_api_plugin --access-control-allow-origin "*" --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5dt9CWCKM1scrWpFsRbzY71Up9UYFmJs1ySFKLJDGdYJmgEH3f=KEY:5K4GSGP2r1Yu3RqmPZPF8Hv6Zrv2YWsUEoCqwwHxKsZavz2tChg"

