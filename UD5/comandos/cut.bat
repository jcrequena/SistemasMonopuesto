@echo off
:: La llamada al script, ha de ser la siguiente:
:: cut.bat fichero_origen 
:: donde %1 es el primer parámetro 
:: ejemplo cut.bat origen.txt
:: Para este caso de ejemplo, recuperamos las columnas 1, 5 y 7
::
if "%1"=="" (echo "Falta el primer parámetro. Uso: cut.bat fichero_a_leer" 
	      exit /b
            )

(for /f "tokens=1,5,7 delims=:" %%a in (%1) do echo %%a-%%b-%%c)

::Referencias
::https://gist.github.com/HiroNakamura/4702728
