# realvnc-server-aarch64-opensuse

******** Still Testing - BETA ******

RealVNC Server Version:    6.7.2.43081

This repository is for installing RealVNC Server ARM64 edition on OpenSuse Leap 15.2+ / Tumblweed for your Raspberry Pi device.  Has been tested using a Pi4 with 8gb RAM and on multiple desktop environments including XFCE, LXQT & Plasma.

INSTALLATION::

To install, clone the git respository and use the included install script:

$ zypper install git                           

$ git clone https://github.com/azalinux/realvnc-server-aarch64-opensuse

$ ./install.sh

No activation key is needed if using on a Raspberry Pi device.  ** This is intended for Personal Use only! **



I may produce a RPM binary at some point in the future however at this stage a manual install script will suffice.


**Known Issues**

Non Root users currently don't get added to the allowed User list in the RealVNC Server Options (This issue also occurs on PC's running the AMD64 opensuse platform too!).   To get around this, your linux username will need to be added to the 'wheel' group in Opensuse user management:

$ sudo usermod -aG wheeel username

Other work arounds include:

RIGHT click on the VNC logo in the system tray and click Options.  Then click Users & Permissions, then click Add to input your current linux username.

OR

RIGHT click on the VNC logo in the system tray and click Options.  In the Security Tab, change the Authentication method to VNC Password and use a single nominated password instead.


