#!/bin/bash

sudo timedatectl set-timezone Europe/Riga


sudo apt -y update
sudo apt -y upgrade

# install rclone
curl https://rclone.org/install.sh | sudo bash

sudo apt -y install simplescreenrecorder
sudo apt -y install vim
sudo apt -y install jq

# install audio recording software
apt -y install audacity

# install password manager
sudo apt -y install keepassx

sudo apt -y install deluge-gtk python-libtorrent

sudo apt -y install kodi

sudo apt -y install chromium
sudo apt -y remove chromium-bsu

# install fonts
sudo apt -y install ttf-mscorefonts-installer && fc-cache -f -v

mkdir -p ~/Downloads
curl -L https://github.com/catonrug/xbmc-lattelecom.tv/archive/master.zip > ~/Downloads/xbmc-lattelecom.tv.zip
cd

# nice video player
sudo apt -y install mpv
sudo apt -y install youtube-dl


# pip module

# sudo apt -y install python-pip

# youtuve download utility
# sudo pip install --upgrade youtube-dl
# to merge audio together with video
sudo apt -y install ffmpeg

# install youtube channel management through directory structure
# curl -s "https://catonrug.blogspot.com/feeds/posts/default/5255522565948307079?alt=json" | jq -r '.entry|.content|."$t"' | base64 --decode | sudo tee /usr/bin/renew-youtube-channel
# sudo chmod +x /usr/bin/renew-youtube-channel
# curl -s "https://catonrug.blogspot.com/feeds/posts/default/905125781365764435?alt=json" | jq -r '.entry|.content|."$t"' | base64 --decode | sudo tee /usr/bin/renew-all-channels
# sudo chmod +x /usr/bin/renew-all-channels


# https://mxlinux.org/wiki/applications/docker/
wget -O docker.gpg  https://download.docker.com/linux/debian/gpg 
gpg --keyid-format 0xlong docker.gpg 2>/dev/null
gpg --keyid-format 0xlong docker.gpg 2>/dev/null | grep -sq 0x8D81803C0EBFCD88 && sudo apt-key add docker.gpg
CODENAME=stretch
echo "deb [arch=amd64] https://download.docker.com/linux/debian $CODENAME  stable" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt -y update
sudo apt -y install docker-ce

# remove built in torrent client
sudo apt -y remove transmission-gtk vlc

# remove obsolete packages
sudo apt -y autoremove
