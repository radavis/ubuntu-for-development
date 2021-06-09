#!/usr/bin/env bash

# instructions from https://www.kevin-custer.com/blog/disabling-snaps-in-ubuntu-20-04/

snap_packages=("snap-store" "gtk-common-themes" "gnome-3-34-1804" "core18")
for snap_package in ${snap_packages[@]}; do
  sudo snap remove $snap_package
done

sudo umount /snap/core/current
sudo apt purge snapd

snap_dirs=("$HOME/snap" "/snap" "/var/snap" "/var/lib/snapd")
for snap_dir in ${snap_dirs[@]}; do
  [ -d "$snap_dir" ] && sudo rm -rf "$snap_dir"
done
