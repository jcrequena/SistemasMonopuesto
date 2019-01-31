#!/bin/bash
#Script del proyecto final
#By:


#     ##############
#-------FUNCIONES---
#     ##############


fntFuncion1() {
	#Pregunta
	read -p "¿Pregunta?:(yes/no)" resp1
	#Funcionamiento del if
	if [ "$resp1" = "yes" ]; then
		echo "....."
	elif [ "$resp1" = "no" ]; then
		echo ".."
	else
		echo "Volviendo al menu......"
	fi
}  #Fin función fntFuncion1
	
fntFuncion2() {
# Funcionamiento del for
for i in {1..5}
do
   echo "Welcome $i times"
done
#Otra forma de hacerlo (
#Referencia: https://ss64.com/bash/seq.html
#First Step Last
for i in $(seq 1 1 5)
do
   echo "Welcome $i times"
done

} #Fin función fntFuncion2

                                           ####################
#------------------------------------------#PROGRAMA PRINCIPAL#---------------------------------------------
                                           ####################
#declarar Variables globales


#     ##################
#-------MENÚ PRINCIPAL---
#     ##################

while [ opcion != "" ]
do
	clear
	# http://www.patorjk.com/software/taag/
	echo "      __ _____  ___                                 "
	echo "  __ / // ___/ / _ \ ___  ___ _ __ __ ___  ___  ____"
	echo " / // // /__  / , _// -_)/ _ // // //  _)/ _ \/ _  /"
	echo " \___/ \___/ /_/|_| \__/ \_, / \_,_/ \__//_//_/\_,_/"
        echo "                          /_/"                     
        echo "                         /_/ "
	echo ""
	echo "Menu" 
	echo "_________________________________________"
    echo ""
    echo "1)" "Opcion1"
    echo "2)" "Opcion2"
	echo "3)" "Opcion3"
	echo "4)" "SALIR"
	echo "_________________________________________"
	echo ""

	read -p "Seleccione la operacion a realizar [1-4]: " opcion
	#Comprueba si el valor recogido en opcion es 1,2,3 o 4, si es otra cosa, se ejecuta *)
    	case $opcion in
    	1) 
			fntFuncion1
			read -p "Press [Enter] key to continue..."
       		;;
    	2) 
			fntFuncion1
			read -p "Press [Enter] key to continue..."
       		;;
    	3) 
			fntFuncion1
			read -p "Press [Enter] key to continue..."
        	;;
    	4) 
		clear
        	exit
        	;;
    	*) 
		echo "Error: Seleccione una opcion valida [1-4]!"
        read -p "Press [Enter] key to continue..."
		;;
   	esac
done
