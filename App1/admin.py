from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from .models import App1Cargo, App1Categoria, App1Ciudad, App1Concurso, App1ConcursoInscritos, App1ConcursoInscritosLog, App1ConcursoInscritosPuntaje, App1ConcursoReglas, App1Empleado, App1Sexo, App1Diccionario

# Register your models here.
admin.site.register(App1Cargo)
admin.site.register(App1Categoria)
admin.site.register(App1Ciudad)
admin.site.register(App1Concurso)
admin.site.register(App1ConcursoInscritos)
admin.site.register(App1ConcursoInscritosLog)
admin.site.register(App1ConcursoInscritosPuntaje)
admin.site.register(App1ConcursoReglas)
admin.site.register(App1Empleado)
admin.site.register(App1Sexo)
