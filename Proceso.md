#   Instalación de Django

##  [Documentación](https://www.djangoproject.com/download/)

##  Entornos virtuales:
Instalar:
```sh
pip install virtualenv
```
Verificar la versión actual:
```sh
virtualenv --version
```


Una vez realizado los 2 pasos anteriores, ingresar a la carpeta raíz del proyecto y crear/nombrar el entorno virtual.<br<
Crear el entorno virtual con el nombre **venv**
```sh
virtualenv venv
```
Ingresando a la carpeta, Activando el entorno virtual
```sh
.\venv\Scripts\activate
```
Desactivar el entorno virtual:
```sh
deactivate
```

##  Instalación
`pip install Django==3.2.8`

##  Crear el proyecto
`django-admin startproject NOMBRE_DEL_PROYECTO`

<br>
Este comando creara el proyecto y dentro del proyecto creara una carpeta con el mismo nombre del proyecto y un archivo llamado `manage.py`.

##  Corriendo el servidor
`python manage.py runserver`

##  Creación de la carpeta para la vista
`python manage.py startapp libreria`

##  Configuración de las vistas
Dentro de `settings.py` en 
`INSTALLED_APPS`agregar nuestra carpeta de vistas que es librería con el siguiente línea de código: 
`'libreria'`

##  Creación de las RUTAS
Dentro de la carpeta `librerias` crear el archivo `urls.py`

##  Configuración de la DB:
Ingresar en la carpeta con el nombre del archivo y editar en la parte de **DATABASES** en el archivo `settings.py` a modo de que quede de la siguiente manera.
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'cruddragonballdjango',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3306'
    }
}
```
Instalar paquete de MySQL con el siguiente comando: `pip install PyMySQL` <br>
Para la carga de imágenes instalar **Pillow** con el siguiente comando: `pip install pillow` <br>
Verificar la instalación de los paquetes con: `pip list` <br>
Finalmente la configuración en el archivo `_init_.py` importando los paquetes instalados, de la siguiente manera.
```py
import pymysql
pymysql.install_as_MySQLdb()
```


##  Migraciones:
Dentro de la carpeta creada `libreria` abrir el archivo `models.py` y crear las migraciones de la siguiente manera:
```py
class Personajes(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100, verbose_name='Nombre')
    imagen = models.ImageField(upload_to='imagenes/', null=True, verbose_name='Imagen')
    raza = models.CharField(max_length=100, verbose_name='Raza')
    descripcion = models.TextField(null=True, verbose_name='Descripcion')
```
Ejecutando la migración
```sh
python manage.py makemigrations
```
```sh
python manage.py migrate
```

Agregar el modelo - tabla creada en el archivo `admin.py` dentro de la carpeta creada librería
```py
from django.contrib import admin
from .models import Personajes

# Register your models here.
admin.site.register(Personajes)
```

##  Crear el super usuario
`python manage.py createsuperuser`
Puedes configurarlo al gusto
**Configuración para este proyecto:**
*   admin
*   admin@admin.com
*   admin
Esto creara una ruta **admin** con la cual creara un formulario de sesión.