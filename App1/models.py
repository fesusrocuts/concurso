from django.utils.translation import gettext_lazy as _
from datetime import date
from django.core.serializers import serialize
from django.contrib.auth import get_user_model
from django.db import models
from django.db.models.query_utils import DeferredAttribute
import datetime


class App1Cargo(models.Model):
    id = models.IntegerField(primary_key=True)
    cargo = models.CharField(unique=True, max_length=255)
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_cargo'
        
    def __str__(self) -> str:
        estado = "activo" if self.estado == 1 else "inactivo";
        return "{0} ({1})".format(self.cargo.capitalize(),estado)
    
class App1Categoria(models.Model):
    id = models.IntegerField(primary_key=True)
    categoria = models.CharField(unique=True, max_length=40)
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_categoria'
        
    def __str__(self) -> str:
        estado = "activo" if self.estado == 1 else "inactivo";
        return "{0} ({1})".format(self.categoria.capitalize(),estado)
    
    def getCategoria (self):
        return self.categoria


class App1Ciudad(models.Model):
    id = models.IntegerField(primary_key=True)
    ciudad = models.CharField(unique=True, max_length=40)
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_ciudad'
    
    def __str__(self) -> str:
        estado = "activo" if self.estado == 1 else "inactivo";
        return "{0} ({1})".format(self.ciudad.capitalize(),estado)


class App1Concurso(models.Model):
    id = models.IntegerField(primary_key=True)
    concurso = models.CharField(unique=True, max_length=255, blank=True, null=True)
    fecha_inicio = models.DateField(blank=True, null=True)
    fecha_fin = models.DateField(blank=True, null=True)
    fecha_max_registro = models.DateField(blank=True, null=True)
    maxpersonas = models.IntegerField()
    estado = models.IntegerField()
    descripcion = models.TextField(blank=True, null=True)
    urlimagenlogo = models.CharField(db_column='urlImagenLogo', max_length=255, blank=True, null=True)  # Field name made lowercase.
    urlimagenoficial = models.CharField(db_column='urlImagenOficial', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'app1_concurso'
    
    def __str__(self) -> str:
        estado = "activo" if self.estado == 1 else "inactivo";
        return "{0} ({1}) Desde {2} hasta {3} Incripción max: {4}".format(self.concurso.capitalize(),estado, self.fecha_inicio, self.fecha_fin, self.fecha_max_registro)
    
    def concursoAbierto(self):
        hoy = datetime.date.today().strftime("%Y-%m-%d")
        fmr = self.fecha_max_registro.strftime("%Y-%m-%d")
        return hoy < fmr
    
    def concursoAbiertoInscripciones(self):
        hoy = datetime.date.today().strftime("%Y-%m-%d")
        fmr = self.fecha_max_registro.strftime("%Y-%m-%d")
        return hoy < fmr

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
        
    def __str__(self) -> str:
        return "{0} ({1}) | {2}".format(self.idempleado, self.idcategoria, self.idconcurso)
    
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
    descripcion = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_concurso_inscritos_log'
    
    def __str__(self) -> str:
        return "idconcurso:{0} cedula:{1} codigoempleado:{2} intentos:{3}".format(self.idconcurso, self.cedula, self.codigoempleado, self.intentos)


class App1ConcursoInscritosPuntaje(models.Model):
    User = get_user_model()
    id = models.IntegerField(primary_key=True)
    idinscrito = models.ForeignKey(App1ConcursoInscritos, models.DO_NOTHING, db_column='idinscrito')
    puntaje = models.IntegerField()
    #idusuario = models.IntegerField()
    idusuario = models.ForeignKey(User, models.DO_NOTHING, db_column='idusuario')
    registro = models.DateTimeField()
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_concurso_inscritos_puntaje'
    
    def __str__(self) -> str:
        return "puntaje:{0} idinscrito:{1}".format(self.puntaje, self.idinscrito)


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

    def __str__(self) -> str:
        estado = "activo" if self.estado == 1 else "inactivo";
        return "{0} ({1}) Más: {2}, {3}, {4}".format(self.idconcurso,estado, self.idcategoria, self.idciudad, self.idcargo)

class App1Diccionario(models.Model):
    name = models.CharField(primary_key=True, max_length=255)
    value = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'app1_diccionario'
    
    def __str__(self) -> str:
        return "{0} ({1}) lang: {0}".format(self.name, self.value, self.name)


class App1Empleado(models.Model):
    id = models.IntegerField(primary_key=True)
    codigoempleado = models.IntegerField(db_column='codigoEmpleado', unique=True)  # Field name made lowercase.
    nombre = models.CharField(max_length=255)
    idcargo = models.ForeignKey(App1Cargo, models.DO_NOTHING, db_column='idcargo')
    cedula = models.IntegerField(unique=True)
    idciudad = models.ForeignKey(App1Ciudad, models.DO_NOTHING, db_column='idciudad')
    idsexo = models.ForeignKey('App1Sexo', models.DO_NOTHING, db_column='idsexo')
    edad = models.IntegerField()
    estado = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_empleado'
    
    def __str__(self) -> str:
        estado = "activo" if self.estado == 1 else "inactivo";
        return "(Id:{1}) {0} cargo: {2}/{3} - {4}".format(self.nombre.capitalize(), self.cedula, self.idcargo, self.idciudad, estado)


class App1Sexo(models.Model):
    id = models.IntegerField(primary_key=True)
    sexo = models.CharField(unique=True, max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'app1_sexo'
    
    def __str__(self) -> str:
        return "{0}".format(self.sexo.capitalize())

