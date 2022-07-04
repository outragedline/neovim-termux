#!/bin/bash

apt update && apt uograde --fix-missing

pkg install python nodejs-lts git neovim  lua54 ripgrep fd termux-apix

pip install --upgrade pip

pip install pynvim

git clone https://github.com/outragedline/neovim-termux .config/nvim
