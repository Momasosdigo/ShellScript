#!/bin/bash

function iYd() { clear
    while [ "$iYd" != 3 ]; do
        echo -e "\e[1;33m\033[1m*--------------------------------------*\e[0m"
        echo -e "\e[1;33m\033[1m|\e[0m 1. Cerrar procesos \e[1;32m[ NECESARIO PID ]\e[0m \e[1;33m\033[1m|\e[0m"
        echo -e "\e[1;33m\033[1m|\e[0m 2. Iniciar aplicaciones              \e[1;33m\033[1m|\e[0m"
        echo -e "\e[1;33m\033[1m|\e[0m 3. \033[0;101mVolver\033[0m                            \e[1;33m\033[1m|\e[0m"
        echo -e "\e[1;33m\033[1m*--------------------------------------*\e[0m"
        read -r -p "=> " iYd
        echo

        case $iYd in 
            1) sleep 1s
                echo "Para cerrar procesos sera necesario el numero PID el cual"
                echo "es el, Identificad de procesos (Process Indentifiers). "
                echo "Puedes abrir el administrador de tareas anterior y comprobar el PID"
                read -r -p "PID => " pid

                if [ "$pid" -le 893 ]; then
                    echo -e "\e[1;35m\033[4mLa integridad del sistema se veria afectada\e[0m\033[0m"
                elif [ "$pid" -le 1116 ]; then
                    echo -e "\e[1;35m\033[4mLa integridad del sistema se veria afectada\e[0m\033[0m"
                else
                    killall -u "$pid"
                fi
                echo
            ;;

            2)
                echo "Puedes abrir el administrador de tareas anterior y comprobar el PID"
                echo "en caso que desees cerrar el programa"
                read -r -p "Nombre => " ap
                "$ap"
                echo 
            ;;

            3)
                read -r -p "Presione enter para [ VOLVER ]..." iYd
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
                [ "$iYd" = true ]
            ;;
        esac #Final del case 3
   done #Final del while 3
}

iYd