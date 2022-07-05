#!/bin/bash

apt update 

apt upgrade --fix-missing

pkg install python nodejs-lts git neovim  lua54 ripgrep fd termux-api

pip install --upgrade pip

pip install pynvim

git clone https://github.com/outragedline/neovim-termux .config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
