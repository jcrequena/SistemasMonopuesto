#! /bin/bash
# Script que ejecuta 4 veces el binario mulmatrices en segundo plano
cnt=0
while [  $cnt -lt 5 ]; do
	./mulmatrices &
	let cnt=cnt+1 
done
