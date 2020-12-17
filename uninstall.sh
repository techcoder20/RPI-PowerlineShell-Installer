#!/bin/bash

sudo pip uninstall powerline-shell
sudo rm -r ~/.config/lxterminal
sudo cp ~/RPI-PowerlineShell-Installer/.backup/lxterminal ~/.config

sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc