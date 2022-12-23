#! /bin/bash

# essenstial

## graphics

mesa="mesa lib32-mesa"

intelgpu="vulkan-intel"

amdgpu="xf86-video-amdgpu vulkan-radeon \
	lib32-vulkan-radeon"

## audio

audio="pipewire wireplumber pipewire-alsa pipewire-pulse pipewire-jack \
       lib32-pipewire lib32-pipewire-jack"

## sway

sway="sway \
      swaybg \
      waybar \
      wlroots \
      xorg-xwayland"
      
wmUtils="network-manager-applet \
      pavucontrol \
      brightnessctl \
      libsixel \
      dconf-editor \
      gamescope \
      grim \
      wl-clipboard \
      slurp"

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
	   fcitx5-gtk \
	   fcitx5-qt \
	   fcitx5-mozc \
	   qbittorrent \
	   mpv \
	   btop \
	   neofetch \
	   zsh \
	   zsh-completions \
	   cpupower"

filemanager="pcmanfm-qt \
	lximage-qt \
	gvfs \
	gvfs-mtp \
	tumbler \
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
       autotiling \
       cliphist"

appsAUR="memento \
	 anki-official-binary-bundle \
	 webcord \
	 spotify-edge \
	 an-anime-game-launcher-gtk-bin \
	 prismlauncher-bin"

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd
rm -rf yay-bin
sudo pacman -Syu --needed $mesa $intelgpu $amdgpu $audio
sudo pacman -S --needed $sway $wmUtils $fonts $essential $filemanager $winedeps
yay -S $wmAUR $appsAUR --sudoloop
