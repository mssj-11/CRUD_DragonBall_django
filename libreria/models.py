from django.db import models

# Create your models here.
# Para capturar la informacion de la tabla personajes
class Personajes(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100, verbose_name='Nombre')
    imagen = models.ImageField(upload_to='imagenes/', verbose_name='Imagen', null=True)
    raza = models.CharField(max_length=100, verbose_name='Raza')
    descripcion = models.TextField(verbose_name='Descripcion', null=True)