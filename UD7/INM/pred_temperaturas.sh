#Para componer el año, mes, día, hora y minuto puedes utilizar la instrucción siguiente
#date +"%Y%m%d""%H""%M"

#En la variable dia, llevamos la cuenta de los pŕoximo 24, 48 y 72 horas, es decir, 1, 2 o 3.
dia=1
#Bucle donde en cada pasada,horas vale 24, 48 o 72.
for horas in $( seq 24 48 72); do
  #Componer el fichero png a descargar
  ruta=
  wget .....
  dia=$((dia+1))
done
