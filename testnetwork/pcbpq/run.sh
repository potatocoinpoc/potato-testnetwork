#!/bin/bash

screen -dmS pcbpq ~/potato/nodeos --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./ 
