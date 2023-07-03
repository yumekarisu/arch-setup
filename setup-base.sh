#! /bin/bash

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

fonts="	noto-fonts \
	noto-fonts-cjk \
	noto-fonts-emoji \
	noto-fonts-extra \
	ttf-liberation \
	ttf-dejavu"

IME="fcitx5 \
	   fcitx5-gtk \
	   fcitx5-qt \
	   fcitx5-mozc"

sudo pacman -Syu --needed $mesa $intelgpu $amdgpu $audio $fonts $IME
