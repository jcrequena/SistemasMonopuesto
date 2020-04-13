#!/bin/bash
#By: Juan Carlos Requena
#Versión 1.0

#Varibles Globales
zero=0
#Fin declaración de varibales globales

#Creamos la estructura de directorio para las imágenes Rádar
#/home/smx1/inm
#├── radar2020
#│   ├── 01
#│   │   ├── 01
#│   │   ├── 02
#│   │   ├── 03
#....

#El primer bucle recorre cada uno de los 12 mese del año, y el segundo bucle,
# va creando los directorios para cada uno de los días por mes

for  mes in $( seq 1 1 12 ); do
    if [ $mes -lt 10 ]; then
		  month=$zero$mes
    else
		  month=$mes
    fi
    #Creamos los directorios para los días para las imágenes Rádar	
    for dia in $(seq 1 1 31 ); do
        if [ $dia -lt 10 ]; then
		    day=$zero$dia
	    else
		    day=$dia
	    fi
	    mkdir -p /home/$USER/inm/radar2020/$month/$day
	    mkdir -p /home/$USER/inm/temperaturas-max2020/$month/$day
    done
done
