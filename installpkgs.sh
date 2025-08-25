#!/bin/sh

# Install yay
sudo pacman -Syy
sudo pacman -S --needed base-devel
sudo pacman -S git
cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

# List packages
pkgs_pacman=(
adwaita-dark
blueman
bluez-utils
brightnessctl
btop
clang
fastfetch
firefox
git
gnome-text-editor
gst-plugin-pipewire
helix
kitty
libreoffice-still
ntfs-3g
openjdk21-src
pavucontrol
pipewire
pipewire-alsa
pipewire-jack
pipewire-pulse
pyright
qbittorrent
slurp
smartmontools
swaybg
tlp
tlp-rdw
tree
ttf-jetbrains-mono-nerd
vscode-css-languageserver
vscode-html-languageserver
waybar
wl-clipboard
wofi
wpa_supplicant
xwayland-satellite
zig
zsh
wl-mirror # manual add
)

pkgs_yay=(
stremio
swaylock-effects
vscodium
)

for pkg in "${pkgs_pacman[@]}"; do
  sudo pacman -S --noconfirm "$pkg" 
done

for pkg in "${pkgs_yay[@]}"; do
  yay -S --noconfirm "$pkg"
done
