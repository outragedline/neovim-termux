#!/bin/bash
apt	update --fix-missing
apt upgrade
apt install proot-distro

proot-distro install archlinux
proot-distro login archlinux
