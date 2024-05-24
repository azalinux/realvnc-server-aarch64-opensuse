#!/bin/sh
set -e

sudo zypper install -n system-group-wheel

myvar=$(whoami)
sudo usermod -aG wheel $myvar

sudo tar xvf data.tar.xz -C /

tar xvf control.tar.xz

sudo sh postinst

sudo systemctl enable --now vncserver-x11-serviced
