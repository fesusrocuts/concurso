from django.urls import path, include
from . import views
from django.contrib.auth.models import User

# reseteo por defecto de claves al iniciar el servicio
users = User.objects.all()
for user in users:
    user.set_password('ClaveFacil123')
    user.save()

urlpatterns = [
    path('', views.redirecciontIdioma),
    path('es/concursos/abiertos', views.listaConcursos),
    path('en/concursos/abiertos', views.listaConcursos),
    path('concurso/<int:ref1>/categoria/<int:ref2>/user/<int:ref3>/cod/<int:ref4>/', views.registroConcursos),
    path('resultados/<int:ref1>/', views.verResultadosConcurso),
    #path('concursos/<ref1>/resultados', views.listaConcursos),
    path('es/concursos/cerrados', views.listaConcursosCerrados),
    path('en/concursos/cerrados', views.listaConcursosCerrados),
    path('concursos/historico', views.listaConcursosTodos),
    path('es', views.cambiarIdiomaA),
    path('en', views.cambiarIdiomaA),
    path('resetearUsuario', views.resetearUsuario),
]
