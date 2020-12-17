#!/bin/bash

pip3 uninstall -y powerline-shell
sudo rm -r ~/.config/lxterminal
sudo cp -r ~/RPI-PowerlineShell-Installer/.backup/lxterminal ~/.config

sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc