#!/bin/bash
# Laptopmetlinux.nl Manjaro keyboard backlight controller
# Copyright (C) Comexr B.V. The Netherlands
# Custom Linux laptops and Mini computers
# run as sudo ./install_backlight_manjaro.sh

pacman -Syyu
pacman -Sy gcc make
pacman -Sy $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')
make && sudo make install
insmod clevo-xsm-wmi.ko
install -m644 clevo-xsm-wmi.ko /lib/modules/$(uname -r)/extra
depmod
tee /etc/modules-load.d/clevo-xsm-wmi.conf <<< clevo-xsm-wmi
mkinitcpio -p linux56
sudo tee /etc/modprobe.d/clevo-xsm-wmi.conf <<< 'options clevo-xsm-wmi kb_color=white,white,white, kb_brightness=1'
