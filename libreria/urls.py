from django.urls import path
from . import views

#   Accediendo a las RUTAS para las vistas
urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('nosotros', views.nosotros, name='nosotros'),
    path('personajes', views.personajes, name='personajes'),
    path('crear_personajes', views.crear_personajes, name='crear_personajes'),
    path('editar_personajes', views.editar_personajes, name='editar_personajes'),
]
