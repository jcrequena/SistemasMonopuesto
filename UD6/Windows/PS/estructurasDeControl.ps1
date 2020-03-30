
#Condicionales: http://somebooks.es/capitulo-5-estructuras-condicionales/2/

#IF
#https://ss64.com/ps/if.html
#
if (condición booleana o expresión lógica) { sección de código }
#ejemplo (ponemos el [int] para convertir en número entero el carácter que el usuario introduce por teclado
$num = [int](Read-Host 'Escribe un número entero')
if ($num -gt 0) { 
    Write-Host 'El numero es mayor que 0'
 } else { 
    Write-Host 'El numero es menor que 0'
 }

#Posibilidades en el if:
#-eq: igual que
#-gt: mayor que
#-ge: mayor o igual que
#-lt: menor que
#-le: menor o igual que

###################FIN IF ####################################


#########BUCLES##############
#
#FOR - Bucle de 1 a 20. Escribe por pantalla cada número, es decir, cada pasada por el bucle.
#
ForEach ($Number in 1..20) {
    if ($Number -ge 10) { Write-Host 'El numero $Number es mayor o igual a 10'}
    else { Write-Host 'El numero $Number es menor que 10'}
}

#WHILE
#Referencia:https://www.ediciones-eni.com/open/mediabook.aspx?idR=fe326bf667e4a34b1c241c6310ec963b
#Sintaxis
#condicion: booleana o expresión lógica
#Las instrucciones de este bucle se repiten mientras que se satisfaga la condición del mismo (es verdad).
While (<condición>) 
{ 
  #bloque de instrucciones 
}

#bucle infinito, ya que la condición siempre será true (verdadero)
$var=true
while($var) {
    bloque_de_comandos
}

#Ejemplo. Cremos la variable valor a 10 y la variable tab a 99. 
#En cada pasada del bucle, comprobamos si la variable valor es menor que 99, y le sumamos 1 ($valor+++)
#cuando hayan pasado 89 veces por el bucle valor valdrá 99 y ya no se cumplirá la condición
$valor=10
$tab = 99 
While($valor -lt $tab) 
  $valor+++
}
#Cuando se sale del bucle $valor=99

#El bucle Do-While se parece al bucle While, con la diferencia que la comprobación de la condición se realiza al final. 
#El bucle Do-While tiene la siguiente estructura:
Do 
{ 
   #bloque de instrucciones 
} 
While (<condición>)
# Como ejemplo teneís el menú

###################FIN BUCLES ####################################


