#!/bin/bash

#Removing powerline shell with pip
sudo pip3 uninstall -y powerline-shell

sed -i '/FontName/c\FontName=Fantasque Sans Mono Bold 11' ~/.config/xfce4/terminal/terminalrc
sed -i '/fontname/c\fontname=Fantasque Sans Mono Bold 11' ~/.config/lxterminal/lxterminal.conf

#Removing powerline shell from ~/.bashrc
sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc

