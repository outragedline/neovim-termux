## Novidades

- Instalação da termux api para acesso a clipboard
	[Clique aqui para instalar o termux api](https://f-droid.org/repo/com.termux.api_51.apk)
	```
	pkg install termux-api
	```
- Explicação sobre [Folding](#ocultar-linhas) 
## sobre
![neovim](https://user-images.githubusercontent.com/81770118/173487337-5b969d30-71ec-4f66-8fe2-a550493dfe31.jpg) 

Esse repositório serve pra ensinar como programar usando somente o celular

Esse turorial serve para ajudar principalmente  iniciantes e pessoas com interesse na área,então não se preocupe,tudo que  você precisará saber pra começar será ensinado ao longo desse readme

Em caso de duvidas sinta-se livre para abrir uma issue ou entrar em contato diretamente comigo no [telegram](https://t.me/Outragedline)

# Tópicos
* [Conceitos básicos](#conceitos-básicos)
* [Termux](#termux)
	* [Sobre](#sobre-1)
	* [Instalação](#instalação)
	* [Personalização](#personalização)
	* [Interface](#interface)
		* [Caixa de ferramentas](#caixa-de-ferramentas)
			* [Teclas](#teclas)
			* [Área de texto](#área-de-texto)
			* [Abrindo vários terminais](#abrindo-vários-terminais)
			* [Zoom](#zoom)
	* [Conceitos básicos](#conceitos-básicos-1)
		* [Gerenciador](#gerenciador-de-pacotes)
		* [Comandos básicos](#comandos-básicos) 
	* [Pacotes  recomendados](#pacotes-recomendados)
		* [ncdu](#ncdu)
		* [tree](#tree)
		* [lazygit](#lazygit)
		* [pandoc](#pandoc)
		* [live-server](#live-server)
* [Neovim](#neovim)
	* [Sobre](#sobre-7)
	* [Instalação](#instalação-6)
	* [Modos](#modos)
		* [Modo normal](#modo-normal)
			* [Ocultar linhas](#ocultar-linhas)
		* [Modo insert](#modo-insert) 
		* [Modo visual](#modo-visual)
		* [Modo command](#modo-command)
		* [Comandos especiais](#comandos-especiais)
			* [Pesquisar](#pesquisar)
			* [encontrar e substituir](#encontrar-e-substituir)
	* [Atalhos gerais](#atalhos-gerais)
	* [Plugins](#plugins)
		* [NvimTree](#nvimtree)
		* [Vim-move](#vim-move)
		* [TreeSitter](#treesitter)
		* [Github Copilot](#github-copilot) 
		* [Lsp,autocomplete e formatação](#lsp-%2C-autocomplete-e-formata%C3%A7%C3%A3o)
			* [Lsp installer](#lsp-installer)
			* [Lsp config](#lsp-config)
			* [Cmp](#cmp)
			* [null-ls ,formatação de código](#null-ls)
			* [Atalhos Lsp](#atalhos-lsp) 
		* [Bufferline](#bufferline)
		* [Gitsigns](#gitsigns)
	* [Personalização](#personalização-1) 
		* [Instalando plugins](#instalando-plugins)
    * [Colorschemes / temas](#colorschemes-temas)
* [Possíveis bugs e erros](#possíveis-bugs-e-erros) 
  * [Erros de interface](#erros-de-interface)
  * [Segmentation fault error](#segmentation-fault-error)
* [Conteudo recomendado](#conteudo-recomendado)
* [Considerações finais](#considerações-finais)
	


# Conceitos básicos
---
Caso você seha iniciante na área,pode acabar se confundindo com alguns termos,então aqui vai uma breve explicação sobre os conceitos básicos

## Diretórios
Diretórios são basicamente as pastas comuns de um computador,não

Não há muito o que falar sobre,é só isso mesmo

## Caminhos

Um caminho é basicamente a sequência de diretórios que leva ao arquivo ou diretório final,por exemplo:

`/data/data/com.termux/files/home/.config/`

Este caminho leva até o diretório .config,e pra fazer isso ele  primeiro precisa seguir a ordem abrindo todos os outros diretórios até chegar nele

Caso eu mude o caminho de .config/ para qualquer outro nome,todos os arquivos dentro de .config também seriam movidos para o caminho novo

Como se você estivesse mudando o nome do arquivo,mas na  verdade está movendo ele

Isso é algo bem confuso de início mas com o tempo você aprende


## Pacotes

Os pacotes são basicamente tudo que você baixa através do terminal

Eles servem pra implementar novas funções no terminal,como por exemplo a possibilidade de rodar arquivos python,ou usar ferramentas como git



# Termux
---
## Sobre
Termux é um aplicativo pra  android que roda um terminal linux,e te permite fazer quase tudo que um computador faria



## Instalação


Ele está disponível pra download na  play store,porém essa versão é completamente desatualizada e não deve ser baixada

Você deve instalar diretamente no  github ou pelo f-droid


Os links abaixo levam diretamente aos apks do fdroid,baixe ambos e os instale através do seu gerenciador de arquivos

[clique aqui para baixar o termux](https://f-droid.org/repo/com.termux_118.apk)

[clique aqui para baixar o termux styling](https://f-droid.org/repo/com.termux.styling_29.apk)

[Clique aqui para instalar o termux api](https://f-droid.org/repo/com.termux.api_51.apk)


Após instalar o termux,abra e cole o comando
```
apt update
```

Dê  enter,e após o processo terminar cole o comando

```
apt upgrade --fix-missing
```

Uma confirmação será necessária,confirme digitando **y**

Esses dois comandos vão atualizar os pacotes do termux e  garantir que tudo está como deveria estar

Após confirmar ele  irá continuar atualizando tudo,porém ira parar pra pedir algumas configurações,só ignore e dê **enter** toda vez

## Personalização

A primeira coisa que você deve fazer após instalar é trocar a fonte do termux,pois a fonte padrão não exibe maior parte dos ícones

Para trocar a fonte você só precisa apertar e segurar em qualquer lugar da tela até que apareçam as opções _**copy,paste,more...**_ , selecione a opção **more** e irá abrir um menu com algumas possíveis opções

Procure pela opção **style** (ela só vai aparecer se o termux styling estiver instalado) ,ao selecionar **style** vão aparecer opções de mudar fonte e mudar cor de fundo

Você pode  escolher a fonte e cor que mais te agradarem,tambem é possível instalar novas fontes e cores caso queira

Eu particularmente utilizo a cor **one dark** com a fonte **Hack**

Isso só é possível com o **Termux styling** instalado

O termux também pode ser personalizado usando um arquivo `.bashrc`

## Interface
A interface do termux é a de um terminal comum,simplesmente uma tela onde você pode utilizar comandos linux

### Caixa de ferramentas

Acima do teclado você verá uma caixa com ferramentas e teclas úteis  que não estão no teclado comum ou estão ali pra facilitar o acesso

#### Teclas
Com as teclas **HOME** e **END** você pode navegar diretamente pro começo ou final de uma linha de forma rápida

Caso você aperte as teclas **CTRL** ou **ALT** por alguns segundos,ela irá ficar pressionada até que você aperte novamente para desativar

#### Área de texto
Arrastando a caixa de ferramentas da direita pra esquerda você irá abrir uma área de texto,onde você poderá utilizar as ferramentas comuns do teclado

Tudo  que for digitado na área  de texto ficará nela até que você aperte **Enter**

Caso o seu teclado suma,abrir a área de texto irá faze-lo voltar

A área de texto é muito útil em certas situações,porém pode causar alguns bugs,principalmente se você estiver  usando o terminal  dentro do neovim

### Abrindo vários terminais
No termux é possível abrir msis de um terminal por vez

Para fazer isso você deve arrastar a tela na parte superior esquerda e então selecionar **new session**

Note que ao lado de **new session** tem um botão  que ativa e desativa o teclado,você pode usar ele ao invés da área de texto quando seu teclado sumir.

### zoom
Você pode aumentar ou diminuir o zoom no termux fazendo movimento de pinça com 2 dedos


## Conceitos básicos

### Gerenciador de pacotes

Você pode instalar e gerenciar pacotes no termux usando `pkg` ou `apt` ,o apt possui algumas fucionalidades extras mas eu costumo usar pkg

comandos | execução
---|---
`pkg install pacote` | instala o pacote , você pode instalar vários pacotes de  uma vez
`pkg install pacote=1.0` | instala o pacote na versão informada
`pkg upgrade pacote` | atualiza o pacote informado
`pkg  uninstall pacote` | desinstala o pacote informado,  você pode desinstalar vários de uma vez
`pkg search nome` | vai procurar por todos os pacotes com esse nome e os lista
`pkg help` | lista os comandos que você pode  usar com `pkg`


Esses comandos são o suficiente pra começar,porém você pode ver os outros com `pkg help` e `apt help`

### Comandos básicos

Agora alguns comandos básicos que você precisa saber

comando | execução
---|---
`mkdir nome` | cria um diretório com o nome passado
`touch nome` | cria um arquivo com o nome especificado
`cd diretorio` | abre o diretório especificado
`rm arquivo` | apaga o arquivo especificado
`rm -r diretorio` | apaga o diretório especificado
`rm  -rf diretorio` | apaga qualquer  coisa,mesmo que esteja protegido por algo
`mv antigo novo` | move ou renomeia um arquivo mudando o caminho dele
`mv  -r antigo novo` | move ou renomeia um diretório mudando seu caminho
`cp arquivo cópia` | cria uma cópia de um arquivo no caminho especificado
`cp -r diretório cópia` | cria uma cópia de um diretório no caminho especificado
`ls` | mostra os arquivos do diretorio atualiza
`ls -a` | mostra todos os arquivos do diretório atual,mesmo que ocultos
`ls diretório` | mostra os arquivos do diretório especificado
`ls -a diretório` | mostra todos os arquivos do diretório  especificado,mesmo que ocultos
`pwd` | mostra o caminho até o diretorio atual

Existe uma infinidade de outros comandos que você pode e deve pesquisar sobre,mas com esses você já consegue fazer a maioria das coisas sem problema

# Pacotes recomendados

## ncdu

###  Sobre
O ncdu é um pacote que te permite ver o tamanho de cada arquivo e pode ser bem útil no seu dia a dia

### Instalação

```
pkg install ncdu
```

### Uso
Utilizando o comando `ncdu` ele irá abrir uma tela com todos os arquivos e diretórios dentro do diretório atual e mostrar o peso de cada um deles
![ncdu](https://user-images.githubusercontent.com/81770118/173487759-c3546f81-97dd-47f8-894b-f11ba2612e64.jpg) 

Para sair do ncdu aperte `CTRL+c`

## tree
### Sobre
O tree é um pacote que mostra todos os seus  arquivos de maneira organizada


### Instalação
```
pkg install tree
```
### Uso
Utilizando o comando `tree` todos os arquivos dentro do diretório atual serão mostrados da seguinte maneira

![tree](https://user-images.githubusercontent.com/81770118/173488839-0fbda044-27c6-4bb8-a7ed-9466e8a23ace.jpg)

É um pacote que me ajuda bastante então recomendo instalar

## lazygit

### Sobre
lazygit é um pacote  muito interessante pra trabalhar com git pois fornece uma visualização fácil de commits,stashs,branches,etc

### Instalação
```
pkg install lazygit
```

### Uso
Utilizando o comando `lazygit` será aberta uma interface onde você pode navegar usando as setinhas da  base de ferramentas

![lazygit](https://user-images.githubusercontent.com/81770118/173488035-50bcda11-e1dd-4ac1-91cb-bede1dc35b6a.jpg) 

Com as setas você pode trocar entre as seções,com as setas pra cima e pra baixo você navega entre as opções da seção atual

As informações do arquivo ou opção selecionada aparecem do lado direito ,nessa grande tela

Para fechar aperte `CTRL+c`

## Pandoc

### Sobre
Pandoc é uma ferramenta que consegue converter **markdown** em **html**

Ele não é muito útil se  você não usa linguagem markdown,mas caso você use,isso pode te ajudar bastante a entender como as coisas fucionam e desenvolver páginas melhores usando markdown

### Instalação
```
pkg install pandoc
```

### Uso
utilize o comandov`pandoc arquivo.md` e a conversão pra html erá  mostrada na tela

## live-server

###  Sobre
Essa é a mesma extensão que existe no vscode e serve para rodar um servidor local,te possibilitando por exemplo rodar um arquivo html

### Instalação
O live server não pode ser baixado usando pkg ou apt pois ele só está disponível no gerenciador de pacote **npm**

Primeiro nós precisamos instalar o nodejs

```
pkg install  nodejs-lts
```
Com o node instalado,agora sim podemos instalar o  live-server
```
npm i  -g live-server
```

### Uso
Para usar o live-server você pode abrir um arquivo  diretamente ou abrir um diretório
`live-server arquivo`

Caso não seja especificado nenhum arquivo ou diretório,o servidor será  aberto no diretório atual

Normalmente o navegador abre logo após rodar o comando,caso contrário vc pode abrir manualmente através do link informado (localhost)



# Neovim

## Sobre
A grande desvantagem de programar no celular é a falta de ides como vscode,pycharm,etc , porém com o termux é possivel configurae um editor de código completo e que chega  no nível de um pc usando neovim

O neovim é um editor de código baseado em vim,que é uma evolução  do VI , o vim é muito utilizado por ser completamente personalizável,leve e com muitos truques úteis que podem aumentar a sua produtividade ,
o vim pode ser configurado da maneira que você quiser,utilizando uma linguagem especifica pra isso chamada vim script

Já o neovim apresenta todas as vantagens do vim comum,mas a grande vantagem dele é que pode ser configurado utilizando a linguagem de programação Lua,o que permite a criação de muitos plugins complexos e uma inicialização mais rápida

## Instalação
---
### Instalando dependências
O neovim possui algumas dependências pra que fucione corretamente,copie e cole os códigos abaixo

```
pkg install python nodejs-lts git neovim  lua54 ripgrep fd termux-api
```
Caso peça alguma confirmação,aperte _y_ e **enter**

Após isso é nescessário atualizar o pip (gerenciador de pacotes do python)
```
pip install --upgrade pip
```
Com o pip atualizado podemos instalar uma biblioteca do python feita pra rodar o neovim corretamente
```
pip install pynvim
```

Com isso já temos todas as dependências do neovim e ele já deve fucionar corretamente,porém antes de usar vamos baixar os arquivos arquivos de configuração, eles estarão todos em _.config/nvim/_

```
git clone https://github.com/outragedline/neovim-termux .config/nvim
```
Com isso, o neovim já estará configurado

Abra o neovim com o comando `nvim` ,e ele começará a instalar todos os plugins automaticamente,espere por alguns  segundos até que tudo seja instalado

Quando tudo for instalado feche o neovim com `CTRL+x` e abra novamente,você verá logo de cara as mudanças,a partir de agora seu neovim está pronto pra uso

Caso queira abrir um arquivo específico você pode por `nvim arquivo` ,tambem serve pra diretórios ,caso o arquivo não exista ele será criado

Se você quiser por exemplo abrir todos os arquivos python no diretório atual ,é só escrever `nvim *.py` ,isso irá pegar todos os arquivos com extensão _.py_ e abrir em  buffers

## Modos
O vim fuciona com vários modos,onde cada um serve pra uma coisa,e saber usar eles é essencial

Aqui vamos falar sobre os 4 modos  principais e alguns truques que podem melhorar sua produtividade

É reconendado que você abra algum  arquivo pra ir treinando enquanto lê ou logo após ler

### Modo normal

O modo normal é o modo que você vai utilizar como intermediário pra acessar outros modos,navegar pelo código ou usar hotkeys como `CTRL+s` pra salvar e `CTRL+x` pra fechar o neovim

#### keybidings

Aqui teremos algumas combinações de teclas nativas do vim no modo normal que tornam mais fácil para escrever seus códigos


Teclas | ação
---|---
h | move o cursor pra  esquerda
j | move o cursor pra baixo
k | move o cursor pra cima
l | move o cursor pra direita
^ | leva o cursor  ao início da linha
$ | leva o cursor ao final da linha
e | leva o cursor ao final da palavra
b | leva o cursor ao início da palavra
gg | leva o cursor ao início do arquivo
G | leva o  cursor ao final do arquivo
dd | apaga a linha sob o cursor
de | apaga até o fim da palavra sob o  cursor
d$ | apaga da posição do cursor até o fim da linha
d^ | apaga  da posição do cursor até o inicio da linha
x | apaga caractere selecionado
yy | copia a linha sob o cursor
ye | copia até o fim da palavra sob o cursor 
y$ | copia da posição do cursor até o fim da linha
y^ | copia da posição do cursor até o inicio da linha
p | cola a ultima coisa copiada ou  deletada
ZZ | salvar e sair
u | desfaz ultima ação
CTRL+r | refaz ultima ação desfeita

você pode usar as teclas **HOME** e **END** da caixa de ferramentas no lugar das teclas **^**  e **$**

Coisas copiadas ou deletadas no vim não vão para a clipboard por padrão e só podem ser coladas usando o __*p*__ dentro do próprio vim

Se quiser colar algo da clipboard no vim é nescessário ter o  termux api instalado e a configuração ativa no neovim,caso você tenha feito tudo seguindo este readme,tudo que é nescessário  já está devidamente instalado e configurado então não há  com o que se preocupar

#### Ocultar linhas
No  neovim é possível ocultar várias linhas de código para que ocupem menos espaço na tela,isso é chamado de folding

O modo como as linhas são ocultadas é baseado no **foldmethod**,nesta configuração as linhas são automaticamente ocultadas com base na indentação

Se quiser saber mais sobre folding,digite o comando `:h fold`

##### Folding keybidings
A opção de ocultar as linhas tem vários keybidings próprios,aqui os principais

teclas | ação
---|---
za | alterna entre ocultar e mostrar as linhas de um fold
zR | abre  todos os folds do arquivo atual



### Modo insert
O modo insert é o modo que você vai usar pra escrever seus códigos

É o modo mais simples pois é basicamente um editor de  texto,sem muito  segredo

Existem várias formas de entrar no modo insert,e saber usar elas pode poupar bastante tempo

#### Entrando no modo insert

Para entrar  no modo insert você só precisa estar no modo normal e digitar uma tecla

tecla |	ação
---|---
i | entra no modo insert à esquerda do cursor
a | entra no modo insert à direita do cursor
o | cria uma linha vazia abaixo do cursor e entra no modo insert
O | cria uma linha vazia acima do cursor e entra no modo insert

Pra sair do modo **insert** e voltar ao **normal** você só precisa apertar a tecla `esc` na caixa  de ferramentas

### Modo visual

O modo visual é basicamente um modo de seleção de texto,é o equivalente a clicar com o mouse e arrastar

As fucionalidades principais desse modo são _*yank*_ que é equivalente ao copiar ,_*delete*_ e  _*chage*_ que  são equivalentes a recortar,por que tem 2 funções  que fazem a mesma coisa? Não faço ideia,segue o roteiro

Existem 3 variantes do modo visual,cada um com seu uso específico

#### Entrando no modo visual
Essas são as formas de entrar no modo visual **a partir do  modo normal**
comando | modo | uso
---|---|---
v | visual | selecionar um texto
V | visual line | seleciona linhas inteiras
CTRL+v | visual block | seleciona um bloco de texto sem precisar selecionar a linha inteira

Para sair do modo visual e cancelar a seleção de texto,aerte `ESC`

#### Usos
No modo visual você pode copiar o texto selecionado apertando  `y` ,recortar com `d` ou `c`, e substituir o texto selecionado pelo texto copiado com `p` ,porem essa ultima não é um comando do vim,e sim um atalho,será falado mais sobre isso mais pra frente

Alguns comandos do modo normal tambem fucionam  no modo visual,como o `gg` e o `G`

Então se você quiser por exemplo selecionar tudo do  arquivo,você so  precisa digitar `ggVG` a partir do modo normal


### Modo command
O modo de comandos é o mais complexo,e com mais funções,até porque não há um limite de coisas que ele pode fazer,quanto mais plugins você adicionar ,mais funcionalidades ele terá

O modo command é ativado quando vocé digita um `:` ,após o `:` você pode usar o comando que você quiser em vim script,então vamos ver alguns conceitos e comandos básicos

#### Comandos básicos
Maior parte das coisas no neovim é feita por comandos,é impossível falar sobre todos,mas aqui vai os principais

comando | execução
---|---
`:w` | salva um arquivo
`:w nome` | salva um arquivo com um novo nome
`:wa` | salva todos os arquivos abertos,exceto aqueles sem nome ou readonly
`:w!` | força o salvamento do arquivo
`:q` | fecha o neovim,caso tenha mais de um split ou tab,ele fechará o atual,contanto que esteja salvo
`:q!` | fecha o arquivo,split ou tab aberto mesmo que não esteja salvo
`:qa`  | fecha tudo que estiver aberto no neovim,só fuciona se tudo estiver salvo
`:qa!` | fecha tudo do neovim sem  salvar
`:wq` | salvar e sair do arquivo atual
`:wqa` | salva todos os arquivos e fecha o neovim
`:split` | divide a tela horizontalmente pra que você possa abrir dois arquivos na tela ao mesmo tempo
`:vsplit` | divide a tela verticalmente pra que você possa abrir dois arquivos na tela ao mesmo tempo
`:resize +2` | aumenta ou dimimui o tamanho do split horizontal,pra aumentar coloque `+numero` ,para diminuir `-numero`
`:vertical resize` | mesma coisa do outro,só que pra split vertical
`:h alguma coisa` | busca a documentação de qualquer comando do vim ou plugins
`:! comando do terminal` | colocar um `!` logo no começo significa que você quer rodar comandos do terminal através do neovim,por exemplo `:! pkg install luarocks` ,isso irá instalar o  luarocks como se fosse no terminal comum
`:checkhealth` | checa se está tudo como drveria

#### Comandos especiais
##### pesquisar
Caso você queira encontrar algo no  seu código ,você pode usar um comando pra pesquisar pela palavra

Esse comando é o mais diferenciado pois é um unico que não usa `:` no começo

Para pesquisar por algo você só precisa estar no modo normal e digitar `/` ,a partir daí você está pesquisando pela palavra digitada,e  toda ocorrência dela

Se você der **enter** após pesquisar por uma palavra você voltará ao modo normal,porém todas as ocorrências da palavra  pesquisada estarão destacadas,e você pode navegar até a próxima ocorrência clicando `n`

Para cancelar uma pesquisa é só apertar **ESC**

Para desmarcar as ocorrências da ultima pesquisa você só precisa pesquisar algo aleatório e dar **enter**,por exemplo `/skksla))#)#(3!2(#)$` ,quase certeza que não tem algo assim no seu código

##### Encontrar e substituir
Outro comando extremamente  útil é o encontrar e substituir

Com ele você procura por todas as ocorrências de uma palavra dentro de um **range**  e substitui por outra palavra que você quiser

Caso eu queira substituir **antiga** por **nova** nas linhas 1 a 10,o comando seria assim

`:1,10s/antiga/nova`

Porém esse comando _só vai substituir a primeira ocorrência da palavra em cada linha_ , para substituir a palavra toda vez  que ela aparecer,você deve adicionar um `/g` ao final

`:1,10s/antiga/nova/g`

Agora todas as palavras **antiga**  serão substiuídas  pela palavra **nova**

Caso você queira substituir todas as palavras de um arwuivo,é só colocar `%` no range

`:%s/antiga/nova/g`


#### Informações adicionais
A lista de comandos é extremamente extensa ,mesmo sem nenhum plugin,porém essses  são os que você irá precisar mais , nos próximos tópicos veremos mais comandos de personalização,plugins,etc

O modo command tem uma especie de autocomplete,pra ativar  você só precisa apertar  **TAB** ,a tecla que fica logo abaixo do **ESC** ,e então irá abrir um painel com as possíveis completions

Pra navegar no painel de  autocomplete utilize as setas da esquerda e direita

As setas cima e baixo servem pra navegar entre os ultimos comandos que você usou


O caractere `%` indica o caminho até o arquivo atual,então caso eu esteja editando um arquivo python e escreva `:! python %` ele irá entender e rodar


**TREINE MUITO ESSES COMANDOS E OS DOS OUTROS MODOS,ELES SÃO MUITO IMPORTANTES**




## Atalhos gerais

É possível mapear comandos para que sejam executados rapidamente,sem muito esforço e de maneira conveniente


Aqui estão os atalhos que eu fiz,e que você poderá usar caso tenha baixado tudo seguindo este tutorial

modo | atalho | comando executado | ação
---|---|---|---|---
normal | CTRL+s | :w< CR> | salva o arquivo atual
normal | ALT+s | :wa< CR> | salva todos os arquivos,exceto os sem nome ou readonly
normal | CTRL+x | :qa< CR> | fecha todos os arquivos
normal | CTRL+q | :wq< CR> | salva o split atual ou fecha o neovim
normal | CTRL+u | :u < CR> | desfaz última ação
normal | CTRL+r | :redo< CR> | refaz ultima ação desfeita
normal | CTRL+h | :split< CR> | divide a tela horizontalmente
normal | CTRL+j | :vsplit< CR> | divide a tela verticalmente
normal | CTRL+Up | :resize +2< CR> | aumenta o tamanho do split horizontal
normal | CTRL+Down | :resize -2< CR> | dminui o tamanho do split horizontal
normal | CTRL+Left | :vertical resize -2< CR> |  dminui o tamanho do split vertical
normal | CTRL+Right | :vertical resize +2< CR> |  aumenta o tamanho do split vertical
normal | leader+h | CTRL+w+h |  alterna para o split da esquerda
normal | leader+j | CTRL+w+j |  alterna para o split de baixo
normal | leader+h | CTRL+w+k |  alterna para o split de cima
normal | leader+h | CTRL+w+l |  alterna para o split da direita
normal | CTRL+a | :NvimTreeToggle< CR> | abre o explorador de arquivos
visual | p | _ dp | colar no modo visual apaga o texto selecionado e cola o texto copiado
visual | > | > gv | adiciona uma indentação nas linhas selecionadas
visual | < | < gv | remove uma indentação nas linhas selecionadas

obs: o **CR** não é separado do **<** ,porém fiz dessa maneira pra não dar erro na página

Obs: A **leader key** no vim é por padrão o caractere `\` ,porém eu remapeei para `-` ,por ser uma tecla fácil de acessae na caixa de ferramentas ,então quando ver algo mapeado com **leader** ,no lugar de CTRL ou ALT ,você irá alertar **-**

As setas da caixa de ferramentas são mapeadas como **up , down,left,right** ,então quando ver algo como CTRL+Up,saiba que é ctrl e a seta que aponta pra cima

Existem outros atalhos específicos de plugins,eles serão explicados no tópico de seu respectivo plugin


## Plugins

No vim,e consequentemente no neovim,é possível instalar plugins que adicionam fucionalidades ao editor,são como as extênsões do vscode e tornam o neovim quase uma ide


Você aprenderá a instalar e configurar plugins no tópico [personalização](#personalizacao)

### NvimTree
[mais informações](ttps://github.com/kyazdani42/nvim-tree.lua)

O primeiro a falar é o nvimtree,um explorador de arquivos muito completo e leve

Você pode abrir ou fechar o nvimtree usando o comando `:NvimTreeToggle` ,ou o atalho mapeado **CTRL+a**

A nvimtree possui vários mappings para usar **somente na própria nvimtree**

Esta config do neovim está com a  configuração padrão da nvintree,então caso queira saber mais sobre a configuração,olhe no github da nvimtree

#### Mapeamentos

atalho | ação
---|---
g? | com isso você vê todos os comandos da nvimtree,é nescessário apertar os dois botões rapidamente,ou usando a área  de texto,aperte novamente pra desativar
**enter** , **o** ou  **2 cliques** | abre o arquivo 
CTRL+] | muda a raiz do diretório,equivalente ao comando `cd` do termux
CTRL+v | abre o arquivo em um split vertical
CTRL+x |  abre o arquivo em um split horizontal
CTRL+k | vê algumas informações do arquivo
a | cria um arquivo,colocar um `/` no final do nome cria um diretório ao invés de arquivo
r | renomeia um arquivo mudando seu caminho,logo também serve pra mover um arquivo pra outros diretórios
d | apaga um arquivo ou diretório,nescessita confirmação
c | copia o caminho de  um arquivo
p | cola o caminho copiado

Esses são os atalhos principais da nvimtree ,é um plugin simples porém poderoso

Se quiser ver os outros use o `g?`

### vim-move
[mais informações](https://github.com/matze/vim-move)

O vim move é um plugin simples com uma unica função,mover coisas

No modo normal você pode mover a linha atual pra cima e pra baixo com `ALT+k` e `ALT+j` ,tambem é possivel mover um caractere pros lados com `ALT+h` e `ALT+l`

No modo visual fuciona da mesma forma que no normal,porém voccê pode mover  várias linhas ou caracteres ao mesmo tempo

### TreeSitter
[mais informações](https://github.com/tree-sitter/tree-sitter) 
O TreeSitter é um plugin que serve pra ter melhor highlighting e indentação pra certas linguagens

Ele fuciona muito bem em algumas,em outras nem tanto

Pra ativar ele é nescessário baixar o pacote com suporte para a linguagem que você quer rodando o comando `:TSInstall python` usei python como exemplo


Não gostou do highlighting do TreeSitter? É possivel desinstalar usando `:TSUninstall python`

O TreeSitter também é o responsável por deixar os parenteses coloridos,então desinstalando isso também para de fucionar

Para desabilitar o highlighting e/ou indentação sem desativar o resto,você pode rodar o comando `:TSDisable highlight` ou `:TSDisable Indent` toda vez que iniciar o neovim,ou adicionar sua linguagem a "highlight_disable_list" e "indent_disable_list" no arquivo `~/.config/nvim/lua/theme/treesitter.lua` linha 6 e 7


### comment
[mais informações](https://github.com/numToStr/Comment.nvim#commentstring) 

Comment é um plugin que te permite facilmente facilmente comentar ou descomentar linhas em várias linguagens diferentes

Para comentar a linha atual no modo normal,aperte `gcc` rapidamente

Para comentar várias linhas,selecione no modo visual e aperte `gc` 

Para comentar uma parte da linha,selecione no modo visual e aperte `gb`


### Github copilot
[mais informações](https://github.com/github/copilot.vim)

O vim tem suporte ao Github copilot e para ativar  você só precisa usar o comando `:Copilot setup` ,irá aparecer um código de 6 digitos,você copia e da enter,ele irá abrir automaticamente no github onde você só precisa colar seu código lá e ele vai configurar automaticamente

Para habilitar o copilot (caso ache que não esteja) você pode usar o `:Copilot enable` , e para desabilitar `:Copilot disable`

Um outro comando legal é o  `:Copilot panel` que mostra  todas as sugestões disponíveis ,porém ele pode causar alguns erros então se certifique de salvar seus arquivos antes de usar esse comando

### ToggleTerm
[mais informações](https://github.com/akinsho/toggleterm.nvim) 

O toggleterm serve pra abrir um terminal flutuante

Este plugin pode causar erros,embora seja muito conveniente,caso não queira correr riscos você pode abrir um novo terminal do termux e usar os comandos lá mesmo


Para abrir e fechar o terminal use o atalho mapeado **CTRL+t**

### Telescope
[mais informações](https://github.com/nvim-telescope/telescope.nvim)

O telescope é sem dúvidas um dos plugins mais importantes e úteis ,pois ele tem uma infinidade de fucionalidades,todas ligadas a encontrar alguma coisa

![imagem telescope]()

#### Mapeamentos

Se você quiser ver tudo que o telescope pode fazer,digite `:Telescope` e aperte **TAB** ,é realmente muita coisa

Aqui estão algumas das principais,e mais úteis funções desss poderoso plugin ,e alguns atalhos
 
atalho | comando | ação
---|---|---
leader+ff | :Telescope find_files< CR> | busca por arquivos
leader+fg | :Telescope live_grep < CR>| busca  por um texto dentro de todos os arquivos do diretório atual
leader+fb | :Telescope buffers < CR>| procura por todos os buffers ativos
leader+fh | :Telescope help_tags < CR> | busca por ajuda e documentação,parecido com o `:h`

Saber usar o telescope pode te poupar muito tempo

### LSP , autocomplete e formatação

Esse não é um plugin,e sim um conjunto de plugins que fornecem features como autocomplete,formatação de codigo,go to definition,etc

Essa é com certeza a parte mais complicada de se fazer no neovim,porém é  uma feature muito importante pra qualquer editor de código

#### Sobre
O que exatamente é LSP? Basicamente é a abreviação de **language server protocol** ,que é algo que te permite criar e instalar **servidores de linguagem** ,esses servidores de  linguagem te proporcionam essas festures tão importantes

####  Lsp Installer
[mais informações](https://github.com/williamboman/nvim-lsp-installer) 

O primeiro passo é instalar a lsp do servidor de linguagem que você queira

você só precisa entrar em um arquivo da linguagem e usar o comando `:LspInstall` ,irá aparecer uma lista com todos os servidores disponíveis pra aquele tipo de arquivo

Pesquise qual o melhor ou mais usado pra sua linguagem,recomendo o [vscode marketplace](https://marketplace.visualstudio.com/vscode) pra ver esse tipo de coisa

lsp installer utiliza vários gerenciadores de pacotes ,caso a instalação dê erro,pode ser que você não tenha o gerenciador nescessário

Para ver os gerenciadores instalados,use o comando `:checkhealth nvim-lsp-installer`

Após instalar o servidor,ele irá se configurar automaticamente usando o lsp-config

Para desinstalar um servidor use o comando `:LspUninstall servidor`

#### Lsp config
[mais  informações](https://github.com/neovim/nvim-lspconfig)
[manual de configuração dos lsps](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

É o plugin responsável por configurar e rodar o lsp ao entrar em um arquivo compatível

Este plugin pode dar este erro ao entrar em um arquivo
```
Spawning language server with cmd: `lua-language-server` failed. The language server is either not installed, missing from PATH, or not executable.
```
Esse foi um erro que eu tive ao tentar usar o lsp da linguagem de programação lua,eu demorei bastante pra descobrir como resolver mas é bem fácil

Este erro significa que está faltando um arquivo binário no seu sistema ,e por isso não é possivel ativar o lsp 

Tudo que eu fiz pra resolver  foi instalar o binário que estava faltando
```
apt install lua-language-server
```
Caso não fucione  com **apt** ,pesquise como instslar o binário informado,e aí dará tudo  certo



#### cmp
O nvim cmp é basicamente aquele pop up que aparece com as sugestões de completion enquanto você escreve,ele possui snippets para facilitar sua vida

Você pode navegar entre as sugestões com as setas **Up** e **Down**

Após selecionar o desejado é só apertar enter

Quando uma sugestão está selecionada,ao lado irá aparecer a documentação da função,classe,snippet e coisas do tipo,caso a documentação seja extensa demais,é possivel rolar usando **ALT+Up** e **ALT+Down**

É possivel ativar e desativar o cmp com o atalho **CTRL+Space** ,e a sugestão será cancelada ,o cmp voltará assim que você começar a escrever de novo,normalmente desativar o cmp é util quando você não quer dar enter sem que a  palavra  seja completada

#### null-ls
O null-ls é um plugin que adiciona diagnósticos e formatação  ao neovim,essas são fucionalidades do lsp,mas muitas vezes o lsp não tem essas funções

Basicamente,o null-ls é um complemento do lsp


O null-ls só precisa ser configurado caso o seu lsp **não** tenha suporte a   diagnósticos e formatação,você pode testar isso escrevendo algo como `print(        1,2        ,3        )` e apertando `CTRL+f` ,se o código for formatado,seu lsp possui suporte nativo

Se nada acontecer,é nescessário configurar

##### fucionamento
O null-ls fuciona por meio de binários que você precisa instalar no seu sistema ,e depois de instalados precisam ser confifurados **manualmente** ,mas não se assuste,é mais simples do que parece


Porém,caso não se sinta segura pra configurar não tem problema,você vai perder algumas  fucionalidades legais mas é algo que dá pra viver sem

Quando ganhar mais experiência tente configurar novamente

##### Instalando os binários
A linguagem python será utilizada como exemplo

O primeiro passo é pesquisar quais os binários responsáveis por fazer esses serviços para sua linguagem,e então olhar se eles estão disponíveis nos
[builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins) do null-ls

É interessante olhar nod builtins antes de pesquisar,caso você reconheça pelo nome isso pode poupar tempo

Agora que você já sabe quais binários irá precisar,pesquise como instalar eles

No caso do python se usa o **black** pra formatação e o **flake8** para diagnósticos,então preciso instalar ambos

No caso deles,é possível instalar usando pip, o gerenciador de pacotes do python

```
pip install black flake8
```

##### Configurando os binários
Após instalar os binários,é nescessário configurar no arquivo do null-ls

Com esse comando é possível abrir ele diretamente,independentemente de onde você estiver

```
nvim ~/.config/nvim/lua/lsp/null-ls.lua
```

![print do arquivo null-ls](https://user-images.githubusercontent.com/81770118/174466466-366453ff-c619-43e1-ba45-7fbdb86aa578.jpg) 

Como visto na imagem acima,tudo que precisei fazer foi escrever dentro da lista __*sources*__ , **formatting.black,** para configurar  o black como formatador,e **diagnostics.flake8,** para adicionar os diagnósticos , todos com uma **virgula no final** , caso contrário dará erro

É o mesmo com todos os binários , agora só falta testar e ver se está fucionando corretamente

Tambem é possível passar argumentos ao configurar o binário,mas issoné algo meio avançado demais

Nota: Substituí o black pelo autopep8 , `pip autopep8`

##### Formatando

Com os  binários instalados e configurados,você pode formatar o arquivo atual com o  comando
```
:lua vim.lsp.buf.formatting()
```
Ou o atalho **CTRL+f**


#### Atalhos Lsp
Atalhos relacionados a ações fornecidas pelo lsp

Todos esses  atalhos são usados no modo **Normal**

Para usar coisas como **go to definition** é só por o cursor encima da função ou classe,e apertar as telcas mapeadas como atalho

Atalho | ação
---|---
gd | go to definition 
gD | go to declaration
K | hover
gi | go to implementation
gl | mostra os diagnósticos da linha atual
[d | pula pra linha anterior com diagnósticos a serem mostrados
]d | pula pra próxima linha com diagnósticos a serem mostrados
leader+q  | mostra uma lista com todos os diagnósticos do arquivos
CTRL+f | formata o código
CTRL+s | (modo insert) mostra a assinatura da função ou classe


### Bufferline

Bufferline é o plugin que te permite ter os buffers abertos na parte de cima da tela,e sendo facilmente acessados por toque ou comandos

É inconveniente escrever um comando só pra trocar de buffer,por isso alguns atalhos estão mapeados

Atalho |  comando | acão
CTRL+n | :BufferLineCycleNext!< CR>| alterna pro próximo buffer
CTRL+p | :BufferLineCyclePrev!< CR>| alterna pro buffer anterior
CTRL+d | :bdelete!< CR> | fecha o buffer atual
leader+mn | :BufferLineMoveNext< CR> | move o buffer atual pra direita
leader+mp | :BufferLineMovePrev< CR> | move o buffer atual pra esquerda
leader+se | :BufferLineSortByExtension< CR> | organiza os buffers baseado pela extensão do  arquivo
leader+sd | :BufferLineSortByDirectory< CR> | organiza os buffers baseado em que diretório ele está


### Gitsigns

Gitsigns  é  um plugin simples que mostra as mudanças feitas no  arquivo desde o ultimo commit

Essas mudanças são mostradas pelas cores dos numeros

cores | significado
---|---
verde | linha adicionda
azul | mudança na linha
vermelho | Algo foi deletedo nessa linha


O gitsigns também possui comandos que te permitem comparar o arquivo do ultimo commit com o arquivo atual

E estão mapeados alguns atalhos para facilitar o uso desses comandos

Atalho | Comando | ação
---|---|---
leader+gs | :Gitsigns show< CR>| abre um novo buffer com o arquivo sem alterações desde o ultimo commit
leader+gd | :Gitsigns toggle_deleted < CR> | mostra no arquivo atual tudo que foi deletado com linhas marcadas em vermelho
leader+gt  | :Gitsigns diffthis< CR> | abre o arquivo sem alterações em um split vertical e marca as alterações


## Personalização
Uma das grandes vantagens do neovim é ser completamente personalizável,então aqui você aprenderá o básico,como instalar plugins,mudar o colorscheme,criar seus próprios keymaps,etc

###  Instalando plugins
[mais informações  sobre o packer](https://github.com/wbthomason/packer.nvim#bootstrapping)
No neovim é possível adicionar qualquer coisa através de plugins,então é importante saber como baixar um 

Pra isso iremos precisar de  um gerenciador de plugins,um plugin  que instala outros plugins,nesse caso usaremos o **packer** caso você tenha feito tudo conforme este tutorial,ele já instalou assim que o neovim foi aberto pela primeira vez

Normalmente os  plugins ficam em repositórios do github,então você só precia por o `usuario/repositório`

Exemplos:

navarasu/onedark.nvim  , sainnhe/sonokai

Esses são dois plugins de colorschemes, caso pesquise por eles verá que são repositórios no github,nada demais

Agora para realmente instalar o plugin,agora que você já sabe o repositório do  plugin desejado,você precisa abrir os arquivos **plugins.lua**,é possivel abrir ele diretamente com o comamdo abaixo
```
nvim ~/.config/nvim/lua/plugins/plugins.lua
```

Agora desça o código e você verá o seguinte `return packer.startup(function()` ,2 linhas abaixo disso é onde você pode instalar o seu plugin

Para instalar é só escrever `use "usuario/repositório"`(o usurario/repositório **precisa** estar entre aspas ou o código vai dar erro),salvar e então  rodar o comando `:PackerInstall`,feito isso seu plugin está instalado

Para  configurar eu recomendo criar um arquivo específico para o plugin no diretório `~/.config/nvim/lua/plugins/` e então requisitar ele no `~/.config/nvim/lua/plugins/main.lua` ,isso  facilita a manutenção do código

### Colorschemes / Temas
Colorschemes é o nome usado pra se referir aos temas do neovim,e existem milhares que você pode usar ou até mesmo criar o seu próprio

Nesta configuração eu já deixei instalado os meus favoritos

1. navarasu/onedark.nvim (Configurado como default)
2. sainnhe/sonokai
3. morhetz/gruvbox
4. LunarVim/onedarker.nvim

Caso queira outro tema,irá precisar [instalar o plugin](#instalando-plugins)

Você pode mudar o tema por meio do comando `:colorscheme tema` ,apertando **TAB**  após o colorscheme irão aparecer toodos os temas disponíveis

Mudar o tema por linha de comando é algo temporário,e o tema default voltará da próxima vez que o neovim for aberto

Para mudar o tema default você precisa abrir o arquivo de configuração
```
nvim ~/.config/nvim/lua/theme/colorscheme.lua
```

você pode apagar tudo desse arquivo ,use os keybidings do vim pra facilitar : **ggVGd**

Após isso ,a forma mais facil de  configurar é essa
```
vim.cmd([[
aqui vão todas as configurações  do colorscheme


mesmo que  sejam várias linhas
]])
```
Existe uma forma melhorde configurar o tema,porém exige um pouco de conhecimento de lua

É possivel  ter as configurações de vários temas de uma vez no mesmo arquivo ,eles não vão interferir um no outro

Para setar um tema como default,adicione isso logo ao final do arquivo
```
vim.cmd([[colorscheme tema]])
```
Substitua "tema" pelo  nome do tema que você deseja ,e toda vez que o  neovim for aberto ele estará lá,da forma como foi configurado

### Atalhos
Em breve...


### Configurações
Em breve...



# Possíveis bugs e erros
Usar o neovim no termux pode ter alguns bugs e erros desagradáveis,aqui estarão os erros já conhecidos por mim e como  eu resolvo

## Erros de interface
Os erros de interface são os mais comuns e ocorrem o tempo todo,porém são fáceis de resolver

Esses erros ocorrem principalmente por causa do teclado virtual ,algo que o neovim não espera

Texto sumindo e a parte lualine bugada são os "sintomas" comuns desse bug

Para resolver você pode abrir e fechar a área de texto,mudar o zoom do termux ,girar a tela do celular e navegar pelo arquivo pra cima e pra baixo

## segmentation fault error
Esse é um erro realmente perigoso pois pode te fazer perdee mudanças não salvas no arquivo

As causas principais são abrir terminais dentro do neovim,seja com o comando `:term` ou com o plugin ToggleTerm,o Github Copilot támbem já apresentouvesse erro ao tentar usar o comando `:Copilot panel`

![segmentation fault error](https://user-images.githubusercontent.com/81770118/173489615-c9d90eb4-ea14-4669-a6e5-8bbcea14381f.jpg) 

A imagem acima mostra o erro ocorrendo

Basicamente o terminal passa a descrever o local onde o ponteiro do mouse está,por isso ele escreve ao tocar ou arrastar na tela

Não há uma solução pra esse erro,você vai ter que  fechar esse terminal , aperte CTRL+c pra cancelar a operaçao atual e então digite **exit**

Para evitar esse erro é recomendado que ao invés de abrir o terminal direto no vim,abra  vários terminais no termux ,isso será muito melhor e não tem chance de dar erro




# Conteudo  recomendado
Talvez você  esteja procurando por mais conteudo sobre vim para  aprender  a configurar ou usar o neovim da melhor forma possivel,então aqui estão alguns dos conteudos que me ajudaram muito a configurar o meu neovim

## 1- Neovim from scratch
[link](https://youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
Idioma - Inglês

Essa foi sem dúvidas a minha fonte mais importante ao aprender sobre neovim e  lua,é uma série mo youtube onde você pode aprender muito sobre lua,vim api e plugins

## 2- vim essentials
[link](https://www.udemy.com/share/101K2e3@Q-UMrncWC04YwcD4E3ITpbgtqo80psmezb6byopt5a70fRADcPi8lc3IMtfMftb18A==/) 
Idioma - Inglês

Esse é um curso gratuito e bem curtinho da udemy  que pode te ajudar a decorar os keybidings do vim e melhorar a sua produtividade usando esse editor

## 3- Terminal root
[link](https://youtube.com/playlist?list=PLUJBQEDDLNcnl-1CebtDi6tlt9TtsrkgP)
Idioma - Português

Esse é um canal do youtube que fala bastante sobre vim e neovim

## 4- Manual do código
[link](https://youtu.be/lm7y2hI6zME)
Idioma - Português

Esse vídeo foi o meu primeiro contato com o vim e neovim,é  útil caso você queira entender como o vim e o neovim fucionam

**ATENÇÃO**
Nesse  vídeo a configuração é feita com **vim script** , porém a maioria das pessoas (incluindo eu) que usam  neovim configuram com a linguagem **Lua**, então esse vídeo é recomendado pra aprender mais sobre os modos do vim,e o fucionamento do próprio,porém **não recomendo** seguir essa configuração




# Considerações finais
O neovim pode até  ser seu editor de código mas seu ambiente de desenvolvimento é o termux por completo,utilize as features dele ao máximo,como abrir vários terminais ao mesmo tempo,e quando ocorrer um erro saiba que isso pode ser tanto do neovim quanto do termux,ter isso em mente pode te ajudar **muito**

Eu espero que este repositório tenha te ajudado e que  você  consiga  continuar programando mesmo tendo somente um celular,pode até ser mais difícil,mas é totalmente possível


Eu por exemplo sou programador há 2 anos usando **somente** o celular,então não desista do seu sonho só por não ter um computador,siga em frente e **não desista** :)


Em caso de dúvidas ou erros abra uma issue

Caso queira fazer um elogio,dar uma sugestão ou não saiba abrir uma issue,me  chame no [telegram](https://t.me/Outragedline)

