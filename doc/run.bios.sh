#!/bin/bash

nodeos --genesis-json ./genesis.json --blocks-dir ./bios/blocks --config-dir ./ --config config.bios.ini --data-dir ./bios/ 
