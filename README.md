# concurso
Demostraciónn de uso de django 4+ MSSql 15+ Manejo Multilenguaje  Es En Técnica avanzada para Modificar el Template admiistrador Técnica Ordenamiento Datos para Consultas limitadas por ORM entre otras sorpresas


## ERM - Diagrama entidad-relación
![Imagen excepción restricción autores y libros en Travel](https://raw.githubusercontent.com/fesusrocuts/concurso/main/db/ERM.png)

## internacionalización
- agregue carpeta locate a la aplicación
- use lazy de django para la traducción
- configue los lenguajes a soportar, mire como lo hice
- cambie los textos de acuerdo a sus necesidades en los archivos .po (por tiempo debo unos pocos de respuesta directas que puse - RestApi)
- use settings.py y buscque # Internationalization y haga el ajustes de idioma que necesite
- recomandamos usar entorno virtual en modo desarrollo, activelo y ejecute (env)$ django-admin compilemessages --ignore=env
- dentro de la aplicacion use from django.utils.translation import gettext_lazy as _
- para traduccir algo puntual use _('Algo puntual'), el sistema busca que lenguaje usa y lo traduce, sino queda con el tag por defecto
- ejecute en el entorno virtual (env)$ django-admin compilemessages -l en
- probar con diferentes navegadores en la red python manage.py runserver 0.0.0.0:8080 y abra en la ip de la maquina

# acceso director
```
- credenciales son: 
- usuario: director
- clave: ClaveFacil123
- el sistema va forzar siempre a restaurar la clave siempre que suba la aplicación
- el sistema no forza al uso de usarios para crear empleados, ya que se pide registro de codigo de empleado y cedula para validar la peticion de registro a los concursos
```
