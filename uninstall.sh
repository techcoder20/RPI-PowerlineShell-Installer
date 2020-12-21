#!/bin/bash

#Removing powerline shell with pip
sudo pip3 uninstall -y powerline-shell


sed -i '/FontName/c\FontName=Monospace 10' ~/.config/xfce4/terminal/terminalrc
sed -i '/fontname/c\fontname=Monospace 10' ~/.config/lxterminal/lxterminal.conf

#Removing powerline shell from ~/.bashrc
sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc

