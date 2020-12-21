#!/bin/bash

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

#Installing dependencies
sudo apt install python3 python-pip fonts-powerline fonts-fantasque-sans  || error "Failed to install dependencies"

#Installing powerline shell with pip3
sudo pip3 install powerline-shell || error "Failed to install powerline shell with pip3"

echo fontname >> ~/.config/lxterminal/lxterminal.conf
sed -i '/fontname/c\fontname=Fantasque Sans Mono Bold 11' ~/.config/lxterminal/lxterminal.conf
echo FontName >> ~/.config/xfce4/terminal/terminalrc
sed -i '/FontName/c\FontName=Fantasque Sans Mono 12' ~/.config/xfce4/terminal/terminalrc

#Removing powerline in ~/.bashrc if already there
sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc

#Adding powerling to ~/.bashrc
echo '''function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi ''' >> ~/.bashrc




