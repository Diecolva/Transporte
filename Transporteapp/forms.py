from django.shortcuts import render, redirect
from datetime import date
from django import forms
from .models import Cotización, Cliente
from django.contrib import messages
from django.contrib.messages import get_messages

class CotizacionForm(forms.ModelForm):
    nombre_cliente = forms.CharField(label='Nombre del cliente', widget=forms.TextInput(attrs={'class': 'form-control'}))
    correo = forms.EmailField(label='Correo electrónico', widget=forms.EmailInput(attrs={'class': 'form-control'}))
    telefono = forms.CharField(label='Teléfono', widget=forms.TextInput(attrs={'class': 'form-control'}))
    servicio = forms.ChoiceField(label='Tipo de servicio', widget=forms.Select(attrs={'class': 'form-control'}),
    choices=[
    ('', 'Seleccione un servicio'),
    ('Traslado de material', 'Traslado de material'),
    ('Traslado de vehículo', 'Traslado de vehículo'),
    ('Mudanza', 'Mudanza'),
    ('Otros', 'Otros'),
])
    fechaSolicitud = forms.DateField(label='Fecha de solicitud', widget=forms.DateInput(attrs={'class': 'form-control', 'type': 'date', 'value': date.today().strftime('%Y-%m-%d'), 'readonly': 'true'}))
    peso = forms.IntegerField(label='Peso en kg', widget=forms.NumberInput(attrs={'class': 'form-control'}))
    dimensiones = forms.CharField(label='Dimensiones', required=False, widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'En caso que quiera especificar'}))
    fechaInicio = forms.DateField(label='Fecha de inicio', widget=forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}))
    lugarOrigen = forms.CharField(label='Lugar de origen', widget=forms.TextInput(attrs={'class': 'form-control'}))
    lugarDestino = forms.CharField(label='Lugar de destino', widget=forms.TextInput(attrs={'class': 'form-control'}))
    observacion = forms.CharField(label='Obsevación', widget=forms.TextInput(attrs={'class': 'form-control'}))
    

    class Meta:
        model = Cotización
        exclude = ['cliente']
        fields = ['nombre_cliente', 'correo', 'telefono', 'servicio', 'fechaSolicitud', 'peso', 'dimensiones', 'fechaInicio', 'lugarOrigen', 'lugarDestino', 'observacion']


    def clean_nombre_cliente(self):
        nombre_cliente = self.cleaned_data['nombre_cliente']
        if ' ' not in nombre_cliente:
            raise forms.ValidationError('Ingrese el nombre y apellido')
        return nombre_cliente


    def clean_peso(self):
        peso = self.cleaned_data['peso']
        if peso > 25000:
            raise forms.ValidationError('El peso debe ser menor o igual a 25000 kg.')
        return peso

    def save(self, commit=True, user=None):
        nombre_cliente = self.cleaned_data['nombre_cliente']
        correo = self.cleaned_data['correo']
        teléfono = self.cleaned_data['telefono']

        cliente = Cliente(nombre=nombre_cliente, correo=correo, teléfono=teléfono)
        if commit:
            cliente.save()

        cotizacion = super().save(commit=False)
        cotizacion.cliente = cliente
        if commit:
            cotizacion.save()
        return cotizacion
