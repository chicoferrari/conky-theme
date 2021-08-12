#!/bin/bash

cd $(dirname $0)

file=start_conky.sh.desktop
home_dir=`echo $(whoami)`

path=/home/$home_dir/.conky/start_conky.sh

sed -i "s|Exec=.*|Exec=$path|" $file

echo "Caminho atualizado"
