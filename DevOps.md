# Considero pertinente este documento para despejar dudas de soporte de Linux - entorno virtual
- Aclaraciones, la idea de este contenido es reducir la critica instlación de algunas aplicaciones en Linux ubuntu 18+
- Pasos para desplegar el aplicativo desarrollado, primero vamos a trabajar en la configuración, integración de servicios en la nube y el despliegue

## Generalidades
Demostraciónn de uso de django 4+ MSSql 15+ Manejo Multilenguaje  Es En Técnica avanzada para Modificar el Template admiistrador Técnica Ordenamiento Datos para Consultas limitadas por ORM entre otras sorpresas

## Ahora si a trabajar en Linux

### instalación python3.9 para usarlo con django4+
'''
sudo apt update
sudo apt install software-properties-common
sudo -E add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.9 python3.9-distutils -y
sudo update-alternatives --config python3
sudo apt install python3-pip -y # si por algun motivo hay error use: python3.9 -m pip install --upgrade pip
pip3 install --upgrade pip 
pip3 list
pip3 install virtualenv
'''

### configurar mssql
'''
sudo su
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/prod.list > /etc/apt/sources.list.d/mssql-release.list

exit
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install -y msodbcsql18
sudo ACCEPT_EULA=Y apt-get install -y mssql-tools18
echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y unixodbc-dev
'''

### alternativas de paquetes msodbcsql17
'''
- msodbcsql17 mssql-tools unixodbc unixodbc-dev

pip install mssql-django 
- si sale error 
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
- explicitamente haga esto, escriba exit y dele la tecla enter
exit

echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
sudo apt-get update -y
sudo apt install --reinstall -y msodbcsql17 mssql-tools unixodbc unixodbc-dev
'''

