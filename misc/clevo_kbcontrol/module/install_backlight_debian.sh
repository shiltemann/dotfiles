#!/bin/bash
# Laptopmetlinux.nl keyboard backlight controller
# Copyright (C) Comexr B.V. The Netherlands
# Custom Linux laptops and Mini computers
# run as sudo ./install_backlight.sh

apt install gcc make -y
sudo apt install linux-headers-$(uname -r)
make && sudo make install
insmod clevo-xsm-wmi.ko
install -m644 clevo-xsm-wmi.ko /lib/modules/$(uname -r)/extra
depmod
tee /etc/modules-load.d/clevo-xsm-wmi.conf <<< clevo-xsm-wmi
update-initramfs -uk all
sudo tee /etc/modprobe.d/clevo-xsm-wmi.conf <<< 'options clevo-xsm-wmi kb_color=white,white,white, kb_brightness=1'
