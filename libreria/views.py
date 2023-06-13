from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Personajes
from .forms import PersonajesForm
#   Paginacion
from django.core.paginator import Paginator


# Paginas
def inicio(request):
    return render(request, "paginas/inicio.html")

def nosotros(request):
    return render(request, "paginas/nosotros.html")

def all_personajes(request):
    personajes = Personajes.objects.all()
    paginator = Paginator(personajes, 6)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request, 'paginas/all_personajes.html', {'page_obj': page_obj})

def personajes(request):
    #   Mostrando la informacion de la DB a partir del modelo
    personajes = Personajes.objects.all()
#    return render(request, "paginas/personajes.html", {'personajes': personajes})
    #   Paginacion
    paginator = Paginator(personajes, 8)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request, 'paginas/personajes.html', {'page_obj': page_obj})

#   CRUD
def crear(request):
    formulario = PersonajesForm(request.POST or None, request.FILES or None)
    if formulario.is_valid():
        formulario.save()
        return redirect('personajes')
    return render(request, "libros/crear.html", {'formulario': formulario})

def editar(request, id):
    personaje = Personajes.objects.get(id=id)
    formulario = PersonajesForm(request.POST or None, request.FILES or None, instance=personaje)
    if formulario.is_valid() and request.POST:
        formulario.save()
        return redirect('personajes')
    return render(request, "libros/editar.html", {'formulario': formulario})

def eliminar(request, id):
    personaje = Personajes.objects.get(id=id)
    personaje.delete()
    return redirect('personajes')