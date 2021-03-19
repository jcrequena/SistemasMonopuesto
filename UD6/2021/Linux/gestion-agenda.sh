#!/bin/bash
#Script del proyecto final UD6
#By:JcRequena

# Añadimos unas variables globales, que utilizaremos a lo largo del código
zero=0
anyoEnCurso=21
nombreAgenda=Agenda-Tareas-2021


#     ##############
#-------FUNCIONES---
#     ##############

#Opción 1. Creación de entradas/registros para la agenda.
fntCrearEntradadasAgenda() {

        #Formulario para entrada de datos en la agenda.
	clear
	echo "------------Indroduzción de datos---------------"
	read -p "Indique el mes: " mes 
	read -p "Indique el dia: " dia 
	read -p "Indique la hora: " hora 
	read -p "Indique minuto: " min
	read -p "Introduzca la descripción de la tarea: " desc
	read -p "Notas :" nota
	read -p "Urgencia: " urg  
	read -p "Introduzca el municipio: " mun
	read -p "Introduzca el nombre del contacto: " nomcontacto
	echo ""

    #Concatenación y redirección de los datos al fichero concreto de la agenda.	
	#Ejemplo --> H:19;M:05;D:Reunión;N:Despacho A-21;P:2;L:Burriana;C:JCRequena.

    #Comando para escribir en el fichero $nombreAgenda/$mes/$dia$mes$anyoEnCurso.dat los datos capturados

	echo ""
  	echo "Registro guardado correctamente"	
}

# Opción 2. Consultas de tareas en la base de datos Agenda
fntConsultarTareas() {
while [ "$opcion" != 8 ]
do

clear
echo ""
echo "     Selecciona la opción que deseas"
echo "_____________________________________________________"
echo ""
echo " 1. Visualizar las 5 últimas tareas de un día en concreto."
echo " 2. Visualizar las tareas que tengan prioridad máxima (9)."
echo " 3. Visualizar las tareas que se hayan realizado en una Localidad en concreto"
echo " 4. Visualizar los campos Descripción de la tarea y Contacto de las tareas de un día en concreto."
echo " 5. Visualizar todas las tareas que tengan el campo Notas vacío."
echo " 6. Visualizar todas las tareas para un mes concreto."
echo " 7. Ordenar las tareas de un día en concreto por el campo Hora."
echo " 8. Volver al menú principal."
echo "_____________________________________________________"
echo ""
read -p "Seleccione la operacion a realizar [1-8]: " opcion

if [ "$opcion" != 8 ]; then
	echo "_____________________________________________________"
	echo ""
	echo "Selecciona el día y mes del que deseas obtener la información:"
	echo ""
	read -p "Introduzca el dia, ejemplo 01: " dia
	read -p "Introduzca el mes, ejemplo 02: " mes
	case $opcion in
    1)
	  #Comando para Visualizar las 5 últimas tareas de un día en concreto 
	  echo ""
	  ;;
    2)	
	  #Comando para visualizar las tareas que tengan prioridad máxima (9)
	  echo ""
	  ;;
    3)
	   #Comando para visualizar las tareas que se hayan realizado en una Localidad en concreto"
	   read -p "Introduzca la localidad: " localidad
	  ;;
    4) 
      #Comando para visualizar los campos Descripción y Contacto de las tareas
      echo ""
      ;;
    5) 
      #Comando para visualizar todas las tareas que tengan el campo Notas vacío
      echo ""
      ;;
    6) 
      #Comando para visualizar todas las tareas del mes introducido
      echo ""
      ;;
     7) 
      #Comando para visualizar las tareas de un día en concreto ordenadas por el campo Hora
      echo ""
      ;;
    8) 
      ;;
          
    *) 
	  echo "Error: Seleccione una opcion valida [1-8]!"          
     ;;     
	esac
fi
done
}
# Opción 3. Borrar las tareas de un mes en concreto
fntBorrarTareasMes () {
	clear
	read -p "Introduzca el mes: " mes
	echo ""
	
    #Comando para borrar las tareas de ese mes
	#

	echo "Tareas del mes $mes borradas correctamente"
}

#Opción 4. Opciones de compresión.
fntOpcionesCompresion() {
clear
echo ""
echo "     Selecciona la opción que deseas ejecutar"
echo "_____________________________________________________"
echo ""
echo "1. Comprimir agenda."
echo "2. Descomprimir agenda."
echo "3. Visualizar contenido de la agenda sin extraer."
echo "4. Volver al menú principal."
echo "_____________________________________________________"
echo ""

read -p "Seleccione la operacion a realizar [1-4]: " opcion
case $opcion in
    1)
      if [ -d $anyoEnCurso/ ]; then
	  #Comando para comprimir la base de datos de la agenda
	  echo ""
      fi	
	  echo ""
	  echo "La base de datos de la agenda ha sido comprimida"
	  echo ""
	  ;;
    2)	
	  #Comando para descomprimir la base de datos de la agenda
	  echo ""
	  echo "La base de datos de la agenda ha sido descomprimida"
	  echo ""
	  ;;
    3)
	   #Comando para visualizar el contenido del fichero comprimido
	  ;;
    4) 
      ;;
          
    *) 
	  echo "Error: Seleccione una opcion valida [1-4]!"
          
     ;;     
esac
}


#Opción 5. Función para la opción de borrado de la base de datos de la Agenda.
fntBorrarAgenda () {
if [ -d $nombreAgenda/ ]; then
    #Comando para borrar la base de datos de la agenda
    echo "Base de datos de la agenda borrada correctamente"
else 
    echo ""
	echo "La agenda no existe"
	echo ""
	echo "Volviendo al menu inicial."
	echo ""
fi	
}

              ####################
#--------------#PROGRAMA PRINCIPAL#---------------------------------------------
              ####################

while [ opcion != "" ]
do
	clear
	echo ""
	echo "        Gestión Agenda de tareas 2021"
	echo "            by Juan Carlos Requena"
	echo ""
	echo "            MENÚ PRINCIPAL" 
	echo "__________________________________________"
     	echo ""					      
    	echo "1. Insertar tarea en la agenda."
	    echo "2. Consultar tareas de la agenda."
	    echo "3. Borrado de tareas de la agenda."
	    echo "4. Opciones de compresión."
	    echo "5. Borrar base de datos Agenda."
	    echo "6. Salir del programa."
	echo "_________________________________________"
	echo ""
	read -p "Seleccione la operacion a realizar [1-6]: " opcion
	#Comprueba si el valor recogido en opciones del 1 al 6, si es otra cosa, se ejecuta *)
    	case $opcion in
    	1) 
		fntCrearEntradadasAgenda
		read -p "Presione [Enter] para continuar." b
       		;;
    	2) 
		fntConsultarTareas
		read -p "Presione [Enter] para continuar." c
        	;;
        3)	
		fntBorrarTareasMes
		read -p "Presione [Enter] para continuar." d
        	;;
        4)	
		fntOpcionesCompresion	
		read -p "Presione [Enter] para continuar." r
        	;;
        5)	
		fntBorrarAgenda	
		read -p "Presione [Enter] para continuar." f
        	;;	
    	6) 
		    clear
        	exit
        	;;
    	*) 
		echo "Error: Seleccione una opcion valida [1-6]!"
        	read -p "Presione [Enter] para continuar" g
		;;
   	esac
done
