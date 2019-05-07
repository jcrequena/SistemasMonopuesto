REM Comprobamos si existen las carpetas, en caso contrario las creamos

mkdir Documentación
mkdir -p Documentación/Direccion
mkdir -p Documentación/Informatica


# Se han creado los grupos Direccion_RW e Informatica_RW
# Se han añadido los usuarios a los grupos
# Se Aplican los permisos

groupadd Direccion_RW 
groupadd Dirección_RW usuario_Direcc /add

chmod 
icacls C:\Documentación\Dirección /GRANT Dirección_RW:(R,W)

groupadd Informatica_RW /add /comment: "Acceso en modo lectura/escritura a Informatica"
groupadd Informatica_RW usuario_Inf /add
chmod Documentación/Informatica /GRANT Informatica_RW:(R,W)

REM Se crean los grupos de lectura de las carpetas (Direccion_R e Informatica_R)
REM Se añaden los usuarios a los grupos.
REM Añadimos el grupo al directorio correspondiente

net localgroup Dirección_R /add /comment: "Acceso en modo lectura a Dirección"
net localgroup Dirección_R usuario_Inf /add
chmod Documentación/Dirección /GRANT Dirección_R:(R)

groupadd Informatica_R /add /comment: "Acceso en modo lectura a Informatica"
groupadd Informatica_R usuario_Direc /add
chmod Documentación/Informatica /GRANT Informatica_R:(R)
