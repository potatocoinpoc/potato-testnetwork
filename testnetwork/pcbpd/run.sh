#!/bin/bash

screen -dmS pcbpd nodepc --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./ 
