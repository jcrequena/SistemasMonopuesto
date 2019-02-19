@echo off
REM recuperamos las columna 1, 5 y 7
(for /f "tokens=1,5,7 delims=:" %%a in (input.txt) do echo %%a-%%b-%%c) > output.txt
