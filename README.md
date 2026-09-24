# TUF Gaming Plymouth theme

A minimal Plymouth boot theme inspired by the ASUS TUF Gaming Windows boot screen:

- black background
- white ASUS TUF Gaming logo
- small animated white dot spinner
- adaptive logo/spinner sizing

## Install on Nobara/Fedora

### Manual installation

1. Copy this directory:

    sudo cp -a ./* /usr/share/plymouth/themes/

2. Confirm Plymouth sees it:

    plymouth-set-default-theme --list

3. Select it and rebuild the initramfs:

    sudo plymouth-set-default-theme -R tuf

4. Reboot.

### Installation script

    ./install.sh

## Revert

If your previous theme was `text`:

    sudo plymouth-set-default-theme -R text

## Uninstall

### Manual uninstall

First change the theme in use by selecting one in the list:

    plymouth-set-default-theme --list

Then set a default theme

    sudo plymouth-set-default-theme -R [theme]

Finally, remove the theme:

    sudo rm -rf /usr/share/plymouth/themes/tuf

### Uninstallation script

    ./uninstall.sh

## Preview

The supplied `preview.gif` is only a visual approximation; actual positioning is calculated by the Plymouth script at boot resolution.

