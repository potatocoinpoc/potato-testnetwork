#!/bin/bash

screen -dmS pcbpi nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpi --data-dir ./pcbpi \
    --p2p-listen-endpoint 0.0.0.0:9000 --agent-name "Agent pcbpi" --producer-name pcbpi \
    --http-server-address "0.0.0.0:8888" \
    --signature-provider "EOS69X3383RzBZj41k73CSjUNXM5MYGpnDxyPnWUKPEtYQmTBWz4D=KEY:5JtUScZK2XEp3g9gh7F8bwtPTRAkASmNrrftmx4AxDKD5K4zDnr"

screen -dmS pcbpy nodeos --genesis-json ./genesis.json --blocks-dir ./blocks --config-dir ./pcbpy --data-dir ./pcbpy \
    --p2p-listen-endpoint 0.0.0.0:9001 --agent-name "Agent pcbpy" --producer-name pcbpy \
    --http-server-address "0.0.0.0:8999" \
    --signature-provider "EOS63piLomgbAGShNu7zv3whiR52Abz8gVVMRNAqw4apJ8EQKEnQ5=KEY:5J498VQKaFVbh2ovPrMxa5DThE1fiWWfna6H2ZofmGMaVM7bs2M"
