#!/bin/bash/
#  Install xfce desktop environment & LightDM display manager
sudo pacman -Su xfce4 xfce4-goodies lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

# Enable display manager
sudo systemctl enable --now lightdm
