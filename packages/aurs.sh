#!/bin/bash

#Download yay aur manager
git clone "https://aur.archlinux.org/yay-git.git"
cd yay-git
makepkg -si
cd $(find . -type d -name "TmanzsArchToolkit" -print -quit)
mv ~/TmanzsArchToolkit/yay-git ~

#Install dependencies
yay -S libcprime

#PC Utilities
yay -S corestats
yay -S coretime
yay -S arttime-git
yay -S tkpacman

#PC Apps
yay -S freetube-bin #Ad-Free YouTube
yay -S brave-bin # Brave Browser

#Download DaVinci free video editor.
git clone https://aur.archlinux.org/davinci-resolve.git
cd davinci-resolve 
makepkg -si
cd $(find . -type d -name "TmanzsArchToolkit" -print -quit)
mv ~/TmanzsArchToolkit/davinci-resolve ~
