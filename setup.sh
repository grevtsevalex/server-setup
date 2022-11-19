#!/bin/sh

mkdir /var/www -p
sudo chgrp -R www-data /var
sudo usermod -a -G www-data $USER
sudo chmod -R 775 /var
sudo su $(whoami)

#install ansible
sudo apt update -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible
sudo apt install ansible -y

#install make
apt install make -y
