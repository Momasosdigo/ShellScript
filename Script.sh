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
# todo: Comprobar ShellCheker para la rigidez a temprana edad de codigo
#############

while [ "$op_central" != 5 ]; do
    echo -e "\t\t\t\t\t۞۞۞۞۞۞۞۞۞۞۞۞۞۞"
    echo -e "\t\t\t\t\t  \033[1m\033[4mPROYECTO HECHO POR:\e[0m"
    echo -e "\t\t\t\t\t \e[0;31m   Carlos Gonzalez\e[0m"
    echo -e "\t\t\t\t\t \e[0;32m  Micaela Rodriguez\e[0m"
    echo -e "\t\t\t\t\t \e[0;34m    Luis Vergara\e[0m"
    echo -e "\t\t\t\t\t۞۞۞۞۞۞۞۞۞۞۞۞۞۞"
    echo
    echo -e "\e[0;36m*-------------------------------*\e[0m"
    echo -e "\e[0;36m|\e[0m          \033[1;91m\033[5m\033[3mBienvenido\033[0m           \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m                               \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 1. Ver usuarios en el sistema \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 2. Administrador de tareas    \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 3. Iniciar y detener procesos \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 4. Iniciar base de datos      \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 5. \033[0;101m\033[1;97mSalir\033[0m                      \e[0;36m|\e[0m"
    echo -e "\e[0;36m*-------------------------------*\e[0m"
    read -r -p "=> " op_central 
    echo

    case $op_central in
    1) #De menu principal
        sleep 1s
        DA/./Usuario.sh 
        #Indicando la carpeta en dodne se encuentra los demas script, ya es suficiente
        #Si bien la fomra de hacerlo es invocando el source, en este caso y por efectos practicos
        #no lo use, por que todo se encuentra en un mismo documneto
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
        sleep 1s
        DA/./SQL.sh
    ;;

    5) #De menu principal
        read -n1 -p "Presione cualquier tecla para [ SALIR ]..."
        echo -e "\033[4;30m\033[1;35mVuelva pronto\033[0m \033[1;35m^^\033[0m"
        sleep 1.5s
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

    esac #Final case principal
done #Final while principal