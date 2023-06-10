from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def inicio(request):
    return render(request, "paginas/inicio.html")

def nosotros(request):
    return render(request, "paginas/nosotros.html")

def personajes(request):
    return render(request, "paginas/personajes.html")
#   CRUD
def crear_personajes(request):
    return render(request, "libros/crear.html")

def editar_personajes(request):
    return render(request, "libros/editar.html")
