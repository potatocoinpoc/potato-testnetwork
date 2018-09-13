#!/bin/bash

screen -dmS pcbpb nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpb --data-dir ./pcbpb \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpb" --producer-name pcbpb \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS6syu9mCx2zmkp51V5eiZuRBVBbyAgiBNb7hkX7XDQMFKHZuDnk=KEY:5K63ZFMhZVVzvDiVWuNxmznGGzb4JjeKr53j1uYga1zhkBxTELQ"

screen -dmS pcbpr nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpr --data-dir ./pcbpr \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpr" --producer-name pcbpr \
    --http-server-address "0.0.0.0:8899" \
    --signature-provider "EOS8FdMPpPxpG5QAqGLncY5kBrEQ9NXPKCKnLH6oWDMPR8q8BrEmT=KEY:5K4MmsY7Th8DqjEY2vbM7npaxSQ56XzvNULkJeqKmbYoVRmPPpB"
