## sobre

Este é um repositório  dedicado a ajudar pessoas que buscam programar mesmo  não tendo um computador

É recomendado ler a [wiki](https://github.com/outragedline/neovim-termux/wiki) assim que terminar a instalação,lá tem tutoriais, dicas e bastante conteúdo que pode ser útil

## Instalação

Primeiro teremos que  instalar o termux, um emulador de terminal baseado em debian

Ele está disponível pra download na  play store,porém essa versão é completamente desatualizada e não deve ser baixada

Você deve instalar diretamente no  github ou pelo f-droid


Os links abaixo levam diretamente aos apks do fdroid,baixe todos e os instale através do seu gerenciador de arquivos

[clique aqui para baixar o termux](https://f-droid.org/repo/com.termux_118.apk)

[clique aqui para baixar o termux styling](https://f-droid.org/repo/com.termux.styling_29.apk)

[Clique aqui para instalar o termux api](https://f-droid.org/repo/com.termux.api_51.apk)



#### Atenção
Nesse metodo de instalação você precisará de uns 5GB de armazanemanto livre

Será instalado no seu celular a distro Archlinux por meio da ferramenta proot-distro, além dos arquivos de configuração e plugins do neovim

Apesar de ocupar mais memoria, recomendo que siga o metodo completo pra que tenha uma melhor experiencia ao desenvolver no celular 

Caso não tenha espaço suficiente, você pode baixar só o neovim diretamente no termux pela [instalação simples](#instalaçao-simples)

### Instalação completa
#### Primeira parte
Após instalar o termux cole esse comando
```
bash <(curl -s https://raw.githubusercontent.com/outragedline/neovim-termux/main/install.sh)
```

Isso irá baixar o Archlinux pra você através do proot-distro

Só aperte enter caso o codigo pare em algum momento

O código pode demorar alguns minutos para terminar

Você saberá que o código terminou quando aparecer algo assim na tela `[root@localhost ~]#`

#### Segunda parte
Quando o codigo da primeira parte terminar de rodar, espere por alguns segundos e então cole o seguinte comando no seu terminal
```
bash <(curl -s https://raw.githubusercontent.com/outragedline/neovim-termux/main/install_arch.sh)
```
Isso irá criar um usuario, instalar o neovim e suas dependencias, configurar o termux pra logar automaticamente, esse tipo de coisas

Quando você colar esse comando será solicitado um nome de usuario, escolha algo simples como seu proprio nome ou o nick de algum jogo


Após, será solicitado criar uma senha, tambem pode ser algo simples, contanto que você não se esqeuça dela ta otimo

Por ultimo, um monte de coisa vai ser atualizada e instalada, esse processo pode demorar um pouco, assim que terminar feche o termux (garanta que os terminais foram fechados) e abra novamente

### Instalação simples
Cola isso aí no termux
```
apt update
apt upgrade --fix-missing
pkg install python nodejs-lts git neovim  lua54 ripgrep fd termux-api
pip install --upgrade pip
pip install pynvim
git clone https://github.com/outragedline/neovim-termux .config/nvim
```

### Final
Independente do metodo que você escolheu, siga esses ultimos passos

Digite o comando `nvim` no seu terminal para abrir o neovim

Ao abrir pela primeira vez, os plugins serão instalados automaticamente e será possivel acompanhar sua instalação do lado direito da tela

Uma vez que a instalação terminou, feche o neovim digitando `:q!` ou usando o atalho `ctrl alt x`

Abra novamente o neovim e verá a diferença


## Leia a wiki
Agora que você terminou de instalar, leia a [wiki](https://github.com/outragedline/neovim-termux/wiki) para mais informações e tutoriais

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


Caso você prefira, pode entrar em contato direto comigo no [telegram](https://t.me/Outragedline)
