#!/bin/bash

clear

############ Estilos:
#######
# En Colores.sh se encuentran todo los colores y efectos usados
######

while [ "$op_central" != 5 ]; do
    echo -e "\t\t\t\t\t۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞"
    echo -e "\t\t\t\t\t  \033[1m\033[4mPROYECTO HECHO POR:\e[0m"
    echo -e "\t\t\t\t\t \e[0;31m   Carlos Gonzalez\e[0m"
    echo -e "\t\t\t\t\t \e[0;32m  Micaela Rodriguez\e[0m"
    echo -e "\t\t\t\t\t \e[0;34m    Luis Vergara\e[0m"
    echo -e "\t\t\t\t\t۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞۞"
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
    echo -e "\e[0;36m|\e[0m $(date)  \e[0;36m|\e[0m"
    echo -e "\e[0;36m*-------------------------------*\e[0m"
    read -r -p "=> " op_central 
    echo

    case $op_central in
    1) #De menú principal
        sleep 1s
        source DA/Usuario
        #Indicando la carpeta en donde se encuentra los demás script, ya es suficiente para
        #ejecutarlos, no es necesario el darles la extensión [ .sh ] puesto que nuestro main
        #se encarga de darle todo parámetros necesarios sin necesidad de hacerlo nosotros.
    break;;

    2) #De menú principal
        sleep 1s
        source DA/Tareas
    break;;

    3) #De menú principal
        sleep 1s
        source DA/IniciarYdetener
    break;;

    4) #De menú principal
        sleep 1s
        source DA/SQL
    break;;

    5) #De menú principal
        echo -e "\033[4;30m\033[1;35mVuelva pronto\033[0m \033[1;35m^^\033[0m"
        sleep 1.5s
        exit
    break;;

    *)
        clear
        echo
        echo -e "\033[4;35mNo es una opcion lo que intentas\e[0m"
        echo
        sleep 2s
        clear
        [ "$op_central" = true ]
    ;;
    esac #Final case principal
done #Final while principal