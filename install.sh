#!/bin/sh
set -e

zypper install git

git clone https://github.com/azalinux/testing

mkdir /opt/vc
tar xvf pifirmware_libs.tar.gz -C /opt/vc/
ln -s /opt/vc/lib/libvcos.so /usr/lib64/libvcos.so.0
ln -s /opt/vc/lib/libvchiq_arm.so /usr/lib64/libvchiq_arm.so.0
ln -s /opt/vc/lib/libbcm_host.so /usr/lib64/libbcm_host.so.0

tar xvf data.tar.xz -C /

tar xvf control.tar.xz

sh postinst

systemctl enable --now vncserver-x11-serviced
