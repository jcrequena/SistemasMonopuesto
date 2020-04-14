#!/bin/bash
#Autor/a: JC Requena
#Fecha 24/04/2020
#Descripción: Menú básico con 4 opciones y una final para salir del script.
#Cada opcióndel menú, accede a una función que es donde se desarrolla una funcionalidad en concreto.

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

#Comando para listar los usuarios cuyo id >=1000. Se usa el comando cut
#En la expresión regular, se busca en el campo 3, los valores que tengan 4 dígitos (mayores a 999). 
#Después, con cut -d: -f1, sacamos por pantalla el campo 1 del fichero /etc/passwd que es el nombre de usuario
fntListarUsuarios (){
`cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}$' | cut -d: -f1`
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
	clear
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
		fntFuncion2
		read -p "Press [Enter] key to continue..."
       		;;
    	3) 
		fntFuncion3
		read -p "Press [Enter] key to continue..."
        	;;
    	4) 
		clear
        	#Con exit salimos del script
          exit
        	;;
    	*) 
		echo "Error: Seleccione una opcion valida [1-4]!"
        	read -p "Press [Enter] key to continue..."
		;;
   	esac
done
