:: https://ss64.com/nt/delayedexpansion.html
:: OBLIGATORIO su uso en ciertos programas que usan expansión diferida, es decir, 
:: que toman el valor de las variables que se modificaron dentro de los comandos IF o FOR 
:: al incluir sus nombres en signos de admiración

:: ESTRUCTURAS DE CONTROL FOR - IF (condicional)
::
::Delante de los if que tienen dentro variables, hay que añadir la instruccion
::setlocal EnableDelayedExpansion antes de la declaración del if
::Cuando se quiere acceder al contenido de una variable declarada fuera del if
::hay que nombrarlas así ¡variable!
::http://ss64.com/nt/delayedexpansion.html

::EJEMPLO del uso para un bucle FOR
setlocal ENABLEDELAYEDEXPANSION
set COUNT=0
for %%v in (1 2 3 4) do (
  set /A COUNT=!COUNT! + 1
  echo La cuenta es = !COUNT!
)


:: ESTRUCTURA FOR (Bucles)
:: syntax-FOR-List of numbers  
:: https://ss64.com/nt/for.html
:: /L --> Secuencia de una lista de números
FOR /L %%parameter IN (start,step,end) DO (comandos)

:: Ejemplo
FOR /L %%d IN (1,1,10) DO (mkdir D:\demo\%%d)


:: Establecer un valor a una variable
set/a Numtotal=%Numtotal%+1

:: Ejemplos de IF

IF %resp%=="" (
echo "Estoy en el if Condición True"
) else (
echo "Estoy en el else Condición False"
)
pause

:: Con exit /b, nos salimos del script sin cerrar la consola
::
if %resp%=="" (echo "La variable es vacia" 
	             exit /b
              )


:: Si no existe un fichero ejecutamos una acción
if not exist "NombreDelArchivo" AccionAEjecutar
:: Si  existe un fichero ejecutamos una acción
if exist "NombreDelArchivo" AccionAEjecutar
