#! /bin/bash

# essenstial

## graphics

mesa="mesa lib32-mesa"

intelgpu="vulkan-intel \
	lib32-vulkan-intel"

amdgpu="xf86-video-amdgpu \
	vulkan-radeon \
	lib32-vulkan-radeon"

## audio

audio=" pipewire \
	pipewire-audio \
	wireplumber \
	pipewire-pulse \
   	lib32-pipewire \
    	pipewire-jack \
    	lib32-pipewire-jack"

xorg="xorg-server \
    xorg-xinit"

plasma="plasma-desktop \
	sddm \
	sddm-kcm
	plasma-pa \
	konsole \
	gwenview \
	dolphin \
	ark \
	unrar \
	discover \
	flatpak-kcm"
      
## fonts

fonts="	noto-fonts \
	noto-fonts-cjk \
	noto-fonts-emoji \
	noto-fonts-extra \
	ttf-liberation \
	ttf-dejavu"

## Apps
essential="fcitx5 \
	   fcitx5-gtk \
	   fcitx5-qt \
	   fcitx5-mozc \
	   kcm-fcitx5 \
	   btop \
	   neofetch \
	   imagemagick \
	   libsixel \
	   zsh \
	   zsh-completions \
	   cpupower \
	   github-cli \
	   flatpak"

gaming="gamemode \
     	wine-staging"

## AUR

sudo pacman -Syu --needed $mesa $intelgpu $amdgpu $audio $fonts
sudo pacman -S --needed $xorg $plasma $essential $gaming
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user firefox discord spotify qbittorrent memento
