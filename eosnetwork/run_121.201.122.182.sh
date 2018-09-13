#!/bin/bash

screen -dmS pcbpq nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpq --data-dir ./pcbpq \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpq" --producer-name pcbpq \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS5dt9CWCKM1scrWpFsRbzY71Up9UYFmJs1ySFKLJDGdYJmgEH3f=KEY:5K4GSGP2r1Yu3RqmPZPF8Hv6Zrv2YWsUEoCqwwHxKsZavz2tChg"

