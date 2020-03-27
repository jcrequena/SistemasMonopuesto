#!/bin/bash
#Script By: JCRequena

#     
# Declaración de FUNCIONES
#   

fntFuncion1() {
	echo "Estoy en la función 1"
}  #Fin función fntFuncion1
	
fntFuncion2() {
  	echo "Estoy en la función 2"
} #Fin función fntFuncion2

fntFuncion3() {
  	echo "Estoy en la función 3"
} #Fin función fntFuncion3

fntmostrarMenu () {
    	clear
    	echo "Bienvenido " $LOGNAME
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
}


                                           ####################
#------------------------------------------#PROGRAMA PRINCIPAL#---------------------------------------------

#     ##################
#-------MENÚ PRINCIPAL---
#     ##################

# Bucle while infinito, ya que la variable opcion simpre será distinto de ""
# Salimos del bucle con el comando 'exit' --> al pulsar la opción 4
#
while [ opcion != "" ]
do
	
	fntmostrarMenu
	read -p "Seleccione la operacion a realizar [1-4]: " opcion
	#Comprueba si el valor recogido en opcion es 1,2,3 o 4, si es otra cosa, se ejecuta *)
    	case $opcion in
    	1) 
		fntFuncion1
       		;;
    	2) 
		fntFuncion2	   
       		;;
    	3) 
		fntFuncion3
        	;;
    	4) 
		clear
		echo "Saliendo de la App....."
		#Con exit salimos del script
          	exit
        	;;
    	*) 
		echo "Error: Seleccione una opcion valida [1-4]!"
		;;
   	esac
	read -p "Press [Enter] key to continue..."
done
