#!/bin/bash

screen -dmS proxy nodepc --genesis-json ../genesis.json --blocks-dir ./blocks --config-dir ./ --data-dir ./ 
