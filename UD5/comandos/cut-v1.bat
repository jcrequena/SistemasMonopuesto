@echo off
:: La llamada al script, ha de ser la siguiente:
:: cut.bat fichero_origen fichero_destino
:: donde %1 es el primer parámetro y %2 el segundo parámetro
:: ejemplo cut.bat origen.txt salida.txt
:: Para este caso de ejemplo, recuperamos las columna 1, 5 y 7
::
if "%1"=="" (echo "Falta el primer parámetro. Uso: cut.bat param1 param2" 
	      exit /b
            )
if "%2"=="" ( echo "Falta el segundo parámetro. Uso: cut.bat param1 param2"
             exit /b
            )

(for /f "tokens=1,5,7 delims=:" %%a in (%1) do echo %%a-%%b-%%c) > %2

::Referencias
::https://gist.github.com/HiroNakamura/4702728
