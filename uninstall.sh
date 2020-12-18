#!/bin/bash

#Removing powerline shell with pip
sudo pip3 uninstall -y powerline-shell

#Removing lxterminal configs
sudo rm -r ~/.config/lxterminal

#Removing powerline shell from ~/.bashrc
sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc

clear
cd ~/
exec bash 