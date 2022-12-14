#!/bin/bash

clear
op=0
op2=0
name=0
sql=0

############################################
# ?Zona de pruebas de codigo               #
# !---> Trabajando en conexion a SQL <--- #
# Liena de trabajo acual 251 a 304       #
#########################################

while [ "$op" != 5 ]; do
    clear
    echo -e "\e[0;36m*-------------------------------*\e[0m"
    echo -e "\e[0;36m|\e[0m          \033[1;91m\033[5m\033[3mBienvenido\033[0m           \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m                               \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 1. Ver usuarios en el sistema \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 2. Administrador de tareas    \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 3. Iniciar y detener procesos \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 4. Iniciar base de datos \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 5. \033[0;101m\033[1;97mSalir\033[0m                      \e[0;36m|\e[0m"
    echo -e "\e[0;36m*-------------------------------*\e[0m"
    read -r -p "=> " op 
    echo 

    case $op in
    1) #De menu principal
        clear
        echo -e "\e[0;33m\033[1m*---------------------------------------*\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 1. Mostrar usuarios actuales          \e[0;33m\033[1m|\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 2. Mostrar usuarios antes conectados  \e[0;33m\033[1m|\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 3. \033[0;101m\033[1;97mVolver\033[0m                             \e[0;33m\033[1m|\e[0m"
        echo -e "\e[0;33m\033[1m*---------------------------------------*\e[0m"
        read -r -p "=> " op
        echo
        
        case $op in 
            1) sleep 1s
                echo
                w
                echo
            ;;
 
            2) sleep 1s
                last
                sleep 1s
                read -r -p "Presione enter para [ CONTINUAR ]..." op
                [ "$op" = true ]
                echo
            ;;

            3)
                read -r -p"Presione enter para [ CONTINUAR ]..." op
                [ "$op" = true ]
                clear
            ;;
            
            *)
                clear
                echo
                echo -e "\e[1;35m\033[4mNo es una opcion lo que intentas\e[0m\033[0m"
                echo
                sleep 2s
                clear
                [ "$op" = true ]
            ;;
        esac #Final del case 1
    ;;

    2) #De menu principal
        clear
        echo -e "\e[0;33m\033[1m*-----------------------------------------------------*\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m  1. Mostrar procesos generales   \e[1;34m[ VISTA SIMPLE ]\e[0m   \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m  2. Mostrar procesos por usuario \e[1;34m[ VISTA SIMPLE ]\e[0m   \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m                                                     \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m        \e[0;32m\033[1m\033[4m\033[3m[ Vista avanzada del administrador ]\033[0m         \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m                                                     \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m  3. Mostrar procesos generales  \033[5m\e[1;31m[ VISTA AVANZADA ]\e[0m  \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m  4. Mostrar procesos por usuario \033[5m\e[1;31m[ VISTA AVANZADA ]\e[0m \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m  5. Filtrar por procesos                            \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m  6. \033[0;101m\033[1;97mVolver\033[0m                                          \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m*-----------------------------------------------------*\e[0m\033[0m"
        read -r -p "=> " op
        echo
        
        case $op in 
            1) sleep 1s
                echo
                top
                echo
            ;;

            2) sleep 1s
                echo -e "\e[1;36m Ingrese el nombre del \033[4musuario\033[0m \e[1;36mque desea ver sus procesos \e[0m"
                read -r -p "=> " name
                top -u "$name"
                echo
            ;;

            3) sleep 1s
                dpkg -V htop
                sleep 3s
                echo
                htop -t
                echo
            ;;

            4) sleep 1s
                echo -e "\e[1;36m Ingrese el nombre del \033[4musuario\033[0m \e[1;36mque desea ver sus procesos \e[0m"
                read -r -p "=> " name
                htop -u "$name"
                #htop || echo El programa se encuentra instalado || echo El programa no esta instalado 
            ;;

            5)
               while [ "$op2" != 6 ]; do
                    clear
                    echo -e "*---------------------------------------------*"
                    echo -e "|                                             |"
                    echo -e "|              \033[1m\033[3mFiltro de tareas\033[0m               |"
                    echo -e "|                                             |"
                    echo -e "| 1. Mostrar uso de CPU   \e[1;34m[ VISTA SIMPLE ]\e[0m    |"
                    echo -e "| 2. Mostrar uso de RAM   \e[1;34m[ VISTA SIMPLE ]\e[0m    |"
                    echo -e "| 3. Mostrar uso de Disco \e[1;34m[ VISTA SIMPLE ]\e[0m    |"
                    echo -e "|                                             |"
                    echo -e "|        \e[0;32m\033[1m\033[4m\033[3m[ Vista de filtro avanzada ]\033[0m         |"
                    echo -e "|                                             |"
                    echo -e "| 4. Mostrar uso de CPU   \033[5m\e[1;31m[ VISTA AVANZADA ]\e[0m  |"
                    echo -e "| 5. Mostrar uso de RAM   \033[5m\e[1;31m[ VISTA AVANZADA ]\e[0m  |"
                    echo -e "| 6. \033[0;101m\033[1;97mVolver\033[0m                                   |"
                    echo -e "*---------------------------------------------*"
                    read -r -p "=> " op2 
                    echo

                    case $op2 in
                        #Vista simple
                        1)
                            top -o %CPU
                        ;;
                        
                        2)
                            top -o %MEM
                        ;;
                        
                        3)
                            df -h
                        ;;

                        #Vista avanzada
                        4)
                            htop --filter %CPU
                        ;;

                        5)
                            htop --filter %MEM
                        ;;

                        6)
                            read -r -p "Presione enter para [ CONTINUAR ]..." op
                            [ "$op" = true ]
                            clear
                        ;;

                        *)
                            clear
                            echo
                            echo -e "\e[1;35m\033[4mNo es una opcion lo que intentas\e[0m\033[0m"
                            echo
                            sleep 2s
                            clear
                        ;;
                    esac #Final case 5
                done #Final while 5
            ;;

            6) #Vuelve al inicio, puesto que al no haber una validaci??n el while se vuelve nulo
                read -r -p "Presione enter para [ CONTINUAR ]..." op
                [ "$op" = true ]
                clear
            ;;
            
            *)
                clear
                echo
                echo -e "\e[1;35m\033[4mNo es una opcion lo que intentas\e[0m\033[0m"
                echo
                sleep 2s
                clear
                [ "$op" = true ]
            ;;
        esac #Final del case 2
    ;;

    3) #De menu principal
        clear
        echo -e "\e[1;33m\033[1m*--------------------------------------*\e[0m"
        echo -e "\e[1;33m\033[1m|\e[0m 1. Cerrar procesos \e[1;32m[ NECESARIO PID ]\e[0m \e[1;33m\033[1m|\e[0m"
        echo -e "\e[1;33m\033[1m|\e[0m 2. Iniciar aplicaciones              \e[1;33m\033[1m|\e[0m"
        echo -e "\e[1;33m\033[1m|\e[0m 3. \033[0;101mVolver\033[0m                            \e[1;33m\033[1m|\e[0m"
        echo -e "\e[1;33m\033[1m*--------------------------------------*\e[0m"
        read -r -p "=> " op2
        echo
        
        case $op2 in 
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
                    kill "$pid"
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
                read -r -p "Presione enter para [ CONTINUAR ]..." op
                [ "$op" = true ]
                clear
            ;;

            *)
                clear
                echo
                echo -e "\e[1;35m\033[4mNo es una opcion lo que intentas\e[0m\033[0m"
                echo
                sleep 2s
                clear
                [ "$op" = true ]
            ;;
        esac #Final del case 3
    ;;
    ####################################
    #Lanzador de Mysql, en pruebas aun#
    4) clear
       while [ "$sql" != 6 ]; do
            echo -e "\e[0;36m*-------------------------------*\e[0m"
            echo -e "\e[0;36m|\e[0m          \033[1;91m\033[5m\033[3mMySQL Terminal\033[0m           \e[0;36m|\e[0m"
            echo -e "\e[0;36m|\e[0m                               \e[0;36m|\e[0m"
            echo -e "\e[0;36m|\e[0m 1. Comprobar el servicio SQL \e[0;36m|\e[0m"
            echo -e "\e[0;36m|\e[0m 2. Iniciar MySQL \e[0;36m|\e[0m"
            echo -e "\e[0;36m|\e[0m 3. Activar el servicio SQL \e[0;36m|\e[0m"
            echo -e "\e[0;36m|\e[0m 4. Detener el servicio SQL    \e[0;36m|\e[0m"
            echo -e "\e[0;36m|\e[0m 5. Reiniciar MySQL \e[0;36m|\e[0m"
            echo -e "\e[0;36m|\e[0m 6. \033[0;101m\033[1;97mVolver\033[0m                      \e[0;36m|\e[0m"
            echo -e "\e[0;36m*-------------------------------*\e[0m"
            read -r -p "=> " sql 
            echo

           case "$sql" in
            1)
                service mysql status
            ;;

            2) clear
                mysql
            ;;
            
            3)
                service mysql start
            ;;

            4) 
                service mysql stop
            ;;

            5)
                service mysql restart
            ;;
            
            6)
                read -r -p "Presione enter para [ CONTINUAR ]..." op
                [ "$op" = true ]
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
    ;;
    #Lanzador de Mysql, en pruebas aun#
    ##################################

    5) #De menu principal
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
        [ "$op" = true ]
    ;;
    esac #Final case
done #Final while

#   cat /etc/passwd | while read linea do
#   iduser= $(echo $linea | cut -d ":" -f3)
#   nom= $(echo $linea | cut -d ":" -f1)
#   if [$id - ge '1000'];
#   then
#   echo $id
#   fi
#  done
#   
# awk