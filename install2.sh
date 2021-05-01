#!/bin/sh
set -e

sudo zypper install git

sudo git clone https://github.com/azalinux/testing

sudo mkdir /opt/vc
sudo tar xvf pifirmware_libs.tar.gz -C /opt/vc/
sudo ln -s /opt/vc/lib/libvcos.so /usr/lib64/libvcos.so.0
sudo ln -s /opt/vc/lib/libvchiq_arm.so /usr/lib64/libvchiq_arm.so.0
sudo ln -s /opt/vc/lib/libbcm_host.so /usr/lib64/libbcm_host.so.0

sudo tar xvf data.tar.xz -C /

tar xvf control.tar.xz

sudo sh postinst

sudo systemctl enable --now vncserver-x11-serviced
