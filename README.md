## Atualização
### novidades
* mudança de vários plugins
* migração para lua


##  Chegando em breve
---
1. Guia de criação de atalhos personalizados
1. Guia de comandos do coc
1. Guia de vim script e lua basico






## Tópicos
* [Sobre](#sobre)
* [Introdução](#introdução)
    * [O que é um diretório?](#o-que-é-um-diretório)
    * [Linux basico](#linux-básico)
        * [comandos básicos](#comandos-basicos)
        * [gerenciador de pacotes](#gerenciador-de-pacotes)
    * [vim básico](#vim-básico)
        * [Modos](#modos)
            * [normal mode](#normal-mode)
            * [visual mode](#visual-mode)
            * [insert mode](#insert-mode)
            * [command mode](#command-mode)
* [Instalando termux](#instalando-termux)
    * [Fonte do termux](#fonte-do-termux)
    * [Atualizando termux](#atualizando-termux)
* [instalando nvim](#instalando-nvim)
    * [instalando dependências do nvim](#instalando-dependências-do-nvim)
    * [configurando nvim](#configurando-nvim)
    * [instalando os plugins nvim](#instalando-os-plugins-nvim)
    * [Instalando dependências de plugins](#instalando-dependências-de-plugins)
        * [dependências telescope](#dependências-telescope)
* [Manual nvim](#manual-nvim)
    * [leader key](#leader-key)
        * [Como usar os atalhos mapeados com leader](#como-usar-os-atalhos-mapeados-com-leader)
        * [Input do termux](#input-do-termux)
    * [Remaps / Atalhos](#remaps--atalhos)
    * [buffers](#buffers)
        * [Proximo buffer](#proximo-buffer)
        * [Buffer anterior](#buffer-anterior)
        * [Deletar buffer](#deletar-buffer)
    * [Explorador de arquivos / NERDTree](#explorador-de-arquivos--nerdtree)
        * [NERDTree menu](#nerdtree-menu)
            * [adcionar arquivo](#adicionar-arquivo)
            * [deletar arquivo](#deletar--arquivo)
            * [renomear arquivo](#renomear-arquivo)
            * [copiar arquivo](#copiar-arquivo)
            * [arquivos ocultos](#arquivos-ocultos)
            * [maximizar NERDTree](#maximizar-nerdtree)
    * [Manual telescope](#manual-telescope)
        * [Buscar arquivo](#buscar-arquivo)
        * [Live grep](#live-grep)
        * [Buscar buffer](#buscar-buffer)
* [Ajuda e documentação](#ajuda-e-documentação)
* [COC (conquer of completiom)](#coc-conquer-of-completiom)
    * [Adicionando suporte a uma linguagem](#adicionando-suporte-a-uma-linguagem)
    * [COC atalhos](#coc-atalhos)
        * [Autocomplete](#autocomplete)
        * [go to type definition](#go-to-type-definition)
       * [List extensions](#list-extensions)
       * [COC commands](#coc-commands)
* [Rodando Html](#rodando-html)
* [Suporte](#suporte)


# sobre
---

esse é um tutorial de como baixar e configurar uma ide feita com neovim direto no celular,para  que você,mesmo não tendo um computador possa entrar na área de programação e desenvolvimento

# Introdução
---
Vamos começar falando sobre como fucionam  as
coisas

Iremos utilizar o termux,que fuciona como um linux,então é  bom saber o básico

O editor de código é feito com  neovim, por isso você também precisará conhecer o básico de vim

Tudo que você precisar saber pra começar estará nesse readme

## O que é um diretório?
---

Caso você seja muito iniciante pode não saber o que é diretório,palavra muito usada em documentações e coisas relacionadas a programação 

diretórios são pastas,isso mesmo,pastas de computador,igual aquelas que você coloca suas fotos ou documentos,sem segredo

## Linux básico

### Comandos basicos
---
comando | o que ele faz
---|---
`cd` | abre um diretório
`cd ..` | abre o diretório anterior / volta um diretório
`ls` | lista tudo que existe dentro do diretório atual 
`mkdir` | cria um novo diretório
`rm` | apaga  um arquivo
`rm -r` | apaga um diretório
`rm -rf` | use se não conseguir apagar com `rm -r`
`ctrl+c` | encerra servidores & cancela ações como instalar algum pacote ou clonar um repositório

### Gerenciador de pacotes

No termux você pode usar tanto apt quanto pkg,irei escolher pkg por ser mais comumente usado,porém é quase a mesma coisa

---
comando | o que faz
---|---
`pkg install <nome do pacote>` | instala um pacote
`pkg uninstall <nome do pacote>` | desinstala um pacote
`pkg search <nome do pacote>` | mostra os pacotes que possuem nome similar ao digitado
`pkg list-installed` | mostra os pacotes instalados

## Vim básico
---
[documentação vim](https://www.vim.org/docs.php)


### Modos
O vim fuciona por meio de modos,e possui 4 modos principais,o **normal**,o **visual**,o **insert** e o **command** ,iremos falar sobre cada um individualmente

---
##### **Normal mode**
O normal mode é o modo que você vai usar pra acessar os outros modos,navegar pelo código,e usar a maioria dos atalhos como _**ctrl+s**_ pra salvar,_**ctrl+t**_ pra abrir um terminal,etc

Quando você estiver no modo normal, a airline acima do teclado estará assim:
![normal](https://user-images.githubusercontent.com/81770118/168528679-0ccbc114-ea66-418d-81ae-873955948676.jpg)

---

##### **Visual mode**
O visual mode serve pra selecionar uma parte do código,deletar,copiar,colar e cortar

nome do comando | como executar | o que faz
---|---|---
visual | a partir do modo normal, tecle _**v**_ |  entra no modo visual
yank | a partir do modo visual, selecione um texto e tecle _**y**_ | copia o código selecionado
paste | a partir do modo normal,selecione um texto e tecle _**p**_ | cola o código que você copiou
change | a partir do modo visual,selecione um texto tecle _**c**_ | recorta o código selecionado
delete | a partir do modo visual,selecione um texto tecle  _**d**_ | apaga o código selecoonado
escape | a partir do modo visual, use a tecla _**esc**_ | sai do visual mode e retorna ao normal mode

Quando estiver no visual mode a airline  acima do teclado estará assim:
![visual](https://user-images.githubusercontent.com/81770118/168528684-a1c4ccab-cb68-4280-9ba8-90eb2629479d.jpg)

---

##### **Insert mode**
É o modo que você usa pra editar o código,como esperado de um editor de código

nome do comando | como executar | o que faz
---|---|---
insert |  a partir do modo normal tecle _**i**_ | entra no modo insert
escape | a partir do modo insert, usd a tecla _**esc**_ | volta ao modo normal


Quando estiver no insert mode a airline  acima do teclado estará assim:
![insert](https://user-images.githubusercontent.com/81770118/168528689-0607460a-40ca-49c0-a17b-9e6a17e0f083.jpg)

---

##### **Command mode**

Este modo é o mais complicado dentro dos 4 principais pois ele não tem um número exato de funções,e a tendência é ir aumentando conforme você instalar plugins

Os comandos principais que você vai usar são:

nome do comando | como executar | o que faz
---|---|---
command | a partir do modo normal digite `:` | isso abre o "terminal" do vim, nescessário pra maioria os comandos
write | a partir do modo normal digite `:w` | salva o código
quit | a partir do modo normal digite `:q` | fecha o arquivo aberto na janela atual
force quit | a partir do modo normal digite `:q!` | fecha o arquivo mesmo sem salvar
quit all | a partir do modo normal digite `:qa` | fecha todos os arquivos 
force quit all | a partir do modo normal digite `:qa!` | fecha todos os arquivos mesmo sem salvar 
undo | a partir do modo normal digite `:u` | realiza a função undo,desfaz as últimas ações
redo | a partir do modo normal digite `:redo` | realiza a função redo,refaz tarefaz desfeitas
next buffer | a partir do modo normal digite `:bNext` | troca para o próximo buffer
previous buffer | a partir do modo normal digite `:bprevious` | troca para o buffer anterior
term | a partir do modo normal digite `:term` | abre um terminal em uma nova janela
! | ao utilizar `:!` isso te permite usar comandos do terminal linux sem fechar o nvim | Executa comandos do terminal
find | a partir do modo normal,digite `/termo`  | procura no arquivo atual o termo digitado após a `/`

Quando estiver no command mode a airline  acima do teclado estará assim:
![command](https://user-images.githubusercontent.com/81770118/168528691-ce775607-a901-40f0-8c35-39786c56a939.jpg)

---

# Instalando termux
Agora que você já sabe o básico de linux,podemos instalar o termux:

[clique aqui para baixar o termux](https://f-droid.org/repo/com.termux_118.apk)

Instale também o termux-styling:

[clique aqui para baixar o termux styling](https://f-droid.org/repo/com.termux.styling_29.apk)

Após baixar, vá no seu explorador de arquivos do celular e instale os dois apks

### Fonte do termux

Após instalar o termux , aperte e segure em qualquer local do terminal até aparecerem as opções  de _**copy,paste e more...**_
![IMG_20220516_052220](https://user-images.githubusercontent.com/81770118/168550637-0fa1402a-04de-4621-ad40-a60db5caea9c.jpg)

Selecione a opção _**more...**_ ,ela irá  abrir um menu, selecione style

Após isso irão aparecer dois botões,o choose color e o choose font

clique no choose fonte e procure pela fonte chamada hack,isso é essencial pra que tudo fucione corretamente

A cor  você pode escolher,a que eu utilizo é a dracula, porém escolha a que mais te agradar

## Atualizando termux

Após instalado e estilizado, você deve rodar o comando
```
apt update && apt full-upgrade
```
Ao rodar esse comando ele irá parar algumas vezes esperando que você diga o que fazer, só dar enter que ele volta a instalar

# Instalando nvim
---
[documentação nvim](https://neovim.io/doc/user/)
## instalando dependências do nvim
O nvim tem algumas dependências pra que funcione corretamente, vamos instalar elas

```
pkg install git python nodejs-lts neovim lua54
```
Após rodar o código acima ele irá pedir uma confirmação,aperte _**y**_ e dê enter

Agora teremos que atualizar o pip

```
pip install --upgrade pip
```
Com o pip atualizado,vamos instalar uma biblioteca do python obrigatória para o funcionamento correto do nvim
```
pip install pynvim
```
Pronto, você terminou de instalar todas as dependências do nvim

## Configurando nvim
---
Após instalar as dependências,vamos configurar o nvim


vamos instalar os arquivos de configuração nessa pasta em uma pasta chamada `.config`
```
git clone https://github.com/outragedline/neovim-termux .config
```
Caso queira você pode remover o readme.md , esse arquivo não tem nenhuma função
```
rm .config/README.md
```

Ok,agora o seu neovim tá todo configurado, só falta instalar os plugins

## Instalando os plugins nvim

A primeira coisa que você deve fazer é voltar pra pasta home, para isso,use o comando `cd` e ele voltará automaticamente pra lá

certo, agora vamos baixar o  packer para que o nvim fucione com todos os plugins
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Ótimo, agora que temos o packer instalado é só instalar os plugins,vamos abrir o nvim,para isso é só digitar `nvim` no terminal,vai aparecer um monte de erros,ignore e aperte `esc`

Com ele aberto,vamos rodar o comando
```
:PackerInstall
```
Provavelmente quando você rodar esse comando vão aparecer alguns erros no terminal do vim,apenas dê enter e ignore


_**Atenção**_
Aantes de copiar e colar os comandos do vim (os que começam com `:`) **abra o command mode** ,caso contrario você não vai consegir rodar o comando

Para abrir o command mode digite `:`

Agora saia do nvim utilizando o atalho `ctrl+x` ou digitando `:qa!`

Abra ele novamente e você verá as diferenças,agora o seu nvim está pronto pra uso,vamos aprender um pouco mais sobre ele


# Manual nvim

## leader key

A leader no nvim é por padrão a tecla `\` porém,por conveniência eu remapeei ela para `-` ,pois já é um caractere que está no teclado especial do termux

### Como usar os atalhos mapeados com leader

Para usar os atalhos mapeados na leader você só tem que digitar a leader seguida dos caracteres,nesse caso a leader configurada é `-`, então se você quisesse executar `leader+bp` seria só escrever  -bp rapidamente

### Input do termux

O termux tem um input meio escondido,se você arrastar pra esquerda aquele teclado onde tem as setas e  outros caracteres,ele  vai ter um input,nesse input vc pode digitar o quanto quiser e ao dar enter o termux manda tudo de uma vez, ótimo pra atalhos mapeados com leader

tambem é util pra quando o teclado some e não quer reaparecer

![20220517_014349](https://user-images.githubusercontent.com/81770118/168730831-aea9fc2f-ee3c-4d69-918c-4c90e0b27a12.gif)


## Remaps / Atalhos

No  nvim é possível criar alguns atalhos que executam comandos no command mode,eu configurei alguns bem úteis,vamos ver

Atalho | comando | o que faz
---|---|---
`ctrl+s` | `:w!` | salva  o arquivo
`ctrl+x` | `:qa!` | fecha todos os arquivos e sai do nvim
`ctrl+q` | `:q!` | fecha o arquivo atual, caso você tenha várias janelas abertas ele vai fechar a que você estiver com o cursor
`ctrl+t` | `:FloatermNew` | abre um terminal flutuante,pra fechar digite `exit`
`leader+bp` | `:bp` | muda para o buffer anterior
`leader+bn` | `:bn` | muda para o próximo buffer
`leader+u` | `:u` | undo,desfaz última ação
`leader+r` | `:redo` | refaz última ação desfeita

Você tambem pode criar seus proprios atalhos,veremos isso mais pra frente

## buffers
---

Buffers são aqueles arquivos que ficam abertos no topo da tela,você pode navegar facilmente entre eles

### Proximo buffer
para ir ao proximo buffer voce pode usar o atalho `leader+bn` ou o comando `:bn`

### Buffer anterior
para ir ao buffer anterior voce pode usar o atalho `leader+bp` ou o comando `:bp`

### Deletar buffer
para deletar o buffer atual voce pode usar o atalho `leader+bd` ou o comando `:bd`

não se preocupe,isso não apaga o arquivo,apenas o fecha,então salve o arquivo antes de fechar o buffer





##  Explorador de arquivos / NERDTree

### Manual NERDTree

[repositorio da nerdtree](https://github.com/preservim/nerdtree)

O explorador de arquivos configurado é a NERDTree, é um explorador bem completo com muitas opções


Para abrir a NERDTree você pode usar o atalho `ctrl+a` ou usar o comando `:NERDTreeToggle`


![NERDTree](https://user-images.githubusercontent.com/81770118/168707073-89db5c1f-a879-4ff5-8113-db1a9c019e17.jpg)


#### NERDTree menu

![NERDTree menu](https://user-images.githubusercontent.com/81770118/168707088-551c5c97-f71d-4456-a418-82d9e9db574a.jpg)


O menu da NERDTree é o que te possibilita criar,deletar,mover ou renomear arquivos e diretórios

Para acessar o menu você precisa abrir a NERDTree (ctrl+a ou o comando :NERDTreeToggle) e então teclar `m` ,e ele irá abrir automaticamente

##### Adicionar arquivo
Com o menu aberto você pode teclar `a` para adicionar um arquivo ou diretório, ao teclar `a` a NERDTree ira requisitar um nome para o novo arquivo,e caso esteja criando um diretório,a única diferença é que é nescessário por uma `/` no fim do  nome
Para que você crie o arquivo ou diretório no local correto, antes de abrir o menu escolha o caminho onde ele vai ficar, para isso você só precisa deixar o cursor encima do diretório no qual você quer criar o arquivo

##### Deletar  arquivo
Para deletar, selecione o arquivo ou diretório que você quer  deletar deixando o cursor encima dele,abra  o menu com `m` e delete com `d` ,confirme e pronto, tá feito

##### Renomear arquivo
Para  renomear você irá novamente selecionar o arquivo ou diretório colocando o cursor encima dele,abrir o menu da nerdtree com a tecla `m` e então teclar `m` novamente, após isso  você poderá editar o caminho deste arquivo,assim podendo mudar seu nome

##### Copiar arquivo
Para copiar você precisa selecionar o arquivo com o cursor, abra o menu com a tecla `m` e tecle `c`  após isso você poderá passar o caminho pra onde o  arquivo  será copiado

##### Arquivos ocultos
Para ver arquivos ocultos pela NERDTree , você só precisa teclar um `I` e eles irão aparecer,tecle `I` novamente e eles desaparecem

##### Maximizar NERDTree
Para abrir a NERDTree na tela inteira você precisa teclar `A` ,e para voltar ao normal tecle `A`  novamente

## Manual Telescope

[repositorio do telescope](https://github.com/nvim-telescope/telescope.nvim)


![Telescope](https://user-images.githubusercontent.com/81770118/168707068-0adc3d7f-a629-4dfa-a5aa-711f6ace89c1.jpg)


### Buscar  Arquivo

Você pode buscar um arquivo na raiz do seu projeto com o comando

```
:Telescope find_files
```
ou com o atalho `leader+ff`


### Live grep

Você pode utilizar esse comando para pesquisar por uma uma string em todos os arquivos da raiz do seu projeto

```
:Telescope live_grep
```

ele também fuciona com o atalho `leader+fg`

### Buscar buffer

Você pode procurar os buffers ativos utilizando o comando

```
:Telescope buffers
```

ou o atalho `leader+fb`

# Ajuda e documentação

Agora temos algo muito importante e útil do telescope,buscar por ajuda

Tudo que você precisa fazer é usar o comando

```
:Telescope help_tags
```

ou o atalho `leader+fh`

Após usar esse comando o telescope irá buscar pela `documentação` do comando que você estiver procurando e abrir uma nova janela com um manual de como aquele comando fuciona,é muito importante que você saiba usar isso,pode poupar muito tempo de pesquisa no google

Caso você queira ver a documentação do vim/nvim você pode usar o comando:
```
:help
```

# COC (conquer of completiom)

[repositório do coc](https://github.com/neoclide/coc.nvim)

Esse é sem dúvidas o plugin mais importante instalado no neovim,ele é similar ao intelisense do vscode e é responsável pelo autocomplete,go to definition ,etc

## Adicionando suporte a uma linguagem

Vamos aprender a configurar as linguagens que voce utiliza,isso é bem facil



Primeiro de tudo você precisa pesquisar por alguma extensão do coc que forneça suporte a tecnologia que você quer adicionar,utilizarei  python  como exemplo



![Pesquisa](https://user-images.githubusercontent.com/81770118/168707075-ed537f53-3ec1-4910-9b0d-f6abcc780f42.jpg)

porem,tome cuidado pra não pegar uma extensão descontinuada, como essa _**coc-python**_ ,atualmente a extensão usada para python é a _**coc-pyright**_

Após achar a extensão que você quer,volte para  o termux e abra o nvim

você irá agora utilizar um comando do coc pra instalar extensões,o `:CocInstall extensão` ,feito isso ja vai estar tudo fucionando


## Coc atalhos

### Autocomplete

![Autocomplete](https://user-images.githubusercontent.com/81770118/168707074-f549703b-1ea0-4fb3-99c5-ca2ddb595f3f.jpg)


você pode usar o atalho `ctrl+espaço` para ativar o autocomplete  caso ele não fucione corretamente

### go to type definition

No normal mode,coloque o cursor encima de uma função ou classe,e digite `gy` ,isso  irá te levar até onde a função foi criada


### List extensions

No normal mode tecle `espaço+e` e serão listadas todas as extensões instaladas no coc

### Coc commands
No normal mode tecle `espaço+c` para listar os comandos  do coc, você pode pesquisar pelo nome de um comando e executalo selecionando ele e dando enter


# Rodando html
É possivel rodar html no termux utilizando um pacote  chamado live-server,similar a extensão do vscode de mesmo nome

Provavelmente você não vai querer fechar o editor de codigo pra poder ver a preview,então você pode criar uma nova sessão no termux,assim tendo uma com o codigo aberto e outra rodando o servidor

Para criar uma nova sessão no termux,araste a tela da esquerda pra direita mais ou menos na altura onde ficam os botões de volume,feito isso você vai ver todas as sessões abertas e poderá criar uma nova

certo,agora vamos pra instalação do live-server

para isso,rode o comando
```
npm install -g --force  live-server

```
após isso,use este comando pra garantir que vai instalar corretamente
```
npm audit  fix --force
```

Caso queira conferir se instalou, rode o comando
```
npm -g list
```

Para rodar um arquivo html você precisa navegar até o diretório onde o arquivo está e usar o comando

```
live-server arquivo
```

ou você também pode rodar direto pelo command mode do nvim
```
:! live-server %
```

O `%` se refere ao arquivo atual,isso seria o mesmo que colicar o caminho inteira até o arquivo,porém assim é muito mais rapido


Para encerrar o servidor use `ctrl+c`


# Suporte

Esse repositório ainda está em desenvolvimento,caso você tenha algum problema ou acha que é possível fazer alguma melhoria,entre em contato diretamente comigo
o objetivo do projeto é ajudar iniciantes então não interessa se sua duvida é boba,me mande uma mensagem,ajudarei a resolver seu problema e atualizarei esse readme para que outras pessoas consigam resolver sozinhas

contatos:

[telegram](https://t.me/outragedline)

[twitter](https://twitter.com/outragedline?s=08)
