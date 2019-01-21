
+Dominio (NETBIOS & FQDN)
echo %USERDOMAIN%
echo %USERDNSDOMAIN%

+Controlador de Dominio contra el que nos hemos autenticado
echo %logonserver%
set logonserver
set log

+Grupos del dominio
net groups /domain

+Lista equipos conectados al dominio ("Equipos del dominio" en español)
net group "domain computers" /domain
net view /domain

+Lista de DCs en el dominio
nltest /dclist:DOMINIO

+ DC principal
nltest /dcname:DOMINIO

+ Info de máquinas
net view \\<hostname>
sc \\<hostname> ...
sc \\<hostname> query type= service
sc \\<hostname> query type= driver 

+Lista de Domain Admins ("Admins. del dominio")
net group "Domain Admins" /domain

+Lista de administrators (usuario por defecto en AD) ("administradores")
net localgroup administrators /domain

+ Shares
net share \\hostname

+Lista usuarios del dominio actual
net user /domain

+Informacion de una cuenta de dominio
net user Usuario /domain

+Política de contraseñas
net accounts /domain

+Relaciones de confianza
nltest /domain_trusts

+ Usuarios logeados en otra máquina
qwinsta /server:WIN7
