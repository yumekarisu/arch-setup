#! /bin/bash

# essenstial

## graphics

mesa=" mesa lib32-mesa"

intelgpu="vulkan-intel"

amdgpu="xf86-video-amdgpu vulkan-radeon \
	lib32-vulkan-radeon"

## audio

audio="pipewire wireplumber pipewire-alsa pipewire-pulse pipewire-jack \
       lib32-pipewire lib32-pipewire-jack"

## sway

sway="sway \
      swaybg \
      swaylock \
      swayidle \
      gammastep \
      waybar \
      mako \
      kanshi \
      network-manager-applet \
      pavucontrol \
      wlroots \
      xorg-xwayland \
      brightnessctl"

## fonts

fonts="otf-font-awesome \
	noto-fonts \
	noto-fonts-cjk \
	noto-fonts-emoji \
	noto-fonts-extra \
	ttf-liberation \
	ttf-dejavu"

## Apps
essential="firefox \
	   steam \
	   gamemode \
	   wine-staging \
	   fcitx5 \
	   fcitx5-mozc \
	   qbittorrent \
	   mpv \
	   btop \
	   neofetch \
	   zsh \
	   zsh-completions \
	   lxappearance"

filemanager="thunar \
	gvfs \
	gvfs-mtp \
	tumbler \
	thunar-volman \
	thunar-archive-plugin \
	thunar-media-tags-plugin \
	xarchiver \
	ffmpegthumbnailer"

winedeps="giflib \
	lib32-giflib \
	libpng \
	lib32-libpng \
	libldap \
	lib32-libldap \
	gnutls \
	lib32-gnutls\
        mpg123 \
	lib32-mpg123 \
	openal \
	lib32-openal \
	v4l-utils \
	lib32-v4l-utils \
	libpulse \
	lib32-libpulse \
	libgpg-error \
        lib32-libgpg-error \
	alsa-plugins \
	lib32-alsa-plugins \
	alsa-lib \
	lib32-alsa-lib \
	libjpeg-turbo \
	lib32-libjpeg-turbo \
        sqlite \
	lib32-sqlite \
	libxcomposite \
	lib32-libxcomposite \
	libxinerama \
	lib32-libgcrypt \
	libgcrypt \
	lib32-libxinerama \
        ncurses \
	lib32-ncurses \
	ocl-icd \
	lib32-ocl-icd \
	libxslt \
	lib32-libxslt \
	libva \
	lib32-libva \
	gtk3 \
        lib32-gtk3 \
	gst-plugins-base-libs \
	lib32-gst-plugins-base-libs \
	vulkan-icd-loader \
	lib32-vulkan-icd-loader"

## AUR
wmAUR="tofi \
       autotiling"

appsAUR="memento \
	 anki-official-binary-bundle \
	 alacritty-sixel-git \
	 webcord \
	 mangohud-common \
	 mangohud \
	 lib32-mangohud \
	 goverlay-bin \
	 spotify-snapstore \
	 an-anime-game-launcher-gtk-bin \
	 prismlauncher-bin \
	 python-ffmpeg-patched-git"

git clone https://aur.archlinux.org/yay.git
cd yay-bin
makepkg -si
cd
rm -rf yay-bin
sudo pacman -Syu $mesa $intelgpu $amdgpu $audio
sudo pacman -S $sway $fonts $essential $filemanager $winedeps
yay -S $wmAUR $appsAUR
