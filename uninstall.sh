#!/bin/bash

sudo pip uninstall powerline-shell
sed -i '/function _update_ps1() {/,/fi/{d}' ~/.bashrc