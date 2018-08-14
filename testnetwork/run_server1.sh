#!/bin/bash
cd  ./pcbpa && screen -dmS pcbpa ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd  ./pcbpb && screen -dmS pcbpb ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd  ./pcbpc && screen -dmS pcbpc ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd  ./pcbpd && screen -dmS pcbpd ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd  ./pcbpe && screen -dmS pcbpe ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd  ./pcbpf && screen -dmS pcbpf ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd  ./pcbpg && screen -dmS pcbpg ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd  ./pcbph && screen -dmS pcbph ./run.sh && cd .. && ping 127.0.0.1 -c 1
cd  ./pcbpi && screen -dmS pcbpi ./run.sh && cd .. && ping 127.0.0.1 -c 1