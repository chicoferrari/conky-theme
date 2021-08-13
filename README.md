# Conky-desktop-theme

Repositório que contém um simples widget para desktop Linux.

## O que é

Conky é um monitor de sistemas leve e gratuito criado para mostrar as informações diretamente no desktop.

## Recursos

O widget possui os seguintes recursos:

* calendário;
* clima;
* localização;
* monitor do sistema.

## Screenshot

<img title="Conky-desktop-theme" src="Antares/AntaresMOD.png">

## Diretivas

<b>Observação:</b> As diretivas aqui descritas foram executadas no Manjaro, para as demais distros, utilizar o gerenciador de pacotes correspondente.

Instalação do pacote conky-lua-nv
```
$ pamac build conky-lua-nv
```
Instalação do jq e curl

```
$ sudo pacman -S jq curl
```
Clonando o presente diretório
```
$ cd /tmp
$ git clone https://github.com/chicoferrari/conky-theme.git
```
Fornecendo permissão de execução aos scripts
```
$ chmod +x conky-theme/Antares/scripts/*
```
Movendo os arquivos para os respectivos diretórios
```
$ mkdir ~/.conky
$ mv -r conky-theme/* ~/.conky/.
```
Configurando a cidade a qual queira receber as informações sobre o clima
```
$ ~/.conky/Antares/scripts/city_name.sh "nome da cidade" "código do país"

Exemplo:

$ ~/.conky/Antares/scripts/city_name.sh "São Paulo" "BR"
```
Configurando a aplicação para iniciar automaticamente
```
$ ~/.conky/set_start_conky.sh
$ cp ~/.conky/start_conky.sh.desktop ~/.config/autostart/.
```
---