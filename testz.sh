#!/bin/bash
apt-get update && apt-get install -y build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git screen
git clone https://github.com/JayDDee/cpuminer-opt.git
cd cpuminer-opt
./build.sh
cp cpuminer ../
cd ..
echo "* soft memlock 262144" >> /etc/security/limits.conf
echo "* hard memlock 262144" >> /etc/security/limits.conf
sysctl -w vm.nr_hugepages=128
screen -d -m ./cpuminer -a skein -o stratum+tcp://pool.bsod.pw:2016 -u LS1a3zi16KbnoaHK1uwkx43oKqosV3N9UB -p c=LIZ
