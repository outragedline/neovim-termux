#!/bin/bash
echo "Defina um nome de usuário, escolha somente letras e numeros ou vc pode ter problemas: "
read username
mkdir /home/$username

echo "#!/bin/bash" > /data/data/com.termux/files/home/.bashrc
echo ". proot-distro login archlinux -u $username" >> /data/data/com.termux/files/home/.bashrc

useradd $username
passwd $username

pacman -Syu neovim nodejs-lts-gallium python3 python-pip ripgrep fd lua fzf gcc npm sudo

pip install wheel pynvim 
npm i -g neovim

git clone https://github.com/outragedline/neovim-termux /home/$username/.config/nvim
