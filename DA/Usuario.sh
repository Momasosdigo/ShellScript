#!/bin/bash

function user() {
    while [ "$op_user" != 3 ]; do
        echo -e "\e[0;33m\033[1m*---------------------------------------*\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 1. Mostrar usuarios actuales          \e[0;33m\033[1m|\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 2. Mostrar usuarios antes conectados  \e[0;33m\033[1m|\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 3. \033[0;101m\033[1;97mVolver\033[0m                             \e[0;33m\033[1m|\e[0m"
        echo -e "\e[0;33m\033[1m*---------------------------------------*\e[0m"
        read -r -p "=> " op_user
        echo

        case $op_user in 
            1) sleep 1s
                w
                read -r -p "Presione enter para [ CONTINUAR ]..." op_user
                [ "$op_user" = true ]
                clear
            ;;

            2) sleep 1s
                last
                read -r -p "Presione enter para [ CONTINUAR ]..." op_user
                [ "$op_user" = true ]
                echo
                clear
            ;;

            3)
                read -r -p "Presione enter para [ VOLVER ]..." op_user
                ./Script.sh
                clear
            ;;

            *)
                clear
                echo
                echo -e "\e[1;35m\033[4mNo es una opcion lo que intentas\e[0m\033[0m"
                echo
                sleep 2s
                clear
                [ "$op_user" = true ]
            ;;
        esac
    done
}

user