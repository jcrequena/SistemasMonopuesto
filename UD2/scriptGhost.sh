#! /bin/bash
# Script que ejecuta 4 veces el binario ghost en segundo plano
cnt=0
while [  $cnt -lt 5 ]; do
	./ghost &
	let cnt=cnt+1 
done
