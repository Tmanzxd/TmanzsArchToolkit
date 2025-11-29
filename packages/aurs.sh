#!/bin/bash

#Download yay aur manager
git clone "https://aur.archlinux.org/yay-git.git"
cd yay-git
makepkg -si
cd ..
mv yay-git ~

#Install dependencies
yay -S libcprime

#PC Utilities
yay -S corestats coretime arttime-git tkpacman

#PC Apps
yay -S freetube-bin brave-bin # Ad-Free YouTube & Brave Browser

#Download DaVinci free video editor.
git clone https://aur.archlinux.org/davinci-resolve.git
cd davinci-resolve 
makepkg -si
cd ..
mv davinci-resolve ~
