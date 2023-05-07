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
	plasma-pa \
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
essential="firefox \
	   fcitx5 \
	   fcitx5-gtk \
	   fcitx5-qt \
	   fcitx5-mozc \
	   kcm-fcitx5 \
	   qbittorrent \
	   mpv \
	   btop \
	   neofetch \
	   imagemagick \
	   libsixel \
	   zsh \
	   zsh-completions \
	   cmus \
	   cpupower \
	   github-cli \
	   flatpak \
       foot"

gaming=" steam \
	 gamemode \
     wine-staging"

## AUR
appsAUR="an-anime-game-launcher-bin \
	 opentabletdriver"

sudo pacman -Syu --needed $mesa $intelgpu $amdgpu $audio
sudo pacman -S --needed $xorg $plasma $fonts $essential $gaming 
yay -S $appsAUR --sudoloop
