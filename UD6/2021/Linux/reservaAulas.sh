#!/bin/bash
#Script By: JCRequena

#     
# Declaración de FUNCIONES
#   

fntCrearBasedeDatos() {
	
}  #Fin función fntCrearBasedeDatos
	
fntFuncion2() {
  
} 

fntFuncion3() {
  	
} 

fntmostrarMenu () {
    	
      
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
	
       		;;
    	2) 
	 
       		;;
    	3) 
	
        	;;
    	4) 
        	;;
    	*) 
		echo "Error: Seleccione una opcion valida [1-4]!"
		;;
   	esac
	read -p "Press [Enter] key to continue..."
done
