#!/bin/bash

screen -dmS pcbpe ~/potato/nodeos --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./ 
