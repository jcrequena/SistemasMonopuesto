#Creamos los directorios a publicar
mkdir /pub/Documentación
mkdir /pub/Documentación/Direccion
mkdir /pub/Documentación/Informatica


# Se crean los grupos Direccion_RW e Informatica_RW
groupadd Direccion_RW 
groupadd Informatica_RW 
#Se añade el usaurio usuario_Direcc al grupo Dirección_RW
adduser usuario_Direcc Dirección_RW 
#Se añade el usaurio usuario_Direcc al grupo Dirección_RW
adduser usuario_Inf Informatica_RW 

# Aplicamos los permisos, para que los usuarios de Dirección puedan rwx en el directorio Direccion
# y los usuarios de Dirección puedan rwx en el directorio Informatica
#Cambiamos el propietario del grupo al directorio Direccion. El nuevo propietario es Direccion_RW
chgrp /pub/Documentación/Direccion Direccion_RW
#Establecemos los permisos de rwx al grupo propietario del directorio Direccion
chmod g+rwx /pub/Documentación/Direccion

#Cambiamos el propietario del grupo al directorio Direccion. El nuevo propietario es Direccion_RW
chgrp /pub/Documentación/Informatica Informatica_RW
#Establecemos los permisos de rwx al grupo propietario del directorio Direccion
chmod g+rwx /pub/Documentación/Informatica




