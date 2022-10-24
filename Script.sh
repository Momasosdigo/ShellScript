#!/bin/bash

clear
op_central=0

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
    1) #De menu principal
        sleep 1s
        source DA/Usuario
        #Indicando la carpeta en dodne se encuentra los demas script, ya es suficiente para
        #ejecutarlos, no es necesario el darles la extencion [ .sh ] puesto que nuestro main
        #se encarga de darle todo parametros necesarios sin necesidad de hacerlo nosotros
    ;;

    2) #De menu principal
        sleep 1s
        source DA/Tareas
    ;;

    3) #De menu principal
        sleep 1s
        source DA/IniciarYdetener
    ;;

    4) #De menu principal
        sleep 1s
        source DA/SQL
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