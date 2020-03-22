#En la variable dia, llevamos la cuenta de los pŕoximo 24, 48 y 72 horas, es decir, 1, 2 o 3.
dia=1
#Bucle donde en cada pasada,horas vale 24, 48 o 72.
for horas in $( seq 24 48 72); do
  #Componer el fichero png a descargar
  ruta=
  wget http://www.aemet.es/imagenes_d/eltiempo/prediccion/temperaturas/$ruta -O /home/$USER/inm/temperaturas-max2019
  dia=$((dia+1))
done
