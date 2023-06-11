from django.shortcuts import render
from django.http import HttpResponse
from .models import Personajes

# Paginas
def inicio(request):
    return render(request, "paginas/inicio.html")

def nosotros(request):
    return render(request, "paginas/nosotros.html")

def personajes(request):
    #   Mostrando la informacion de la DB a partir del modelo
    personajes = Personajes.objects.all()
    return render(request, "paginas/personajes.html", {'personajes': personajes})
#   CRUD
def crear(request):
    return render(request, "libros/crear.html")

def editar(request):
    return render(request, "libros/editar.html")