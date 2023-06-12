from django import forms
from .models import Personajes

class PersonajesForm(forms.ModelForm):
    class Meta:
        model = Personajes
        fields = '__all__'