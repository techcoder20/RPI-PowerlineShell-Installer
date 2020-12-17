#!/bin/bash

sudo apt install python3 python-pip
pip install powerline-shell


echo '''function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi ''' >> ~/.bashrc
