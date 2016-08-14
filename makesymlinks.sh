#!/bin/bash
###############################
This script automates dotfiles maintenance.
###############################

# Variables

dotDir=~/dotfiles
dotFiles="vimrc"
dotOldFiles=~/.oldfiles.old

# Code

for file in $dotFiles; do
    ln -s $dotFiles/$file ~/.$file
done
