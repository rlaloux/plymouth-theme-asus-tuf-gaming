#!/bin/bash
set -euo pipefail

if [[ $EUID -ne 0 ]]; then
    echo "Run this script with sudo:"
    echo "  sudo ./uninstall.sh"
    exit 1
fi

echo "This removes the custom TUF theme and restores the Nobara text theme."
plymouth-set-default-theme -R text
rm -rf /usr/share/plymouth/themes/tuf

echo "Removed."
