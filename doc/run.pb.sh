#!/bin/bash

nodeos --genesis-json ./genesis.json --blocks-dir ./pb/blocks --config-dir ./ --config config.pb.ini --data-dir ./pb/ 
