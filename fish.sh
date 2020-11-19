#!/bin/bash

echo This script will automatically install fish dependencies.
# Install fish
echo Installing fish shell...
sudo apt-get install fish 1> /dev/null

echo Setting up configuration files...
cp -rfv .fish ~/.config/fish

# Install fisher package manager
echo Installing fisher package manager...
curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher 1> /dev/null

echo Fisher : Installing jethrokuan/fzf ...
fisher install jethrokuan/fzf 1> /dev/null

