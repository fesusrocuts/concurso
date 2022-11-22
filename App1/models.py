# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class App1Quienesfesus(models.Model):
    id = models.BigIntegerField(primary_key=True)

    class Meta:
        managed = False
        db_table = 'App1_quienesfesus'


class App1Cargo(models.Model):
    id = models.IntegerField(primary_key=True)
    cargo = models.CharField(unique=True, max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_cargo'


class App1Categoria(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.CharField(unique=True, max_length=40, db_collation='SQL_Latin1_General_CP1_CI_AS')
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_categoria'


class App1Ciudad(models.Model):
    id = models.IntegerField(primary_key=True)
    ciudad = models.CharField(unique=True, max_length=40, db_collation='SQL_Latin1_General_CP1_CI_AS')
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_ciudad'


class App1Concurso(models.Model):
    id = models.IntegerField(primary_key=True)
    concurso = models.CharField(unique=True, max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)
    fecha_inicio = models.DateField(blank=True, null=True)
    fecha_fin = models.DateField(blank=True, null=True)
    fecha_max_registro = models.DateField(blank=True, null=True)
    maxpersonas = models.IntegerField()
    estado = models.IntegerField()
    descripcion = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)
    urlimagenlogo = models.CharField(db_column='urlImagenLogo', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    urlimagenoficial = models.CharField(db_column='urlImagenOficial', max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'app1_concurso'


class App1ConcursoInscritos(models.Model):
    id = models.IntegerField(primary_key=True)
    idconcurso = models.ForeignKey(App1Concurso, models.DO_NOTHING, db_column='idconcurso')
    idempleado = models.ForeignKey('App1Empleado', models.DO_NOTHING, db_column='idempleado')
    idcategoria = models.ForeignKey(App1Categoria, models.DO_NOTHING, db_column='idcategoria', blank=True, null=True)
    registro = models.DateTimeField()
    estado = models.IntegerField(blank=True, null=True)
    intentos = models.IntegerField(blank=True, null=True)
    actualizado = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_concurso_inscritos'
        unique_together = (('idconcurso', 'idempleado'),)


class App1ConcursoInscritosLog(models.Model):
    id = models.IntegerField(primary_key=True)
    idconcurso = models.IntegerField()
    idempleado = models.IntegerField(blank=True, null=True)
    idcategoria = models.IntegerField(blank=True, null=True)
    cedula = models.IntegerField(blank=True, null=True)
    codigoempleado = models.IntegerField(blank=True, null=True)
    registro = models.DateTimeField(blank=True, null=True)
    estado = models.IntegerField(blank=True, null=True)
    intentos = models.IntegerField(blank=True, null=True)
    actualizado = models.DateTimeField(blank=True, null=True)
    descripcion = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_concurso_inscritos_log'


class App1ConcursoInscritosPuntaje(models.Model):
    id = models.IntegerField(primary_key=True)
    idinscrito = models.ForeignKey(App1ConcursoInscritos, models.DO_NOTHING, db_column='idinscrito')
    puntaje = models.IntegerField()
    idusuario = models.IntegerField()
    registro = models.DateTimeField()
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_concurso_inscritos_puntaje'


class App1ConcursoReglas(models.Model):
    id = models.IntegerField(primary_key=True)
    idconcurso = models.ForeignKey(App1Concurso, models.DO_NOTHING, db_column='idconcurso', blank=True, null=True)
    idcategoria = models.ForeignKey(App1Categoria, models.DO_NOTHING, db_column='idcategoria', blank=True, null=True)
    idciudad = models.ForeignKey(App1Ciudad, models.DO_NOTHING, db_column='idciudad', blank=True, null=True)
    idcargo = models.ForeignKey(App1Cargo, models.DO_NOTHING, db_column='idcargo', blank=True, null=True)
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_concurso_reglas'
        unique_together = (('idconcurso', 'idcategoria', 'idciudad', 'idcargo'),)


class App1Diccionario(models.Model):
    name = models.CharField(primary_key=True, max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    value = models.CharField(max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'app1_diccionario'


class App1Empleado(models.Model):
    id = models.IntegerField(primary_key=True)
    codigoempleado = models.IntegerField(db_column='codigoEmpleado', unique=True)  # Field name made lowercase.
    nombre = models.CharField(max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    idcargo = models.ForeignKey(App1Cargo, models.DO_NOTHING, db_column='idcargo')
    cedula = models.IntegerField(unique=True)
    idciudad = models.ForeignKey(App1Ciudad, models.DO_NOTHING, db_column='idciudad')
    idsexo = models.ForeignKey('App1Sexo', models.DO_NOTHING, db_column='idsexo')
    edad = models.IntegerField()
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_empleado'


class App1Sexo(models.Model):
    id = models.IntegerField(primary_key=True)
    sexo = models.CharField(unique=True, max_length=20, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_sexo'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128, db_collation='SQL_Latin1_General_CP1_CI_AS')
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150, db_collation='SQL_Latin1_General_CP1_CI_AS')
    first_name = models.CharField(max_length=150, db_collation='SQL_Latin1_General_CP1_CI_AS')
    last_name = models.CharField(max_length=150, db_collation='SQL_Latin1_General_CP1_CI_AS')
    email = models.CharField(max_length=254, db_collation='SQL_Latin1_General_CP1_CI_AS')
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Autores(models.Model):
    nombre = models.CharField(max_length=45, db_collation='SQL_Latin1_General_CP1_CI_AS')
    apellidos = models.CharField(max_length=45, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'autores'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)
    object_repr = models.CharField(max_length=200, db_collation='SQL_Latin1_General_CP1_CI_AS')
    action_flag = models.SmallIntegerField()
    change_message = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS')
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100, db_collation='SQL_Latin1_General_CP1_CI_AS')
    model = models.CharField(max_length=100, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    name = models.CharField(max_length=255, db_collation='SQL_Latin1_General_CP1_CI_AS')
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40, db_collation='SQL_Latin1_General_CP1_CI_AS')
    session_data = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS')
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Editoriales(models.Model):
    nombre = models.CharField(max_length=45, db_collation='SQL_Latin1_General_CP1_CI_AS')
    sede = models.CharField(max_length=45, db_collation='SQL_Latin1_General_CP1_CI_AS')

    class Meta:
        managed = False
        db_table = 'editoriales'


class Libros(models.Model):
    isbn = models.IntegerField(db_column='ISBN', primary_key=True)  # Field name made lowercase.
    editoriales = models.ForeignKey(Editoriales, models.DO_NOTHING, blank=True, null=True)
    titulo = models.CharField(max_length=45, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)
    sinopsis = models.TextField(db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # This field type is a guess.
    n_paginas = models.CharField(max_length=45, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'libros'
