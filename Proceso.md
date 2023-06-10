#   Instalación de Django

##  [Documentación](https://www.djangoproject.com/download/)

##  Versiones:
*   **Python:** 3.11.1
*   **Django:** 4.2.2

##  Instalación
`pip install Django==4.2.2`

##  Crear el proyecto
`django-admin startproject NOMBRE_DEL_PROYECTO`

<br>
Este comando creara el proyecto y dentro del proyecto creara una carpeta con el mismo nombre del proyecto y un archivo llamado `manage.py`.

##  Corriendo el servidor
`python manage.py runserver`

##  Creación de la carpeta para la vista
`python manage.py startapp libreria`

##  Configuración de las vistas

`INSTALLED_APPS``agregar nuestra carpeta de vistas que es librería con el siguiente línea de código: 
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