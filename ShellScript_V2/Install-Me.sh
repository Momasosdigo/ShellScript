#!/bin/bash
clear

echo -e "\e[0;36m*-------------------------------------------------------*\e[0m"
echo -e "\e[0;36m|\e[0m \t\t\t\033[1;91m\033[5m\033[3mWelcome\033[0m                         \e[0;36m|\e[0m"
echo -e "\e[0;36m|\e[0m Escoja la ruta en la cual desea instalar el proyecto  \e[0;36m|\e[0m"
echo -e "\e[0;36m|\e[0m Directorio actual: \033[4;31m$(pwd)\e[0m    \e[0;36m|\e[0m"
echo -e "\e[0;36m*-------------------------------------------------------*\e[0m"
echo -e "\e[0;36m|\e[0m \033[5m[+]\033[0m No finalizar con '/' el directorio deseado        \e[0;36m|\e[0m"
echo -e "\e[0;36m*-------------------------------------------------------*\e[0m"
read -r -p "Directorio destino $HOME/ => " dir

if [ ! -d "$dir" ]; then
    mv DATOS/ $HOME/"$dir"
    chmod +x $HOME/"$dir/"DATOS/*
    echo "El proyecto a sido instalado con exito ^^"
    echo "Se abrira el directorio en un momento"
    sleep 1s
    open $HOME/"$dir/"DATOS/
else
    echo "Se produjo un error al momento de la instalacion"
fi
