#!/bin/bash
sudo apt-get update
sudo apt-get install -y build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git screen
git clone https://github.com/Optiminer/cpuminer-xzc
cd cpuminer-xzc
./build.sh
cp cpuminer ../
cd ..
screen -d -m ./cpuminer -a lyra2rev2 -o stratum+tcp://46.101.74.62:3336 -u algunnombre.az -p x
