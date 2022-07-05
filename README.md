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


Após instalar o termux,abra e cole o comando

```
bash <(curl -s https://raw.githubusercontent.com/outragedline/neovim-termux/main/install.sh)
```

Isso irá atualizar o termux e instalar o neovim junto com todas suas dependências

O comando pode demorar alguns minutos e irá pedir confirmações

Caso seja necessário confirmar algo,digite _y_ e dê enter, caso seja necessário confirmar mas tenha isso no fim da linha: `[default=N]` , é só dar enter

Após instalado,abra o neovim para que ele instale os plugins automaticamente,com o comando
```
nvim
```
Caso algo dê erro ignore por agora e saia do neovim apertando `ctrl x` ou digitando `:q!`

Abra o neovim novamente e verá a diferença de imediato

Caso tenha ocorrido algum erro na instalação dos plugins digite o comando `:PackerSync` dentro do nvim, isso irá atualizar todos os plugins e instalar os que não foram instalados  da primeira  vez

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
Se tiver algum bug ou erro confira [aqui](https://github.com/outragedline/neovim-termux/wiki/Poss%C3%ADveis-erros-e-bugs), caso essa página não te ajude,abra uma issue


Caso você prefira, pode entrar em contato direto comigo no [telegram](https://t.me/Outragedline)
