#!/bin/bash
apt	update --fix-missing
apt upgrade
apt install proot-distro termux-api

proot-distro install archlinux
proot-distro login archlinux
