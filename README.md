# concurso
Demostraciónn de uso de django 4+ MSSql 15+ Manejo Multilenguaje  Es En Técnica avanzada para Modificar el Template admiistrador Técnica Ordenamiento Datos para Consultas limitadas por ORM entre otras sorpresas

## video explicativo 
[video explicativo 1+ hora](https://youtu.be/qU1Fe42PPVo)

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

# Decidiste usar Sql Server?, aclaremos...
```
- los autoincrementables como identity no funcionan correctamente en la versión actual de django 4+ usando el administraddor suministrado por el framework
- para la aplicación de vista al usuario final esto no ocurre porque el algoritmo suple esta deficiencia
- para la administración se debe asignar el id correspondiente manualmente mientras se sube el ajuste correspondiente para que no sea visible el id al registrar y lo asigne correctamente
- si lo desea usar en mysql debe hacer deshabilitar de su distribución de django el registro de historial para que funcione correctamente, en una versión futura se espera dar soporte a esto, para eso lea donde dice "DESHABILITAR REGISTRO HISTORICO DE DJANGO"
```

# patch1 - django 4+ con python3.9
## DESHABILITAR REGISTRO HISTORICO DE DJANGO, 
- antes de iniciar haga una copia de seguridad del proyecto, ya que el repositorio solo le va guardar la estructura principal de la aplicación, no django
- cuando uso el entorno virtual e instalo lo django, este creo una carpte llamada "env", vaya a la ruta en otra terminal
- ejemplo /home/miusuario/misproyectos/Concurso/ (aqui descargue con git el proyecto e inicie el entorno virtual)
- accede al archivo options.py de /home/miusuario/misproyectos/Concurso/env/lib/python3.9/site-packages/django/contrib/admin/options.py
- cambios hacer: en las siguienes funciones log_addition, log_change y log_deletion cambie el returno a None
ejemplo:
def log_deletion(self, request, obj, object_repr):
        return None
- guarde e inicie el servicio en el entorno virtual
