#!/bin/bash

clear
op=0
name=0

#############
# ! Reparar la validacion de htop
# ! Plantear el filtro manuar de tareas PID
# !! Preparar documentacion y pruebas en caliente !!
# ? Aplicar colores (Menus distintos) ===> *En proceso*
# ? Aberiguar rigidez del codigo ante de 28/08
# todo: Reiteracion de menu con validacion [Terminado] => Pisible mejora a revisar
# todo: Comprobar ShellCheker para la rigidez a temprana edad de codigo
#############

while [ "$op" != 4 ]; do
    echo -e "*-------------------------------*"
    echo -e "|          \033[1m\033[3mBienvenido\033[0m           |"
    echo -e "|                               |"
    echo -e "| 1. Ver usarios en el sistema  |"
    echo -e "| 2. Administrador de tareas    |"
    echo -e "| 3. Iniciar y detener procesos |"
    echo -e "| 4. Salir                      |"
    echo -e "*-------------------------------*"
    read -r -p "=> " op 
    echo

    case $op in
    1) #De menu principal
        clear
        echo "*---------------------------------------*"
        echo "| 1. Mostrar usuarios actuales          |"
        echo "| 2. Mostrar usuarios antes conectados  |"
        echo "| 3. Salir                              |"
        echo "*---------------------------------------*"
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
        esac #Final del case 1
    ;;

    2) #De menu principal
        clear
        echo "*----------------------------------------------------*"
        echo "|  1. Mostrar procesos generales [ VISTA SIPLE ]     |"
        echo "|  2. Mostrar procesos por usuario [ VISTA SIPLE ]   |"
        echo "|                                                    |"
        echo "|        [ Vista avanzada del administrador ]        |"
        echo "|                                                    |"
        echo "|  3. Mostrar procesos generales  [ VISTA AVANZADA ] |"
        echo "|  4. Mostrar procesos por usario [ VISTA AVANZADA ] |"
        echo "|  5. Salir                                          |"
        echo "*----------------------------------------------------*"
        read -r -p "=> " op
        echo
        
        case $op in 
            1) sleep 1s
                echo
                top
                echo
            ;;

            2) sleep 1s
                echo "Ingrece el nombre del usuario que decea ver sus procesos"
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
                echo "Ingrece el nombre del usuario que decea ver sus procesos"
                read -r -p "=> " name
                htop -u "$name"
                echo
            ;;

            5) #Vuelve al inicio, puesto que al no haber una validación el while se vuelve nulo
                read -r -p "Presione cualquier tecla para [ CONTINUAR ]..." op
                [ "$op" = true ]
                clear
            ;;
        esac #Final del case 2
    ;;

    3) #De menu principal
        clear
        echo "*--------------------------------------*"
        echo "| 1. Cerrar procesos [ NECESARIO PID ] |"
        echo "| 2. Iniciar aplicaciones              |"
        echo "| 3. Salir                             |"
        echo "*--------------------------------------*"
        read -r -p "=> " op
        echo
        
        case $op in 
            1) sleep 1s
                echo "Para cerrar procesos sera necesario el numero PID el cual"
                echo "es el Identificad de procesos (Process Indentifiers). "
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
        esac #Final del case 3
    ;;

    4) #De menu principal
        read -r -p "Presione cualquier tecla para [ SALIR ]..."
        clear
        exit
    ;;

    *)
        clear
        echo "No es una opcion lo que intentas"
        sleep 1s
        ;;
    esac #Final case
done #Final while
