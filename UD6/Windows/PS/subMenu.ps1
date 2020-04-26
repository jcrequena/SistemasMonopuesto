#Autor:JCRequena


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

function subMenu 
{ 
     cls 
     Write-Host "============================================" 
     Write-Host "===============SubMenu===============" 
     Write-Host "============================================" 
     Write-Host "1) Opcion 1" 
     Write-Host "2) Opcion 2" 
     Write-Host "3) Opcion 3" 
     Write-Host "S) Pulsa la tecla 's o S' para volver al menú Principal" 
    do 
     {  
        $input = Read-Host "Selecciona una opcion del Submenu"
        switch ($input) 
        { 
           '1' 
	          { 
                fnt_OpcionSubmenu1
            } 
	        '2' 
	         { 
                fnt_OpcionSubmenu1
           } 
	        '3' 
          { 
                fnt_OpcionSubmenu3 
          } 
	        's' 
	        { 
               	#Con break nos salimos del bucle 
		        break 
          } 
	        default 
	        {
		          'Warning:Has de pulsar un numero entre 1-3 o pulsar S'
          }
      } 
      #Hacemos una pausa con mensaje personalizado, hasta que el usuario pulse enter
      Read-Host -Prompt "Pulsa [ENTER] para volver al Submenú” 
    } until ($input -eq 's' -or $input -eq 'S')
    #Se comprueba si se ha pulsado la s minúscula o mayúscula (S).
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
