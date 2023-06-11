from django.db import models

# Create your models here.
# Para capturar la informacion de la tabla personajes
class Personajes(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100, verbose_name='Nombre')
    imagen = models.ImageField(upload_to='imagenes/', verbose_name='Imagen', null=True)
    raza = models.CharField(max_length=100, verbose_name='Raza')
    descripcion = models.TextField(verbose_name='Descripcion', null=True)
#   Mostrar
    def __str__(self):
        fila = "Nombre: " + self.nombre + " - " + "Raza: " + self.raza + " - " + "Descripcion: " + self.descripcion
        return fila
#   Borrar imagen
    def delete(self, using=None, keep_parents=False):
        self.imagen.storage.delete(self.imagen.name)
        super().delete()