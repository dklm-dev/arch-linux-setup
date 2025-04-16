#!/bin/bash

pacman -Syu --noconfirm
pacman -S gnome-shell gnome-session gdm gnome-tweaks net-tools net-tools base-devel

# Arch User Repository (AUR)
git clone https://aur.archlinux.org/yay.git

# Install UAR
cd ~/yay/
makepkg -si

# Activate Gnome
systemctl enable gdm
systemctl start gdm


echo "Arch Linux has been installed"


