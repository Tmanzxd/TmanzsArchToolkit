#!/bin/bash

#Startup vars
current_user=$(whoami)

echo "<corepkgs_script> IF you do not want a package, HIT 'n' and Enter [READ CAREFULLY]."

echo "<corepkgs_script> Downloading Microcode Firmware... [CHOOSE AMD OR INTEL}"
sudo pacman -S amd-ucode
sudo pacman -S intel-ucode

echo "<corepkgs_script> Downloading Dependencies..."
sudo pacman -S pacman-contrib glu gtk2 libpng12 fuse2 opencl-driver qtf-xllextras qt5-svg qt5-webengine qt5-websockets qt5-quickcontrols2 qt5-multimedia libxcrypt-compat xmlsec java-runtime python-numpy tbb apr-util libc++ libc++abi

echo "<corepkgs_script> Downloading Text Editor Packages..."
sudo pacman -S vim #install vim
sudo pacman -S neovim #install neovim
sudo pacman -S nano #install nano
sudo pacman -S emacs #etc...

echo "<corepkgs_script> Downloading Code Management/Compiler Packages... [RECOMMENDED]"
sudo pacman -S git gcc openssh base-devel

echo "<corepkgs_script> Downloading Graphics Drivers... [CHOOSE NVIDIA OR AMD]"
sudo pacman -S nvidia nvidia-utils nvidia-settings # Only works with NV110 family (Maxwell) - NV190 family (Ada Lovelace)
sudo pacman -S mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon xf86-video-amdgpu

echo "<corepkgs_script> Downloading Web Browsers..."
sudo pacman -S firefox

echo "<corepkgs_script> Downloading Apps..."
#Security Utilities
sudo pacman -S clamav clamtk rkhunter firewalld
#PC Utilities
sudo pacman -S diskmonitor feh vlc balena-etcher p7zip wine qalculate-qt snapper btrfs-assistant cronie man-db bleachbit filelight
#install vlc compatability plugins
sudo pacman -S vlc-plugin-ffmpeg vlc-plugin-mpeg2 vlc-plugin-x264 vlc-plugin-ass vlc-plugin-matroska vlc-plugin-dvd vlc-plugin-bluray vlc-plugin-srt vlc-plugin-soxr libdvdcss libbluray
#PC Apps
sudo pacman -S libreoffice-still gimp thunderbird steam audacity obs-studio filezilla discord lutris #GOG.com 3rd-party client.

echo "<corepkgs_script> If you wish to delete packages Do: sudo pacman -R {package_name} in the Terminal."
