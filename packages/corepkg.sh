#!/bin/bash

#Startup vars
current_user=$(whoami)

echo "<corepkgs_script> IF you do not want a package, HIT 'n' and Enter [READ CAREFULLY]."

echo "<corepkgs_script> Downloading Dependencies..."
sudo pacman -Sy glu gtk2 libpng12 fuse2 opencl-driver qtf-xllextras qt5-svg qt5-webengine qt5-websockets qt5-quickcontrols2 qt5-multimedia libxcrypt-compat xmlsec java-runtime python-numpy tbb apr-util libc++ libc++abi

echo "<corepkgs_script> Downloading Text Editor Packages..."
sudo pacman -Sy vim #install vim
sudo pacman -Sy neovim #install neovim
sudo pacman -Sy nano #install nano
sudo pacman -Sy emacs #etc...

echo "<corepkgs_script> Downloading Code Management/Compiler Packages... [RECOMMENDED]"
sudo pacman -Sy git gcc openssh base-devel

echo "<corepkgs_script> Downloading Graphics Drivers... [CHOOSE NVIDIA OR AMD]"
sudo pacman -Syu nvidia nvidia-utils nvidia-settings # Only works with NV110 family (Maxwell) - NV190 family (Ada Lovelace)
sudo pacman -Syu mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon xf86-video-amdgpu

echo "<corepkgs_script> Downloading Web Browsers..."
sudo pacman -Sy firefox

echo "<corepkgs_script> Downloading Apps..."
#Antivirus Utilities
sudo pacman -Sy clamav clamtk rkhunter
#PC Utilities
sudo pacman -Sy diskmonitor feh vlc balena-etcher p7zip wine qalculate-qt snapper btrfs-assistant cronie
#install vlc compatability plugins
sudo pacman -Sy vlc-plugin-ffmpeg vlc-plugin-mpeg2 vlc-plugin-x264 vlc-plugin-ass vlc-plugin-matroska vlc-plugin-dvd vlc-plugin-bluray vlc-plugin-srt vlc-plugin-soxr libdvdcss libbluray
#PC Apps
sudo pacman -Sy libreoffice-still gimp thunderbird steam audacity obs-studio filezilla discord lutris #GOG.com 3rd-party client.

echo "<corepkgs_script> If you wish to delete packages Do: sudo pacman -R {package_name} in the Terminal."
