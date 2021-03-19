
#Script del proyecto 1 - UD6
#By:JcRequena

# Añadimos unas variables globales, que utilizaremos a lo largo del código
$anyoEnCurso=21
$nombreAgenda="Agenda-Tareas-2021"


#     ##############
#-------FUNCIONES---
#     ##############

#Opción 1. Creación de entradas/registros para la agenda.
function fntCrearEntradadasAgenda
{

        #Formulario para entrada de datos en la agenda.
	cls
	write-Host "------------Indroducción de datos---------------"
	$mes = Read-Host -Prompt "Indica el mes"
	$dia = Read-Host -Prompt "Indica el día"
	$hora = Read-Host -Prompt "Indica la hora"
	$minuto = Read-Host -Prompt "Indica el minuto"
	$descripTarea = Read-Host -Prompt "Introduce la descripción de la tarea"
	$notas = Read-Host -Prompt "Notas"
	$urgencia = Read-Host -Prompt "Urgencia"
	$municipio = Read-Host -Prompt "Introduce el municipio"
	$nomcontacto = Read-Host -Prompt "Introduce el nombre del contacto"
	
    #Concatenación y redirección de los datos al fichero concreto de la agenda.	
	#Ejemplo --> H:19;M:05;D:Reunión;N:Despacho A-21;P:2;L:Burriana;C:JCRequena.

    #Comando para escribir en el fichero $nombreAgenda/$mes/$dia$mes$anyoEnCurso.dat los datos capturados

	write-Host ""
  	write-Host  "Registro guardado correctamente."
    write-Host ""
}

# Opción 2. Consultas de tareas en la base de datos Agenda
function fntConsultarTareas
{
	while($opcion -ne 8) 
	{
		cls
		write-Host ""
		write-Host "     Selecciona la opción que deseas"
		write-Host "_____________________________________________________"
		write-Host ""
		write-Host " 1. Visualizar las 5 últimas tareas de un dí­a en concreto."
        write-Host " 2. Visualizar las 2 primeras tareas de un dí­a en concreto."
		write-Host " 3. Visualizar las tareas que tengan prioridad máxima (9)."
		write-Host " 4. Visualizar las tareas que se hayan realizado en una Localidad en concreto"
		write-Host " 5. Visualizar los campos Descripción de la tarea y Contacto de las tareas de un día en concreto."
		write-Host " 6. Visualizar todas las tareas que tengan el campo Notas vací­o."
		write-Host " 7. Visualizar todas las tareas para un mes concreto."
		write-Host " 8. Ordenar las tareas de un día en concreto por el campo Hora."
		write-Host " 9. Volver al menú principal."
		write-Host "_____________________________________________________"
		write-Host ""
		$opcion = Read-Host -Prompt "Seleccione la operacion a realizar [1-9]"
		if ($opcion -ne 8)
		{
			write-Host "_____________________________________________________"
			write-Host ""
			write-Host "Selecciona el dí­a y mes del que deseas obtener la información"
			write-Host ""
			$dia = Read-Host -Prompt "Introduce el día, ejemplo 01"
			$mes = Read-Host -Prompt "Introduce el mes, ejemplo 02"
			switch ($opcion)
			{
				1{
				  #Comando para Visualizar las 5 últimas tareas de un día en concreto 
				 
				}
                2{
				  #Comando para Visualizar las 2 primeras tareas de un día en concreto 
				 
				}
				3{
				  #Comando para visualizar las tareas que tengan prioridad mÃ¡xima (9)
				  write-Host ""
				}
				 4{
				   #Comando para visualizar las tareas que se hayan realizado en una Localidad en concreto"		
                   $localidad = Read-Host -Prompt "Introduce la localidad"
				  }
				5{ 
				  #Comando para visualizar los campos Descripción y Contacto de las tareas
				 
				}
				6{
				  #Comando para visualizar todas las tareas que tengan el campo Notas vacÃ­o
				  write-Host ""
				}
				7{
				  #Comando para visualizar todas las tareas del mes introducido
				  write-Host ""
				}
				 8{
				  #Comando para visualizar las tareas de un dÃ­a en concreto ordenadas por el campo Hora
				  write-Host ""
				}
				9{
					write-Host "Saliendo del submenú....."
                    
				}  
				default { 
				  write-Host "Warning: Selecciona una opción válida [1-9]"               
				}
            }
             Read-Host -Prompt "Pulsa [ENTER] para volver al submenú principal"
		}
	}
    
}
# Opción 3. Borrar las tareas de un mes en concreto
function fntBorrarTareasMes 
{
	cls
	$mes = Read-Host -Prompt "Introduce un mes [01-12]"
	write-Host ""
	
    #Comando para borrar las tareas de ese mes
	#

	write-Host "Tareas del mes $mes borradas correctamente"
    write-Host ""
}

