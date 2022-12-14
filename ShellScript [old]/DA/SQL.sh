#!/bin/bash

function sql() { clear
    while [ "$sql" != 6 ]; do
        echo -e "\e[0;36m*-------------------------------*\e[0m"
        echo -e "\e[0;36m|\e[0m        \033[1;91m\033[5m\033[3mMySQL Terminal\033[0m         \e[0;36m|\e[0m"
        echo -e "\e[0;36m|\e[0m                               \e[0;36m|\e[0m"
        echo -e "\e[0;36m|\e[0m 1. Comprobar el servicio SQL  \e[0;36m|\e[0m"
        echo -e "\e[0;36m|\e[0m 2. Iniciar MySQL              \e[0;36m|\e[0m"
        echo -e "\e[0;36m|\e[0m 3. Activar el servicio SQL    \e[0;36m|\e[0m"
        echo -e "\e[0;36m|\e[0m 4. Reiniciar MySQL            \e[0;36m|\e[0m"
        echo -e "\e[0;36m|\e[0m 5. Detener el servicio SQL    \e[0;36m|\e[0m"
        echo -e "\e[0;36m|\e[0m 6. \033[0;101m\033[1;97mVolver\033[0m                     \e[0;36m|\e[0m"
        echo -e "\e[0;36m*-------------------------------*\e[0m"
        read -r -p "=> " sql 
        echo 

        case "$sql" in
            1)
                service mysql status
                echo
                read -n1 -p "Presione cualquier tecla para [ CONTINUAR ]..." sql
                [ "$sql" = true ]
                clear
            ;;

            2)
                mysql
            ;;

            3)
                service mysql start
                read -n1 -p "Presione cualquier tecla para [ CONTINUAR ]..." sql
                [ "$sql" = true ]
                clear
            ;;

            4) 
                service mysql restart
                read -n1 -p "Presione cualquier tecla para [ CONTINUAR ]..." sql
                [ "$sql" = true ]
                clear
            ;;

            5)
                service mysql stop
                read -n1 -p "Presione cualquier tecla para [ CONTINUAR ]..." sql
                [ "$sql" = true ]
                clear
            ;;

            *)
                clear
                echo
                echo -e "\e[1;35m\033[4mNo es una opcion lo que intentas\e[0m\033[0m"
                echo
                sleep 2s
                clear
                [ "$sql" = true ]
            ;;
        esac #Final switch sql
    done #Final while para sql
}

sql