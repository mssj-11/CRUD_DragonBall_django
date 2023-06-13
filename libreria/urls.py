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
    path('all_personajes', views.all_personajes, name='all_personajes'),
    path('personajes/crear', views.crear, name='crear'),
    path('personajes/editar', views.editar, name='editar'),
    path('personajes/editar/<int:id>', views.editar, name='editar'),
    path('eliminar/<int:id>', views.eliminar, name='eliminar'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)