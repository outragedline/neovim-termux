## sobre

Este é um repositório  dedicado a ajudar pessoas que buscam programar mesmo  não tendo um computador

É recomendado ler a [wiki](https://github.com/outragedline/neovim-termux/wiki) assim que terminar a instalação,lá tem tutoriais, dicas e bastante conteúdo que pode ser útil

Contribuições são bem vindas, este repositório é principalmente documentação, e eu não atualizo e nem pretendo atualizar muito ele ja que sequer uso mais termux
porém, ele continua sendo útil para muita gente, então minhas contribuições continuarão ocasionalmente
## Instalação

Primeiro teremos que  instalar o termux, um emulador de terminal baseado em debian

Ele está disponível pra download na  play store,porém essa versão é completamente desatualizada e não deve ser baixada

Você deve instalar diretamente no  github ou pelo f-droid


Os links abaixo levam diretamente aos apks do fdroid,baixe todos e os instale através do seu gerenciador de arquivos

[clique aqui para baixar o termux](https://f-droid.org/repo/com.termux_118.apk)

[clique aqui para baixar o termux styling](https://f-droid.org/repo/com.termux.styling_29.apk)

[Clique aqui para instalar o termux api](https://f-droid.org/repo/com.termux.api_51.apk)




### Instalação neovim
Após instalar o termux cole esse comando


```
apt	update --fix-missing
apt upgrade
apt install termux-api

```
#### Proot-distro
Opcionalmente, você pode baixar o proot-distro pra usar uma especie de emulador pra uma distro linux, no caso o archlinux

O proot-distro irá ocupar de 3GB a 5GB

Recomendo fortemente que você baixe o proot-distro por diversos motivos, mas caso não possa, pule pro topico [sem proot-distro](#sem-proot-distro)

```
apt install proot-distro
proot-distro install archlinux
proot-distro login archlinux
```


Você saberá que o código terminou quando aparecer algo assim na tela `[root@localhost ~]#`

E então, você irá rodar o codigo abaixo, mas **atenção**, no codigo abaixo eu coloquei _username_, para representar os locais onde vc deve por um nome de usuario

Então crie um username pra você e com ele substitua todos os 5 locais onde aparece _username_
```
mkdir /home/outragedline/

echo "#!/bin/bash" > /data/data/com.termux/files/home/.bashrc
echo ". proot-distro login archlinux --user username" >> /data/data/com.termux/files/home/.bashrc

useradd username
passwd username

pacman -Syu neovim nodejs-lts-gallium python3 python-pip ripgrep fd lua fzf gcc npm sudo

pip install wheel pynvim
npm i -g neovim

git clone https://github.com/outragedline/neovim-termux /home/username/.config/nvim
```


#### Sem proot-distro
Sem proot-distro é só rodar isso aí, bem mais simples, mas como ja disse, não recomendo usar dessa forma, a não ser que seu celular não rode o proot-distro
```
pkg install python nodejs-lts git neovim  lua54 ripgrep fd
pip install --upgrade pip
pip install pynvim
git clone https://github.com/outragedline/neovim-termux .config/nvim
```



## Fonte e ícones
Para que os ícones sejam mostrados corretamente é necessário mudar a fonte padrão do termux para uma nerdfont

Algumas nerdfonts já vem instaladas com o  termux styling,  só é necessário seguir esse passo a passo pra habilitar:

1. Apertar e segurar em algum lugar da tela até aparecerem as opções __copy, paste e more...__
1. Escolher a opção __more...__ 
1. No menu, escolher a opcão style
1. Clicar em __choose font__ e então escolher alguma

A minha recomendação fica pras fontes hack e firacode, porém a escolha é sua

[mais detalhes](https://github.com/outragedline/neovim-termux/wiki/Termux#personaliza%C3%A7%C3%A3o)



Com isso você já tem uma ótima ferramenta, leia a [wiki](https://github.com/outragedline/neovim-termux/wiki) para aprender a utilizar e baixar outras coisas legais que podem te  auxiliar


##  Suporte
Se tiver algum bug ou erro confira [aqui](https://github.com/outragedline/neovim-termux/wiki/Poss%C3%ADveis-erros-e-bugs), se isso não te ajudar, abra uma issue
