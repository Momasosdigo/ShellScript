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

if [ ! -d "$dir" ]; then #Verificación de creación de directorio no existente
    echo "El directorio no existe, ¿desea crear uno con el nombre propuesto?"
    read -r -p "[Yy] / [Nn] => " op

    while [ "$op" ]; do
        case "$op" in
        [Yy]* )
            #Usando el formato ( [Yy]* ) permite escribir:
            #y, Y, yes, Yes, YEs, YES, yES, yeS
            #Lo mismo pasa con la versión contraria de negación
            echo
            echo "[ El directorio se creará a continuacion... ]"
            mv DATOS/ $HOME/"$dir/"
            sudo chmod +x $HOME/"$dir/"DATOS/Script.sh
            echo "[ Se abrira el directorio en un momento... ]"
            sleep 1s
            open $HOME/"$dir"/DATOS/
        break;;

        [Nn]* )
            echo
            echo -e "[ Se ha \033[4;91mdenegado\033[0m con exito la instalacion... ]"
            sleep 0.45s
            exit
        break;;

        *)
            clear
            echo
            echo -e "\033[4;35mNo es una opcion lo que intentas\e[0m"
            echo
            sleep 2s
            clear
        break;;
        esac
    done #Final de verificación

elif [ -d "$dir" ]; then
    echo
    echo "El directorio si existe.."
    sleep 1s
    mv DATOS/ $HOME/"$dir/"
    sudo chmod +x $HOME/"$dir/"DATOS/Script.sh
    echo "Se abrira el directorio en un momento..."
    sleep 1s
    open $HOME/"$dir/"DATOS/
else
    echo -e "\033[5m\033[1;31m[ Se produjo un error al momento de instalar... ]\e[0m"
fi
