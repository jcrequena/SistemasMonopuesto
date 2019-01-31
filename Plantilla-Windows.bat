@echo off
cls
title Título de la aplicación
echo "Bienvenido %USERNAME%"



REM      ####################
REM -------PROGRAMA PRINCIPAL------------
REM      ####################


REM Pregunta al usuario por teclado
set /p resp="¿Pregunta?: " 


REM ESTRUCTURA IF (condicional)
#
#Delante de los if que tienen dentro variables, hay que añadir la instruccion
#setlocal EnableDelayedExpansion antes de la declaración del if
#Cuando se quiere acceder al contenido de una variable declarada fuera dentro del if
#hay que nombrarlas así ¡variable!
#http://ss64.com/nt/delayedexpansion.html
#EJEMPLO
setlocal ENABLEDELAYEDEXPANSION
set COUNT=0

for %%v in (1 2 3 4) do (
  set /A COUNT=!COUNT! + 1
  echo La cuenta es = !COUNT!
)


#Otro ejemplo de IF

IF %resp%=="" (
echo "Estoy en el if Condición True"
) else (
echo "Estoy en el else Condición False"
)
pause

REM ESTRUCTURA FOR (Bucles)
REM syntax-FOR-List of numbers  
REM https://ss64.com/nt/for.html
REM /L --> Secuencia de una lista de números
FOR /L %%parameter IN (start,step,end) DO (comandos)

REM Ejemplo
FOR /L %%varDirectory IN (1,1,10) DO (mkdir D:\demo\%%varDirectory)


REM Establecer un valor a una variable
set/a Numtotal=%Numtotal%+1


REM Si no existe un fichero ejecutamos una acción
if not exist "NombreDelArchivo" AccionAEjecutar
REM Si  existe un fichero ejecutamos una acción
if  exist "NombreDelArchivo" AccionAEjecutar




REM      ####################
REM -------MENU GRÁFICO------------
REM      ####################


:menu
cls
REM http://www.patorjk.com/software/taag/
echo      __ _____   ___
echo  __ / // ___/  / _ \ ___  ___ _ __ __ ___  ___  ___ _
echo / // // /__   / , _// -_)/ _ `// // // -_)/ _ \/ _  /
echo "\___/ \___/ /_/|_| \__/ \_, / \_,_/ \__//_//_/\_,_/ "
echo                          /_/                       
echo                         /_/    


echo ++++++++++++++++++++++++++++++++++++++++++++
echo +Programa de ............
echo ++++++++++++++++++++++++++++++++++++++++++++
echo.
echo Selecciona la opcion deseada
echo ----------------------------
echo.
echo 1. Opcion 1
echo 2. Opcion 2
echo 3. Opcion 3
echo 4. Opcion 4
echo S. Salir de la aplicacion.
echo.

rem Aquí creamos el menú de selección.

choice /C 1234S /N /T 10 /D S /M "Seleccione la accion que quiere realizar:"
REM /C -->Opciones
REM /N --> Oculta la lista de opciones en el prompt.
REM /T --> Número de segundos que el menú está a la espera de que se elija una opción (0-999)
REM /D --> Especifica que opción por defecto se elije si salta el timeout (/T).
REM /M --> Especifica el mensaje que se sacará por pantalla antes del prompt.
if errorlevel 5 goto fin
if errorlevel 4 goto opcion4
if errorlevel 3 goto opcion3
if errorlevel 2 goto opcion2
if errorlevel 1 goto opcion1
if errorlevel 0 goto menu

REM       ####################
REM -------ETIQUETAS/FUNCIONES------------
REM       ####################


:opcion4
  ECHO "Has pulsado 4"
  pause >null
  goto menu
:opcion3
  echo "Has pulsado 3"
  pause 
  goto menu
:opcion2
  echo "Has pulsado 2"
  pause >null
  goto menu
:opcion1
  echo "Has pulsado 1"
  pause 
  goto menu
:fin
echo "Nos vamos......."
