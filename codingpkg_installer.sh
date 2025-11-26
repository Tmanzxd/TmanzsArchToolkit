#!/bin/bash

sudo pacman -Sy sqlite
#sudo pacman -Sy nodejs npm 
#Due to security reasons, commenting out nodejs and npm.
#See the following link as to why.
#about.gitlab.com/blog/gitlab-discovers-widespread-npm-supply-chain-attack/ 
sudo pacman -Sy unity-installer-arch
#sudo pacman -Sy xorg lightdm lightdm-gtk-greeter
#sudo systemctl enable lightdm
sudo pacman -Sy dotnet-sdk
sudo pacman -Sy r
sudo yay -Sy rstudio-desktop
sudo pacman -Sy code #Install visual studio code
sudo pacman -Sy jre-openjdk #Install Java JREjdk
