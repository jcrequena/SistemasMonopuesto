::Uso head fichero n-lineas
::%1 es el nombre del fichero y %2 las líneas a visualizar
@echo off

setlocal enabledelayedexpansion
set num=0
REM La variable num se utiliza para ennumerar las lineas

:: El propósito de este FOR, es leer las lineas de "texto.txt" e ir almacenándolas en una variable numerada
for /f "tokens=*" %%h in (%1) do (
    set /a num=!num!+1
    set LIN_!num!=%%h
    echo %%h
)
