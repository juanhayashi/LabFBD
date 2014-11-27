=======
LabFBD
=======

Tema: Aborto en el mundo
Integrantes:
- Juan Hayashi
- Vanessa Saez
- Javiera Saez
 
Instrucciones:
El usuario para ingresar:
-User: admin@admin.com
-Password: adminfbd

Una vez dentro, podrá ver los tweets ingresados a la base de datos, junto con usuarios y paises de ellos.

en app/controller/welcome_controller.rb se encuentra la configuracion de la api REST, junto con unas consultas (busquedas) comentadas para no llenar la base de datos al abrir cada vez la pagina de inicio.

Se realizaron tres busquedas para llenar la base de datos de manera inicial:
1.- Busqueda con Geocode para la ciudad de Santiago, tweets sobre #Aborto.
2.- Busqueda con Geocode para España, tweets sobre aborto.
3.- Busqueda por idioma italiano, tweets sobre #prolife (pro-vida) y #Apply194 (Aplicacion de la ley de abortos).
Se realizaron otras busquedas, las cuales no arrojaron resultados satisfactorios para ser agregadas a la base de datos.