### a validar nuestra instalación
'''
- crearemos una carpeta temporal llamada tpUnitTest
mkdir tpUnitTest
cd tpUnitTest/
ll
total 8
drwxrwxr-x 2 rocuts rocuts 4096 nov 22 02:45 ./
drwxrwxr-x 9 rocuts rocuts 4096 nov 22 02:45 ../

- creamos un enterno virtual virtualenv -p python3.9 env, recuerde que antes instalamos ese paquete llamado virtualenv
virtualenv -p python3.9 env
created virtual environment CPython3.9.15.final.0-64 in 245ms
  creator CPython3Posix(dest=/var/www/html/testing/tpUnitTest/env, clear=False, no_vcs_ignore=False, global=False)
  seeder FromAppData(download=False, pip=bundle, setuptools=bundle, wheel=bundle, via=copy, app_data_dir=/home/rocuts/.local/share/virtualenv)
    added seed packages: pip==22.3.1, setuptools==65.5.1, wheel==0.38.4
  activators BashActivator,CShellActivator,FishActivator,NushellActivator,PowerShellActivator,PythonActivator
- lo activamos con el siguiente comando y debe verse como > (env) miusuraio@midominio:mirutaactual$
source env/bin/activate
(env) pip list
Package    Version
---------- -------
pip        22.3.1
setuptools 65.5.1
wheel      0.38.4
(env) pip3 install Django==4.1.3
(env) pip3 install django-mssql-backend==2.8.1
Collecting django-mssql-backend==2.8.1
  Using cached django_mssql_backend-2.8.1-py3-none-any.whl (52 kB)
Collecting pyodbc>=3.0
  Using cached pyodbc-4.0.35-cp39-cp39-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (329 kB)
Installing collected packages: pyodbc, django-mssql-backend
Successfully installed django-mssql-backend-2.8.1 pyodbc-4.0.35

(env) pip3 freeze > requirements.txt
(env) django-admin startproject Concurso
(env) cd Concurso/
(env) vi Concurso/settings.py
- debes poner los datos de tu servidor mssql en DATABASES de ese archivo como se da en el ejemplo y guarda, si lo abriste con un editor pues guarda los cambios
DATABASES = {
    'default': {
        'ENGINE': 'mssql', #sql_server.pyodbc mssql
        'NAME': 'escribe_tu_nombre_db',
        'USER': 'escribe_tu_usuario',
        'PASSWORD': 'escribe_tu_clave',
        'HOST': 'escribe_tu_host_o_ip',
        'PORT': '1433', #puerto por defecto
        'OPTIONS': {
            'driver': 'ODBC Driver 17 for SQL Server' # recuerdas que instalamos algo llamado msodbcsql17, es para esto
        },
    },
}
(env) django-admin startapp App1
(env) python manage.py runserver

- te aclaro que cuando ejecutas el comando antetior veras unos errores parecido al siguiente, pasa porque en el entorno no hemos instalado los paquetes que requerimos para usar MSSQL, asi que seguimos

Watching for file changes with StatReloader
Exception in thread django-main-thread:
Traceback (most recent call last):
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/db/utils.py", line 113, in load_backend
    return import_module("%s.base" % backend_name)
  File "/usr/lib/python3.9/importlib/__init__.py", line 127, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
  File "<frozen importlib._bootstrap>", line 1030, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1007, in _find_and_load
  File "<frozen importlib._bootstrap>", line 972, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 228, in _call_with_frames_removed
  File "<frozen importlib._bootstrap>", line 1030, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1007, in _find_and_load
  File "<frozen importlib._bootstrap>", line 984, in _find_and_load_unlocked
ModuleNotFoundError: No module named 'mssql'

The above exception was the direct cause of the following exception:

Traceback (most recent call last):
  File "/usr/lib/python3.9/threading.py", line 980, in _bootstrap_inner
    self.run()
  File "/usr/lib/python3.9/threading.py", line 917, in run
    self._target(*self._args, **self._kwargs)
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/utils/autoreload.py", line 64, in wrapper
    fn(*args, **kwargs)
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/core/management/commands/runserver.py", line 125, in inner_run
    autoreload.raise_last_exception()
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/utils/autoreload.py", line 87, in raise_last_exception
    raise _exception[1]
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/core/management/__init__.py", line 398, in execute
    autoreload.check_errors(django.setup)()
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/utils/autoreload.py", line 64, in wrapper
    fn(*args, **kwargs)
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/__init__.py", line 24, in setup
    apps.populate(settings.INSTALLED_APPS)
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/apps/registry.py", line 116, in populate
    app_config.import_models()
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/apps/config.py", line 269, in import_models
    self.models_module = import_module(models_module_name)
  File "/usr/lib/python3.9/importlib/__init__.py", line 127, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
  File "<frozen importlib._bootstrap>", line 1030, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1007, in _find_and_load
  File "<frozen importlib._bootstrap>", line 986, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 680, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 850, in exec_module
  File "<frozen importlib._bootstrap>", line 228, in _call_with_frames_removed
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/contrib/auth/models.py", line 3, in <module>
    from django.contrib.auth.base_user import AbstractBaseUser, BaseUserManager
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/contrib/auth/base_user.py", line 49, in <module>
    class AbstractBaseUser(models.Model):
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/db/models/base.py", line 141, in __new__
    new_class.add_to_class("_meta", Options(meta, app_label))
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/db/models/base.py", line 369, in add_to_class
    value.contribute_to_class(cls, name)
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/db/models/options.py", line 231, in contribute_to_class
    self.db_table, connection.ops.max_name_length()
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/utils/connection.py", line 15, in __getattr__
    return getattr(self._connections[self._alias], item)
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/utils/connection.py", line 62, in __getitem__
    conn = self.create_connection(alias)
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/db/utils.py", line 193, in create_connection
    backend = load_backend(db["ENGINE"])
  File "/var/www/html/testing/tpUnitTest/env/lib/python3.9/site-packages/django/db/utils.py", line 126, in load_backend
    raise ImproperlyConfigured(
django.core.exceptions.ImproperlyConfigured: 'mssql' isn't an available database backend or couldn't be imported. Check the above exception. To use one of the built-in backends, use 'django.db.backends.XXX', where XXX is one of:
    'mysql', 'oracle', 'postgresql', 'sqlite3'

(env) sudo apt-get update -y
(env) sudo apt-get install -y msodbcsql17 mssql-tools unixodbc unixodbc-dev
(env) pip install mssql-django
- debes tener los siguientes paquetes
(env) pip list
Package               Version
--------------------- -------
asgiref               3.5.2
Django                4.0.8
django-extra-settings 0.6.1
jsonfield             3.1.0
mssql-django          1.1.3
pip                   22.3.1
pyodbc                4.0.35
pytz                  2022.6
setuptools            65.5.1
six                   1.16.0
sqlparse              0.4.3
wheel                 0.38.4

- vamos a ver esta vez si corre sin lios nuestro servidor ...
(env) python manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
November 22, 2022 - 07:59:09
Django version 4.0.8, using settings 'Concurso.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
^C(env) rocuts@rocuts-s540:/var/www/html/testing/tpUnitTest/Concurso$ python manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, sessions
Running migrations:
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying admin.0001_initial... OK
  Applying admin.0002_logentry_remove_auto_add... OK
  Applying admin.0003_logentry_add_action_flag_choices... OK
  Applying contenttypes.0002_remove_content_type_name... OK
  Applying auth.0002_alter_permission_name_max_length... OK
  Applying auth.0003_alter_user_email_max_length... OK
  Applying auth.0004_alter_user_username_opts... OK
  Applying auth.0005_alter_user_last_login_null... OK
  Applying auth.0006_require_contenttypes_0002... OK
  Applying auth.0007_alter_validators_add_error_messages... OK
  Applying auth.0008_alter_user_username_max_length... OK
  Applying auth.0009_alter_user_last_name_max_length... OK
  Applying auth.0010_alter_group_name_max_length... OK
  Applying auth.0011_update_proxy_permissions... OK
  Applying auth.0012_alter_user_first_name_max_length... OK
  Applying sessions.0001_initial... OK
'''
