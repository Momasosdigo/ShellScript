#!/bin/bash

clear
op_central=0

############ Estilos:
#######
# En Colores.sh se encuentran todo los colores y efectos usados
######
############ To Do List:
# !! Preparar documentacion y pruebas en caliente !!
# ? Aberiguar rigidez del codigo ante de 28/08
# todo: Reiteracion de menu con validacion [Terminado] => Pisible mejora a revisar
# todo: Comprobar ShellCheker para la rigidez a temprana edad de codigo
#############

while [ "$op_central" != 4 ]; do
    clear
    echo -e "\t\t\t\t۞۞۞۞۞۞۞۞۞۞۞۞۞۞"
    echo -e "\t\t\t\t  \033[1m\033[4mPROYECTO HECHO POR:\e[0m"
    echo -e "\t\t\t\t \e[0;31m   Carlos Gonzalez\e[0m"
    echo -e "\t\t\t\t \e[0;32m  Micaela Rodriguez\e[0m"
    echo -e "\t\t\t\t \e[0;34m    Luis Vergara\e[0m"
    echo -e "\t\t\t\t۞۞۞۞۞۞۞۞۞۞۞۞۞۞"
    echo

    echo -e "\e[0;36m*-------------------------------*\e[0m"
    echo -e "\e[0;36m|\e[0m          \033[1;91m\033[5m\033[3mBienvenido\033[0m           \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m                               \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 1. Ver usuarios en el sistema \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 2. Administrador de tareas    \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 3. Iniciar y detener procesos \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 4. \033[0;101m\033[1;97mSalir\033[0m                      \e[0;36m|\e[0m"
    echo -e "\e[0;36m*-------------------------------*\e[0m"
    read -r -p "=> " op_central 
    echo

    case $op_central in
    1) #De menu principal
        sleep 1s
        DA/./Usuario.sh
    ;;

    2) #De menu principal
        sleep 1s
        DA/./Tareas.sh
    ;;

    3) #De menu principal
        sleep 1s
        DA/./IniciarYdetener.sh
    ;;

    4) #De menu principal
        read -r -p "Presione enter  para [ SALIR ]..."
        clear
        exit
    ;;

    *)
        clear
        echo
        echo -e "\e[1;35m\033[4mNo es una opcion lo que intentas\e[0m\033[0m"
        echo
        sleep 2s
        clear
        [ "$op_central" = true ]
    ;;
    esac #Final case
done #Final while