#!/bin/bash
#Script del proyecto final UD6
#By:JcRequena

# Añadimos unas variables globales, que utilizaremos a lo largo del código
anyoEnCurso=21
nombreAgenda=Agenda-Tareas-2021


#     ##############
#-------FUNCIONES---
#     ##############

#Opción 1. Creación de entradas/registros para la agenda.
fntCrearEntradadasAgenda() {

        #Formulario para entrada de datos en la agenda.
	clear
	echo "------------Indroducción de datos---------------"
	read -p "Indica el mes: " mes 
	read -p "Indica el día: " dia 
	read -p "Indica la hora: " hora 
	read -p "Indica minuto: " min
	read -p "Introduce la descripción de la tarea: " desc
	read -p "Notas: " nota
	read -p "Urgencia: " urg  
	read -p "Introduce el municipio: " mun
	read -p "Introduce el nombre del contacto: " nomcontacto
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
echo " 2. Visualizar las 2 primeras tareas de un día en concreto."
echo " 3. Visualizar las tareas que tengan prioridad máxima (9)."
echo " 4. Visualizar las tareas que se hayan realizado en una Localidad en concreto"
echo " 5. Visualizar los campos Descripción de la tarea y Contacto de las tareas de un día en concreto."
echo " 6. Visualizar todas las tareas que tengan el campo Notas vacío."
echo " 7. Visualizar todas las tareas para un mes concreto."
echo " 8. Ordenar las tareas de un día en concreto por el campo Hora."
echo " 9. Volver al menú principal."
echo "_____________________________________________________"
echo ""
read -p "Seleccione la operacion a realizar [1-9]: " opcion

if [ "$opcion" != 9 ]; then
	echo "_____________________________________________________"
	echo ""
	echo "Selecciona el día y mes del que deseas obtener la información:"
	echo ""
	read -p "Introduce el dia, ejemplo 01: " dia
	read -p "Introduce el mes, ejemplo 02: " mes
	case $opcion in
    1)
	  #Comando para Visualizar las 5 últimas tareas de un día en concreto 
	  echo ""
	  ;;
    2)
	  #Comando para Visualizar las 5 últimas tareas de un día en concreto 
	  echo ""
	  ;;
    3)	
	  #Comando para visualizar las tareas que tengan prioridad máxima (9)
	  echo ""
	  ;;
    4)
	   #Comando para visualizar las tareas que se hayan realizado en una Localidad en concreto"
	   read -p "Introduce la localidad: " localidad
	  ;;
    5) 
      #Comando para visualizar los campos Descripción y Contacto de las tareas
      echo ""
      ;;
    6) 
      #Comando para visualizar todas las tareas que tengan el campo Notas vacío
      echo ""
      ;;
    7) 
      #Comando para visualizar todas las tareas del mes introducido
      echo ""
      ;;
     8) 
      #Comando para visualizar las tareas de un día en concreto ordenadas por el campo Hora
      echo ""
      ;;
    9) 
      ;;
          
    *) 
	  echo "Error: Selecciona una opción válida [1-9]"          
     ;;     
    esac
fi
done
}
# Opción 3. Borrar las tareas de un mes en concreto
fntBorrarTareasMes () {
	clear
	read -p "Introduce el mes: " mes
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

read -p "Selecciona la operación a realizar [1-4]: " opcion
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
	  echo "Warning: Selecciona una opción válida [1-4]"
          
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
	echo "Volviendo al menú inicial...."
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
	read -p "Selecciona la operación a realizar [1-6]: " opcion
	#Comprueba si el valor recogido en opciones del 1 al 6, si es otra cosa, se ejecuta *)
    	case $opcion in
    	1) 
		fntCrearEntradadasAgenda
		read -p "Presiona [Enter] para continuar." b
       		;;
    	2) 
		fntConsultarTareas
		read -p "Presiona [Enter] para continuar." c
        	;;
        3)	
		fntBorrarTareasMes
		read -p "Presiona [Enter] para continuar." d
        	;;
        4)	
		fntOpcionesCompresion	
		read -p "Presiona [Enter] para continuar." r
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
		echo "Warning: Selecciona una opción válida [1-6]"
        	read -p "Presiona [Enter] para continuar" g
		;;
   	esac
done
