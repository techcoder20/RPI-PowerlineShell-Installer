#!/bin/bash

sudo apt install python3 python-pip fonts-powerline fonts-fantasque-sans
pip install powerline-shell
mkdir ~/RPI-PowerlineShell-Installer/.backup
sudo cp ~/.config/lxterminal ~/RPI-PowerlineShell-Installer/.backup
sudo rm -r ~/.config/lxterminal
sudo cp ~/RPI-PowerlineShell-Installer/lxterminal ~/.config

sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc

echo '''function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi ''' >> ~/.bashrc
