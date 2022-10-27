#!/bin/bash
echo "Defina um nome de usuário: "
read username

echo "#!/bin/bash" > /data/data/com.termux/files/home/.bashrc
echo ". proot-distro login archlinux -u $username" >> /data/data/com.termux/files/home/.bashrc

echo "Defina uma senha pro seu usuário: "
read password

useradd $username
passwd $username $password

pacman -Syu neovim nodejs-lts-gallium python3 python-pip ripgrep fd lua fzf gcc npm sudo

pip install wheel pynvim 
npm i -g neovim

git clone https://github.com/outragedline/nvim /home/$username/.config/nvim
