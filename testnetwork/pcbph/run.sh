#!/bin/bash

screen -dmS pcbph ~/potato/nodeos --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./ 
