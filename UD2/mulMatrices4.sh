cnt=0
while [  $cnt -lt 5 ]; do
	./mulmatrices &
	let cnt=cnt+1 
done
