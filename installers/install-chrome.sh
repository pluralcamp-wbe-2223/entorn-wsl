#!/bin/bash
DEBIAN_FRONTEND=noninteractive
#chrome:
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/sudo apt/sources.list.d/google-chrome.list'
sudo apt-get -y update
sudo apt install -y libvulkan1 libu2f-udev libgbm1 
sudo apt --fix-broken install --yes
#sudo apt-get install -y --noinstall-recommends google-chrome-stable

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb*



