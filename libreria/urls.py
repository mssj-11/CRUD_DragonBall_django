from django.urls import path
from . import views

#   Importnado las clases para acceder a las imagenes
from django.conf import settings
from django.contrib.staticfiles.urls import static

#   Accediendo a las RUTAS para las vistas
urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('nosotros', views.nosotros, name='nosotros'),
    path('personajes', views.personajes, name='personajes'),
    path('personajes/crear', views.crear, name='crear'),
    path('personajes/editar', views.editar, name='editar'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)