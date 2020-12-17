#!/bin/bash

#Removing powerline shell with pip
pip3 uninstall -y powerline-shell

#Removing lxterminal configs
sudo rm -r ~/.config/lxterminal

#Copying back up lxterminal configs
sudo cp -r ~/RPI-PowerlineShell-Installer/.backup/lxterminal ~/.config

#Removing powerline shell from ~/.bashrc
sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc