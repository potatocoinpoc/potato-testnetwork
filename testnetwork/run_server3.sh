#!/bin/bash
cd ./pcbps && screen -dmS pcbps ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd ./pcbpt && screen -dmS pcbpt ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd ./pcbpu && screen -dmS pcbpu ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd ./pcbpv && screen -dmS pcbpv ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd ./pcbpw && screen -dmS pcbpw ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd ./pcbpx && screen -dmS pcbpx ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd ./pcbpy && screen -dmS pcbpy ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd ./pcbpz && screen -dmS pcbpz ./run.sh && cd .. && ping 127.0.0.1 -c 1
