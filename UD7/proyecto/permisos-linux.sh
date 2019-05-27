#Creamos los directorios a publicar
mkdir /pub/Documentación
mkdir /pub/Documentación/Direccion
mkdir /pub/Documentación/Informatica


# Se han creado los grupos Direccion_RW e Informatica_RW
# Se han añadido los usuarios a los grupos
# Se Aplican los permisos

groupadd Direccion_RW 
#Añadir el usaurio usuario_Direcc al grupo Dirección_RW
adduser usuario_Direcc Dirección_RW 

#Cambiamos el propietario del grupo al directorio Direccion. El nuevo propietario es Direccion_RW
chgrp /pub/Documentación/Direccion Direccion_RW
#Establecemos los permisos de rwx al grupo propietario del directorio Direccion
chmod g+rwx /pub/Documentación/Direccion



