#!/bin/bash/
#  Install xfce desktop environment & LightDM display manager
sudo pacman -S xfce4 xfce4-taskmanager xfce4-goodies lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

# Enable display manager
sudo systemctl enable --now lightdm
