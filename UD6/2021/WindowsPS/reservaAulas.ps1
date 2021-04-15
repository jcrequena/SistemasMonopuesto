#Autor:JCRequena
#Lo que se pone a partir de la almohadilla(#) es un comentario y no se interpreta por el compilador. No es código fuente.
#
function fnt_CrearBasedeDatos {
	#Bucle para crear los directorios de los meses
	ForEach ($Number in 1..12) {
    		#Comando para crear directorio
		#Bucle para crear los días en el mes correspondiente
		ForEach ($Number in 1..31) {
    			#Comando para crear el fichero vacío en el directorio
		} # fin del for de 1..31
	} # fin del for de 1..12
	Write-Host "Base de datos creada correctamente"
}  #Fin función fntCrearBasedeDatos
	

function fnt_Opcion-1 
{
	cls 
        'Has pulsado la opcion 1' 
}
function fnt_Opcion-2
{
	cls 
        'Has pulsado la opcion 2' 
}
function fnt_Opcion-3 
{
	cls 
        'Has pulsado la opcion 3' 
}

function mostrarMenu 
{ 
     cls 
     'Bienvenido' $env:USERNAME
     Write-Host "============================================" 
     Write-Host "===============Menu Principal===============" 
     Write-Host "============================================" 
     Write-Host "1) Crear base de datos (directorios+ficheros)" 
     Write-Host "2) Opcion 2" 
     Write-Host "3) Opcion 3" 
     Write-Host "S) Pulsa la tecla 'S' para salir" 
}

do 
{ 
     mostrarMenu 
     $input = Read-Host "Selecciona una opcion del menu"
     #Referencia:https://ss64.com/ps/switch.html
     switch ($input) 
     { 
           '1' 
	   { 
                fnt_CrearBasedeDatos
           } 
	   '2' 
	   { 
                fnt_Opcion-2
           } 
	   '3' 
	   { 
                fnt_Opcion-3 
           } 
	   's' 
	   { 
               	#Con return nos salimos del script 
		return 
           } 
	   default 
	   {
		'Warning:Has de pulsar un numero entre 1-3 o pulsar S'
           }
     } 
     #Hacemos una pausa con mensaje personalizado, hasta que el usuario pulse enter
     Read-Host -Prompt "Pulsa [ENTER] para volver al menú principal” 
} until ($input -eq 's' -or $input -eq 'S')
#Se comprueba si se ha pulsado la s minúscula o mayúscula (S).
