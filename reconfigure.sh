#!/bin/bash

sudo timedatectl set-timezone Europe/Riga


sudo apt -y update
sudo apt -y upgrade

# install docker containers
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker user
sudo apt -y install docker-compose

# install rclone
curl https://rclone.org/install.sh | sudo bash

sudo apt -y install vim
sudo apt -y install jq

# install password manager
sudo apt -y install keepass2
# autotype for keepass2
sudo apt -y install xdotool

sudo apt -y install deluge-gtk python-libtorrent

sudo apt -y install kodi

sudo apt -y install xmms

sudo apt -y install chromium
sudo apt -y remove chromium-bsu


sudo apt -y install ttf-mscorefonts-installer && fc-cache -f -v

mkdir -p ~/Downloads
curl -L https://github.com/catonrug/xbmc-lattelecom.tv/archive/master.zip > ~/Downloads/xbmc-lattelecom.tv.zip
cd

# pip module
sudo apt -y install python-pip

# youtuve download utility
sudo pip install --upgrade youtube-dl
# to merge audio together with video
sudo apt -y install ffmpeg

# install youtube channel management through directory structure
curl -s "https://catonrug.blogspot.com/feeds/posts/default/5255522565948307079?alt=json" | jq -r '.entry|.content|."$t"' | base64 --decode | sudo tee /usr/bin/renew-youtube-channel
sudo chmod +x /usr/bin/renew-youtube-channel
curl -s "https://catonrug.blogspot.com/feeds/posts/default/905125781365764435?alt=json" | jq -r '.entry|.content|."$t"' | base64 --decode | sudo tee /usr/bin/renew-all-channels
sudo chmod +x /usr/bin/renew-all-channels

# remove obsolete packages
sudo apt -y autoremove



