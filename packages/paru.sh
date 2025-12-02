#!/bin/bash

#Download yay aur manager
git clone "https://aur.archlinux.org/paru.git"
cd paru
makepkg -si
cd ..
mv paru ~

#Install dependencies
paru -S libcprime

#PC Utilities
paru -S corestats coretime arttime-git tkpacman

#PC Apps
paru -S freetube-bin brave-bin # Ad-Free YouTube & Brave Browser

#Download DaVinci free video editor.
git clone https://aur.archlinux.org/davinci-resolve.git
cd davinci-resolve 
makepkg -si
cd ..
mv davinci-resolve ~