#Opción 4. Opciones de compresión.
function fntOpcionesCompresion 
{
	cls
	write-Host ""
	write-Host "     Selecciona la opción que deseas ejecutar"
	write-Host "_____________________________________________________"
	write-Host ""
	write-Host "1. Comprimir agenda."
	write-Host "2. Descomprimir agenda."
	write-Host "3. Visualizar contenido de la agenda sin extraer."
	write-Host "4. Volver al menú principal."
	write-Host "_____________________________________________________"
	write-Host ""
	$opcion = Read-Host -Prompt "Seleccione la operacion a realizar [1-4] "
	switch ($opcion) 
	{
		1{
          $locationBD= Get-Location
          $rutaBD=Join-Path -Path $locationBD -ChildPath $nombreAgenda      
          if (Test-Path -Path $rutaBD)
		  {
		    #Comando para comprimir la base de datos de la agenda
            
            write-Host "La base de datos de la agenda ha sido comprimida"
		  }	
          else {
             write-Host "Warning:La base de datos no se encuentra"
          }
		  write-Host ""
		}
		2{	
		  #Comando para descomprimir la base de datos de la agenda
		  write-Host ""
		  write-Host "La base de datos de la agenda ha sido descomprimida"
		  write-Host ""
		}	
		3{
		   #Comando para visualizar el contenido del fichero comprimido
		 }
		4{ 
			write-Host "Volviendo al menú principal"
		}			  
		default{ 
		  write-Host "Warning: Seleccione una opción válida [1-4]"
		 }	
	}
}
#Opción 5. Función para la opción de borrado de la base de datos de la Agenda.
function fntBorrarAgenda 
{
	$locationBD= Get-Location
    $rutaBD=Join-Path -Path $locationBD -ChildPath $nombreAgenda   
	
	if (Test-Path -Path $rutaBD)
	{
		#Comando para borrar la base de datos de la agenda
		write-Host "Base de datos de la agenda borrada correctamente"
	}
    else
    { 
		write-Host ""
		write-Host "Warning:La agenda no existe"
		write-Host "" 
	}	
}

function fntMostrarMenu 
{ 
     cls
	write-Host ""
	write-Host "        Gestión Agenda de tareas 2021"
	write-Host "            by Juan Carlos Requena"
	write-Host ""
	write-Host "            MENÚ PRINCIPAL" 
	write-Host "__________________________________________"
    write-Host ""					      
    write-Host "1. Insertar tarea en la agenda."
	write-Host "2. Consultar tareas de la agenda."
	write-Host "3. Borrado de tareas de la agenda."
	write-Host "4. Opciones de compresión."
	write-Host "5. Borrar base de datos Agenda."
	write-Host "6. Salir del programa."
	write-Host "_________________________________________"
	write-Host ""
}
              ####################
#--------------#PROGRAMA PRINCIPAL#---------------------------------------------
              ####################
do 
{
	fntMostrarMenu 
	$opcion = Read-Host "Seleccione la operación a realizar [1-6] "
    switch ($opcion) 
     { 
        '1' 
		{ 
           fntCrearEntradadasAgenda
        } 
	   '2' 
	   { 
          fntConsultarTareas
       } 
	   '3' 
	   { 
          fntBorrarTareasMes 
       } 
       '4' 
	   { 
          fntOpcionesCompresion 
       } 
       '5' 
	   { 
          fntBorrarAgenda 
       } 

	   '6' 
	   { 
			return 
       } 
   
	   default 
	   {
			'Warning:Has de pulsar un número entre 1-6'
       }
     }
     #Hacemos una pausa con mensaje personalizado, hasta que el usuario pulse enter
     Read-Host -Prompt "Pulsa [ENTER] para volver al menu principal" 
} until ($opcion -eq 6)
