#By: Juan Carlos Requena
#Versión 1.0

#Varibles Globales
$zero=0
#Fin declaración de varibales globales

#Creamos la estructura de directorio para las imágenes Rádar y de temperaturas
#/home/smx1/inm
#├── radar2020
#│   ├── 01
#│   │   ├── 01
#│   │   ├── 02
#│   │   ├── 03
#....
#/home/smx1/inm
#├── temperaturas-max2020
#│   ├── 01
#│   │   ├── 01
#│   │   ├── 02
#│   │   ├── 03
#....

#El primer bucle recorre cada uno de los 12 meses del año, y el segundo bucle,
# va creando los directorios para cada uno de los días por mes
ForEach ($mes in 1..12) {
    if ($mes -lt 10) { 
     $month="$zero$mes"
    } else { 
      $month=$mes
    }
  ForEach ($dia in 1..31) {
    if ($dia -lt 10) { 
       $day="$zero$dia"
    } else { 
     $day=$dia
    }
	  mkdir -p C:\Users\$env:USERNAME\inm\radar2020\$month\$day
    mkdir -p C:\Users\$env:USERNAME\inm\temperaturas-max2020\$month\$day
  } # fin del for de 1..31
} # fin del for de 1..12
