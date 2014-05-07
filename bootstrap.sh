#!/usr/bin/env bash

sudo apt-get update && sudo apt-get -y install git
sudo apt-get -y install vim
git clone https://github.com/OpenDroneMap/BundlerTools.git
cd /home/vagrant/BundlerTools/
git checkout no-clapack-logging
chmod 700 install.sh 
./install.sh
echo >> ~/.bashrc && echo 'export PATH=$PATH:~/BundlerTools/bin' >> /home/vagrant/.bashrc 
