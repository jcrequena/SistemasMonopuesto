#/bin/bash

# En esta función creamos un submenú, para poder ofrecerle varias opciones de consulta al usuario:
fntsubMenu(){
opcionSubMenu="in"
while [ "$opcionSubMenu" != "" ]
do 
    clear
    echo "*********************************************************************"
    echo "------------ $SubMenu ----------------"
    echo "*********************************************************************"
    echo "Opciones: "
    echo "*********************************************************************"
    echo "1. Opción a."
    echo "2. Opción b."
    echo "3. Volver al menú principal."
    echo "*********************************************************************"
    read -p "Elige una opción: " opcionSubMenu

 	case $opcionSubMenu in
	1) 
       		funcionOpcion1-1
       		;;
	2) 
       		funcionOpcion1-2
       		;;
	3) 
       		clear
       		break;
       		;;
	*) 
			echo "Ha surgido un error, el carácter introducido no corresponde con las opciones válidas del (1 al 3)."
			read -p "Pulse [ENTER] para volver al menú: " enter
			;;
	esac
done

}

# -------------------------------------
# MENÚ Principal
# -------------------------------------
	opcionMenu="in"
	while [ "$opcionMenu" != "" ]
	do
		clear
		echo "******************************************************************************************"
		echo " ------------- menú de Principal ----------------"
		echo "******************************************************************************************"
		echo "Opciones: "
		echo "1 - Funcion 1."                                
		echo "2 - Submenu."
		echo "3 - Salir."
		echo "******************************************************************************************"
		echo ""
		read -p "Elige una de las opciones anteriores [1-3]: " opcionMenu
		case $opcionMenu in
		1)
			echo "Llamar a la Funcin 1"
			;;
		2)
			subMenu
			;;
		3)
			clear
			exit
			;;
		*)
			echo "Ha surgido un error, el carácter introducido no corresponde con las opciones válidas del (1 al 3)."
			read -p "Pulse [ENTER] para volver al menú: " enter
			;;
		esac
	done	
