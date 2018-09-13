#!/bin/bash

screen -dmS pcbpf ~/potato/nodeos --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./ 
