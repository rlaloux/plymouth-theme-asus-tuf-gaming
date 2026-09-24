#!/bin/bash
set -euo pipefail

THEME_DIR="/usr/share/plymouth/themes/tuf"

if [[ $EUID -ne 0 ]]; then
    echo "Run this script with sudo:"
    echo "  sudo ./install.sh"
    exit 1
fi

mkdir -p "$THEME_DIR"
cp -a . "$THEME_DIR/"

echo "Installed ASUS TUF Plymouth theme."
echo "Available themes:"
plymouth-set-default-theme --list

echo
echo "Activating theme and rebuilding initramfs..."
plymouth-set-default-theme -R tuf

echo
echo "Done. Reboot to test:"
echo "  systemctl reboot"
