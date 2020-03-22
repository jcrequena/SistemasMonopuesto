#!/bin/bash
#Script By: Autor/a

#     
# Declaración de Función
#
fntFuncion1() {
	#Pregunta
	read -p "¿Pregunta?:(yes/no)" resp1
	
}  #Fin función fntFuncion1

#
# Funcionamiento del if. Elif sirve para hacer if encadenados, en este caso hay 2.
#
if [ "$resp1" = "yes" ]; then
		echo "....."
elif [ "$resp1" = "no" ]; then
		echo ".."
else
		echo "Volviendo al menu......"
fi

#
# Bucle for. Se repite el bucle 5 veces (1..5). En cada pasada del bucle, la variable i, toma un valor diferente.
# Es decir, en la primera pasada i=1, la segunada i=2, etc..
#
for i in {1..5}
do
   echo "Welcome $i times"
done
#Otra forma de hacerlo (
#Referencia: https://ss64.com/bash/seq.html
#First Step Last
for i in $(seq 1 1 5)
do
   echo "Welcome $i times"
done

#
# Bucle while. Se repite el bucle mientras la variable opcion sea distinta de S
#
opcion=""
while [ opcion != "S" ]
do
	read -p "Pulse 'S' para salir: " opcion
done
