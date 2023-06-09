from django.urls import path
from . import views

#   Accediendo a las RUTAS para las vistas
urlpatterns = [
    path('', views.inicio, name='inicio'),
]
