from django.urls import path
from . import views

#   Accediendo a las RUTAS para las vistas
urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('nosotros', views.nosotros, name='nosotros'),
    path('personajes', views.personajes, name='personajes'),
    path('personajes/crear', views.crear, name='crear'),
    path('personajes/editar', views.editar, name='editar'),
]
