from django.shortcuts import render
from django.http import HttpResponse

# Paginas
def inicio(request):
    return render(request, "paginas/inicio.html")

def nosotros(request):
    return render(request, "paginas/nosotros.html")

def personajes(request):
    return render(request, "paginas/personajes.html")
#   CRUD
def crear(request):
    return render(request, "libros/crear.html")

def editar(request):
    return render(request, "libros/editar.html")
