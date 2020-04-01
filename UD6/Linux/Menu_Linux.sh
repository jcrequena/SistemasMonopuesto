#!/bin/bash
#Script By: JCRequena

#     
# Declaración de FUNCIONES
#   

fntCrearBasedeDatos() {
	#Bucle para crear los directorios de los meses
	for i in {1..12}
	do
   		#Comando para crear directorio
		$i
		#Bucle para crear los días en el mes correspondiente
		for j in {1..31}
		do
			#Comando para crear el fichero vacío en el directorio
			$j
		done
	done
	echo "Base de datos creada correctamente"
}  #Fin función fntCrearBasedeDatos
	
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
  	echo "1)" "Crear Base de datos (directorios+ficheros)"
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
		fntCrearBasedeDatos
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
