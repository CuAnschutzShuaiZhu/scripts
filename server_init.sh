#!/bin/bash

## apt install useful package
sudo apt install vim ufw net-tools

## install pip
sudo apt install python3-pip git
sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED
pip install tldr

## alias
echo -e "alias ctl='systemctl'" >> ~/.bashrc
echo -e "alias ll='ls -l'">> ~/.bashrc
echo -e "alias gitlog='git log --oneline'">> ~/.bashrc
echo -e "export PATH='$PATH:/home/shuai/scripts'" >> ~/.bashrc
source .bashrc

## add shuai to sudoers
sudo adduser shuai sudo

## apt install useful package
sudo apt install vim ufw net-tools

## install tailscale
curl -fsSL https://pkgs.tailscale.com/stable/debian/bookworm.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/debian/bookworm.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
sudo apt-get update
sudo apt-get install tailscale




## git clone script
git clone https://github.com/CuAnschutzShuaiZhu/scripts
echo "export PATH=/home/shuai/scripts:$PATH" >> .bashrc
cd script
chmod +x *

## samba

sudo apt update
sudo apt install samba -y
echo "
[download]
path = /home/shuai/Downloads
browsable = yes
writable = yes
read only = no
force create mode = 0666
force directory mode = 0777
" >> /etc/samba/smb.conf

sudo smbpasswd -a shuai
sudo systemctl restart smbd
systemctl status smbd

