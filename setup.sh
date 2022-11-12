#!/bin/sh

sudo groupadd developer
sudo usermod -a -G developer $USER
sudo chgrp -R developer /var
sudo chmod 770 /var

mkdir /var/www
sudo chgrp -R www-data /var/www
sudo usermod -a -G www-data $USER
sudo chmod -R 770 /var/www

#install ansible
sudo apt update -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible
sudo apt install ansible -y

#install make
apt install make -y
