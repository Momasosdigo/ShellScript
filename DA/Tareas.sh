#!/bin/bash

function tar() {
    while [ "$op_tar" != 6 ]; do
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
        read -r -p "=> " op_tar
        echo

        case $op_tar in 
            1) sleep 1s
                echo
                top
                echo
                read -r -p "Presione enter para [ CONTINUAR ]..." op_tar
                [ "$op_tar" = true ]
                clear
            ;;

            2) sleep 1s
                echo -e "\e[1;36m Ingrese el nombre del \033[4musuario\033[0m \e[1;36mque desea ver sus procesos \e[0m"
                read -r -p "=> " name
                top -u "$name"
                read -r -p "Presione enter para [ CONTINUAR ]..." op_tar
                [ "$op_tar" = true ]
                clear
            ;;

            3) sleep 1s
                echo
                htop -t
                clear
                #read -r -p "Presione enter para [ CONTINUAR ]..." op
                #[ "$op" = true ]
            ;;

            4) sleep 1s
                echo -e "\e[1;36m Ingrese el nombre del \033[4musuario\033[0m \e[1;36mque desea ver sus procesos \e[0m"
                read -r -p "=> " name
                htop -u "$name"
                clear
                #htop || echo El programa se encuentra instalado || echo El programa no esta instalado 
            ;;

            5)
               while [ "$op_tar2" != 6 ]; do
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
                    read -r -p "=> " op_tar2
                    echo

                    case $op_tar2 in
                        #Vista simple
                        1)
                            top -o %CPU
                            read -r -p "Presione enter para [ CONTINUAR ]..." op_tar2
                            [ "$op_tar2" = true ]
                            clear
                        ;;

                        2)
                            top -o %MEM
                            read -r -p "Presione enter para [ CONTINUAR ]..." op_tar2
                            [ "$op_tar2" = true ]
                            clear
                        ;;

                        3)
                            sudo df -h
                            read -r -p "Presione enter para [ CONTINUAR ]..." op_tar2
                            [ "$op_tar2" = true ]
                            clear
                        ;;

                        #Vista avanzada
                        4)
                            htop --filter %CPU
                        ;;

                        5)
                            htop --filter %MEM
                        ;;

                        6)
                            read -r -p "Presione enter para [ CONTINUAR ]..."
                            [ "$op_tar" = true ]
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
                read -r -p "Presione enter para [ VOLVER ]..."
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
                [ "$op_tar" = true ]
            ;;
        esac #Final del case 2
    done
}

tar