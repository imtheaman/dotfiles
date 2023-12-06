#!/usr/bin/bash

cp -r .config/* ~/.config/
cp -r .i3/* ~/.i3/
cp -r etc/* /etc/
cp -r share/zsh/* /usr/share/zsh/

# TODO: use filter command to only cp files not folders
cp .bash* ~
cp .gitconfig ~
cp .X* ~
cp .idea* ~
cp .zsh* ~
cp .profile ~
