#!/bin/bash

$transform="https://gist.githubusercontent.com/mrpotatofactory/88f62a9df26e4e1480c3d57f0ef8dd9b/raw/69132cdf43813601474ed2a8c1c50bb52eeb7834/FunWithTransformations.py"

echo This script will automatically install fish dependencies.
# Install fish
echo Installing fish shell...
sudo apt-get install fish 1> /dev/null

echo Setting up configuration files...
cp -rfv .fish ~/.config/fish

# Install fisher package manager
echo Installing fisher package manager...
curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher 1> /dev/null

echo Fish : Installing various scripts...
curl $transform > /usr/local/bin/transform
chmod u+x /usr/local/bin/transform

echo Fisher : Installing jethrokuan/fzf ...
fisher install jethrokuan/fzf 1> /dev/null

