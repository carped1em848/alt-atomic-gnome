#!/bin/bash
set -euo pipefail

echo "::group:: ===$(basename "$0")==="

# Базовые утилиты и инструменты
BASIC_PACKAGES=(
  htop
  fastfetch
  nvtop
  notify-send
  zsh
  zsh-completions
  starship
  bash-completion
  inxi
  openssh-server
  iucode_tool
  systemd-ssh-agent
  ptyxis
  docker-engine
  gparted
  obs-studio
  mpd
  plattenalbum
  aplay
  mdadm
  ffmpeg
)

GAMING_PACKAGES=(
  i586-steam
  i586-xorg-drv-radeon
  i586-xorg-dri-radeon
  i586-xorg-dri-swrast
  i586-libGL
  i586-libEGL
  i586-libxatracker
  i586-libgbm
  i586-libGLES
  i586-libGLX
  i586-libglvnd
  i586-libnsl1
  portproton
  i586-libvulkan1
  i586-libd3d
  i586-libgio
  i586-libnm
  i586-libnss
  i586-glibc-nss
  i586-glibc-pthread
  i586-libunwind
)

# Генератор ZRAM
ZRAM_PACKAGES=(
  zram-generator
)

# GNOME — базовые сеансы (Wayland/X11)
GNOME_SESSION_PACKAGES=(
  gnome-session-wayland
  gnome-session-xsession
)

# GNOME — основные компоненты Shell и связанные пакеты
GNOME_SHELL_PACKAGES=(
  gnome-control-center
  gnome-shell
  gnome-shell-extensions
  gnome-tweaks
  dconf-editor
  gnome-keyring-ssh
  gnome-extension-manager
  gnome-shell-extension-appindicator
  gnome-shell-extension-dash-to-dock
  gnome-shell-extension-blur-my-shell
)

# GNOME — приложения и утилиты
GNOME_DESKTOP_APPS=(
  gnome-user-docs
  gnome-tour
  gnome-system-monitor
  gnome-logs
  gnome-calculator
  gnome-calendar
  gnome-characters
  gnome-text-editor
  clapper
  loupe
  gnome-weather
  gnome-clocks
  gnome-maps
  gnome-browser-connector
  gnome-software
  gnome-console
)

# GNOME — темы, шрифты и оформление
GNOME_THEMES=(
  gtk3-theme-adw-gtk3
  gnome-backgrounds
  pinentry-gnome3
  yelp
  gnome-icon-theme
  gnome-icon-theme-symbolic
  gnome-themes-extra
  libgtk2-engine-adwaita
  fonts-otf-abattis-cantarell
  fonts-ttf-cjkuni-ukai
  fonts-ttf-liberation
  fonts-ttf-dejavu
)

# Nautilus (файловый менеджер) и связанные пакеты
NAUTILUS_PACKAGES=(
  nautilus-python
  gvfs-backends
  fuse-gvfs
  nautilus
  nautilus-share
  samba-usershares
  file-roller
)

# Прочие приложения
MISC_APPS=(
  virt-manager
  firefox
  papers
  power-profiles-daemon
)

# Xorg-драйверы для различных GPU и устройств
DRIVERS=(
  xorg-drv-libinput
  xorg-drv-qxl
  xorg-drv-spiceqxl
  xorg-drv-intel
  xorg-drv-amdgpu
  xorg-drv-vmware
  xorg-drv-nouveau
  xorg-dri-swrast
)

# Wayland/Qt/Vulkan утилиты
WAYLAND_QT=(
  qt5-wayland
  qt6-wayland
  wayland-utils
  vulkan-tools
)

# Аудиоподсистема (PipeWire)
AUDIO_PACKAGES=(
  pipewire
  wireplumber
)

# Сеть и печать (Avahi, CUPS, fwupd, etc.)
NETWORK_PRINT_PACKAGES=(
  avahi-daemon
  cups-browsed
  fwupd
  libnss-mdns
  wsdd
)

apt-get install -y \
  "${BASIC_PACKAGES[@]}" \
  "${ZRAM_PACKAGES[@]}" \
  "${GNOME_SESSION_PACKAGES[@]}" \
  "${GNOME_SHELL_PACKAGES[@]}" \
  "${GNOME_DESKTOP_APPS[@]}" \
  "${GNOME_THEMES[@]}" \
  "${NAUTILUS_PACKAGES[@]}" \
  "${MISC_APPS[@]}" \
  "${DRIVERS[@]}" \
  "${WAYLAND_QT[@]}" \
  "${AUDIO_PACKAGES[@]}" \
  "${GAMING_PACKAGES[@]}" \
  "${NETWORK_PRINT_PACKAGES[@]}"

echo "::endgroup::"
