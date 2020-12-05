#!/bin/bash
# Laptopmetlinux.nl keyboard backlight controller
# Copyright (C) Comexr B.V. The Netherlands
# Custom Linux laptops and Mini computers
# run as sudo ./install_backlight.sh

dnf install gcc make -y
yum install kernel-devel-`uname -r`
make && sudo make install
insmod clevo-xsm-wmi.ko
install -m644 clevo-xsm-wmi.ko /lib/modules/$(uname -r)/extra
depmod
tee /etc/modules-load.d/clevo-xsm-wmi.conf <<< clevo-xsm-wmi
dracut --force --add multipath --include /etc/multipath
sudo tee /etc/modprobe.d/clevo-xsm-wmi.conf <<< 'options clevo-xsm-wmi kb_color=white,white,white, kb_brightness=1'
