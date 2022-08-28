#!/bin/bash

clear
op=0
op2=0
name=0

############ Estilos:
#######
# \033[1m Estilo normal \033[0m
# \033[1m Negrita \033[0m
# \033[2m Dim \033[0m
# \033[4m Subrayado \033[0m
# \033[5m Parpadeo \033[0m
# \033[7m Inverso \033[0m
# \033[8m Invisible \033[0m
######
############ Colores:
######
# \e[0;30m Negro \e[0m
# \e[1;30m Gris oscuro \e[0m
# \e[0;34m Azul \e[0m
# \e[1;34m Azlul resaltado \e[0m
# \e[0;32m Verde \e[0m
# \e[1;32m Verde resaltado \e[0m
# \e[0;36m Cian \e[0m
# \e[1;36m Cian resaltado \e[0m
# \e[0;31m Rojo \e[0m
# \e[1;31m Rojo resaltado \e[0m
# \e[0;35m Púrpura \e[0m
# \e[1;35m Púrpura resaltado \e[0m
# \e[0;33m Cafe \e[0m
# \e[1;33m Amarillo \e[0m
# \e[0;37m Gris \e[0m
# \e[1;37m Blanco \e[0m
######
############ To Do List:
# ! Reparar la validacion de htop
# ! Plantear el filtro manuar de tareas PID
# !! Preparar documentacion y pruebas en caliente !!
# ? Aplicar colores (Menus distintos) ===> *En proceso*
# ? Aberiguar rigidez del codigo ante de 28/08
# todo: Reiteracion de menu con validacion [Terminado] => Pisible mejora a revisar
# todo: Comprobar ShellCheker para la rigidez a temprana edad de codigo
#############

while [ "$op" != 4 ]; do
    clear
    echo -e "\t\t\t\t۞۞۞۞۞۞۞۞۞۞۞۞۞۞"
    echo -e "\t\t\t\t  \033[1m\033[4mPROYECTO HECHO POR:\e[0m  "
    echo -e "\t\t\t\t \e[0;31m   Carlos Gonzalez\e[0m      "
    echo -e "\t\t\t\t \e[0;32m  Micaela Rodriguez\e[0m    "
    echo -e "\t\t\t\t \e[0;34m    Luis Vergara\e[0m         "
    echo -e "\t\t\t\t۞۞۞۞۞۞۞۞۞۞۞۞۞۞"
    echo
    echo -e "\e[0;36m*-------------------------------*\e[0m"
    echo -e "\e[0;36m|\e[0m          \e[1;31m\033[5m\033[3mBienvenido\033[0m           \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m                               \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 1. Ver usuarios en el sistema \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 2. Administrador de tareas    \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 3. Iniciar y detener procesos \e[0;36m|\e[0m"
    echo -e "\e[0;36m|\e[0m 4. Salir                      \e[0;36m|\e[0m"
    echo -e "\e[0;36m*-------------------------------*\e[0m"
    read -r -p "=> " op 
    echo

    case $op in
    1) #De menu principal
        clear
        echo -e "\e[0;33m\033[1m*---------------------------------------*\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 1. Mostrar usuarios actuales          \e[0;33m\033[1m|\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 2. Mostrar usuarios antes conectados  \e[0;33m\033[1m|\e[0m"
        echo -e "\e[0;33m\033[1m|\e[0m 3. Salir                              \e[0;33m\033[1m|\e[0m"
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
                echo
            ;;

            3)
                read -r -p "Presione cualquier tecla para [ CONTINUAR ]..." op
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
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m  4. Mostrar procesos por usario \033[5m\e[1;31m[ VISTA AVANZADA ]\e[0m  \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m  5. Filtrar por procesos                            \e[0;33m\033[1m|\e[0m\033[0m"
        echo -e "\e[0;33m\033[1m|\e[0m\033[0m  6. Salir                                           \e[0;33m\033[1m|\e[0m\033[0m"
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
                sudo apt-get install htop
                sleep 3s
                echo
                htop -t
                echo
            ;;

            4) sleep 1s
                echo -e "\e[1;36m Ingrese el nombre del \033[4musuario\033[0m \e[1;36mque desea ver sus procesos \e[0m"
                read -r -p "=> " name
                htop -u "$name"
                echo
            ;;

            5)
               while [ "$op2" != 6 ]; do
                    clear
                    echo -e "*---------------------------------------------*"
                    echo -e "|                                             |"
                    echo -e "|              \033[1m\033[3mFiltro de tareas\033[0m               |"
                    echo -e "|                                             |"
                    echo -e "| 1. Mostrar uso de CPU   \e[1;34m[ VISTA SIMPLE ]\e[0m     |"
                    echo -e "| 2. Mostrar uso de RAM   \e[1;34m[ VISTA SIMPLE ]\e[0m     |"
                    echo -e "| 3. Mostrar uso de Disco \e[1;34m[ VISTA SIMPLE ]\e[0m     |"
                    echo -e "|                                             |"
                    echo -e "|        \e[0;32m\033[1m\033[4m\033[3m[ Vista de filtro avanzada ]\033[0m         |"
                    echo -e "|                                             |"
                    echo -e "| 4. Mostrar uso de CPU   \033[5m\e[1;31m[ VISTA AVANZADA ]\e[0m  |"
                    echo -e "| 5. Mostrar uso de RAM   \033[5m\e[1;31m[ VISTA AVANZADA ]\e[0m  |"
                    echo -e "| 6. Salir                                    |"
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
                            read -r -p "Presione cualquier tecla para [ CONTINUAR ]..." op
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

            6) #Vuelve al inicio, puesto que al no haber una validación el while se vuelve nulo
                read -r -p "Presione cualquier tecla para [ CONTINUAR ]..." op
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
        echo -e "\e[1;33m\033[1m|\e[0m 3. Salir                             \e[1;33m\033[1m|\e[0m"
        echo -e "\e[1;33m\033[1m*--------------------------------------*\e[0m"
        read -r -p "=> " op
        echo
        
        case $op in 
            1) sleep 1s
                echo "Para cerrar procesos sera necesario el numero PID el cual"
                echo "es el, Identificad de procesos (Process Indentifiers). "
                echo "Puedes abrir el administrador de tareas anterior y comprobar el PID"
                read -r -p "PID => " pid
                kill "$pid"
                echo
            ;;
            
            2)
                echo "Puedes abrir el administrador de tareas anterior y comprobar el PID"
                read -r -p "Nombre => " ap
                "$ap"
                echo 
            ;;

            3)
                read -r -p "Presione cualquier tecla para [ CONTINUAR ]..." op
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

    4) #De menu principal
        read -r -p "Presione cualquier tecla para [ SALIR ]..."
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