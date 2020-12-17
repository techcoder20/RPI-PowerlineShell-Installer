#!/bin/bash

#Installing dependencies
sudo apt install python3 python-pip fonts-powerline fonts-fantasque-sans 

#Installing powerline shell with pip3
pip3 install powerline-shell

#Creating back directory
mkdir ~/RPI-PowerlineShell-Installer/.backup

#Creating backup of lxterminal configs
sudo cp -r ~/.config/lxterminal ~/RPI-PowerlineShell-Installer/.backup

#Copying powerline shell configs
sudo cp -r ~/RPI-PowerlineShell-Installer/lxterminal ~/.config

#Removing powerline in ~/.bashrc if already there
sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc

#Adding powerling to ~/.bashrc
echo '''function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi ''' >> ~/.bashrc
