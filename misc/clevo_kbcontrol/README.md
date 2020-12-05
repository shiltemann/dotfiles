# clevo-xsm-wmi

Kernel module for keyboard backlighting of Clevo SM series notebooks.
(And several EM/ZM/DM series models)

Based upon tuxedo-wmi, created by TUXEDO Computers GmbH.
Customized and edited by Laptop met Linux NL - Comexr B.V. The Netherlands
Read more: https://laptopmetlinux.nl
Last edited: April 2020

### Additions over tuxedo-wmi
* Sysfs interface to control the brightness, mode, colour,
  on/off state after the module has loaded.
  In the original code you can only set these before the module loads.
* Small QT based application to visually control the keyboard lighting using the sysfs interface.
* Cycle through colours rather than modes with the keyboard key.
* Experimental support for touchpad illumination / lower led bar on the front of the machine.

### Supported Devices

| Product Name         | Clevo Name             |
|----------------------|------------------------|
| NHxxRZQ              | Clevo NH55RZQ          |
| NHxxRZQ              | Clevo NH70RZQ          |
| NH50_70RH            | Clevo NH55RHQ          |
| NH50_70RH            | Clevo NH70RHQ          |
| NL40_50CU            | Clevo NL51CU           |
| N150CU               | Clevo N151CU           |
| P7xxDM(-G)           | Clevo P7xxDM(-G)       |
| P7xxDM2(-G)          | Clevo P7xxDM2(-G)      |

### Building

Dependencies:

* standard compile stuff (c compiler, make, etc)
* linux-headers

Building:
```bash
# For the module
$ cd module && make && sudo make install

# For the utility
See building instruction under ui/README.md
```

### Usage

Adjusting keyboard settings:
```bash
$ sudo clevo-xsm-wmi
```

Restoring state during boot:
```bash
# With the module:
$ modinfo clevo-xsm-wmi
$ sudo tee /etc/modprobe.d/clevo-xsm-wmi.conf <<< options clevo-xsm-wmi kb_color=white,white,white kb_brightness=1

# With systemd:
$ sudo systemctl enable clevo-xsm-wmi
$ sudo systemctl start clevo-xsm-wmi

# With others:
run '/usr/bin/clevo-xsm-wmi -r' at boot to restore state
run '/usr/bin/clevo-xsm-wmi -s' at shutdown/change to save state
```

### Distributions

Arch Linux: [Module](https://aur.archlinux.org/packages/clevo-xsm-wmi/) [DKMS](https://aur.archlinux.org/packages/clevo-xsm-wmi-dkms/) [Utility](https://aur.archlinux.org/packages/clevo-xsm-wmi-util/)

### Common issues

* 'Can't read private key' during 'make install'.

This is a common issue on Ubuntu as the module isn't signed so manual install is required.
```bash
$ sudo install -m644 clevo-xsm-wmi.ko /lib/modules/$(uname -r)/extra
$ sudo depmod
```
* Module installed but not loaded during boot.

Specify that the module should be loaded just in case.
```bash
$ sudo tee /etc/modules-load.d/clevo-xsm-wmi.conf <<< clevo-xsm-wmi
```

* I'm absolutely positive that the module is installed but still nothing happens!
```bash
$ sudo modprobe clevo-xsm-wmi
$ dmesg | grep clevo
```
If it returns no line such as 'clevo_xsm_wmi: Model Clevo P15SM found', then your model isn't supported.
Please open an issue and supply the output of 'uname -a', 'sudo dmidecode' and 'dmesg | grep clevo'.

### Pull Requests
Please create a pull request into the testing branch. After review and testing we are commiting in the master branch.

### License
This program is free software;  you can redistribute it and/or modify
it under the terms of the  GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or (at
your option) any later version.

This program is  distributed in the hope that it  will be useful, but
WITHOUT  ANY   WARRANTY;  without   even  the  implied   warranty  of
MERCHANTABILITY  or FITNESS FOR  A PARTICULAR  PURPOSE.  See  the GNU
General Public License for more details.

You should  have received  a copy of  the GNU General  Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
