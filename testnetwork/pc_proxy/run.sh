#!/bin/bash

screen -dmS proxy ~/potato/nodeos --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./ 
