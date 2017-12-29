#!/bin/bash
wget http://www.scootersoftware.com/bcompare-4.1.9.21719_amd64.deb
sudo apt-get install -y gdebi-core
sudo gdebi bcompare-4.1.9.21719_amd64.deb
rm bcompare-4.1.9.21719_amd64.deb
