import random
from django import forms
from django.contrib import admin
from django.contrib.auth.models import Group, User
from Transporteapp.models import Cliente, Cotización, Vehículo, OrdenDeServicio, Bitacora
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from django.urls import reverse
from django.utils.html import format_html
from django.http import HttpResponseRedirect
from urllib.parse import urlencode

class TransportistasSelect(forms.Select):
    def get_queryset(self):
        return User.objects.filter(groups__name='Transportistas').exclude(is_superuser=True)
    
    def build_attrs(self, *args, **kwargs):
        attrs = super().build_attrs(*args, **kwargs)
        attrs.update({'class': 'select2'})
        return attrs


class OrdenDeServicioAdminForm(forms.ModelForm):
    transportista = forms.ModelMultipleChoiceField(
        queryset=User.objects.filter(groups__name='Transportistas').exclude(is_superuser=True)
    )

    class Meta:
        model = OrdenDeServicio
        fields = '__all__'
        widgets = {
            'transportistas': TransportistasSelect()
        }

class ClienteAdmin(admin.ModelAdmin):
    search_fields = ['id', 'nombre']
    list_display = ('id', 'nombre', 'dirección', 'correo', 'teléfono')

class OrdenDeServicioAdmin(admin.ModelAdmin):
    form = OrdenDeServicioAdminForm
    list_display = ('id','cliente', 'fecha', 'numeroSeguimiento', 'comentario', 'valor', 'display_transportistas', 'add_to_bitacora')
    search_fields = ['cliente__nombre', 'numeroSeguimiento']

    def display_transportistas(self, obj):
        return ", ".join([transportista.username for transportista in obj.transportista.all()])
    display_transportistas.short_description = 'Transportista'

    def add_to_bitacora(self, obj):
        bitacora_create_url = reverse('admin:Transporteapp_bitacora_add')
        bitacora_data = urlencode({
            'Orden_de_servicio': obj.id,
        })
        return format_html('<a class="button" href="{}?{}">Añadir a Bitácora</a>', bitacora_create_url, bitacora_data)
    add_to_bitacora.short_description = 'Acción'

    def response_add(self, request, obj, post_url_continue=None):
        bitacora_create_url = reverse('admin:Transporteapp_bitacora_add')
        bitacora_data = urlencode({
            'Orden_de_servicio': obj.id,
        })
        bitacora_create_url += '?' + bitacora_data
        return HttpResponseRedirect(bitacora_create_url)
    
   
    def generar_numero_seguimiento(self):
        numero_seguimiento = random.randint(1000, 9999)
        
        while OrdenDeServicio.objects.filter(numeroSeguimiento=numero_seguimiento).exists():
            numero_seguimiento = random.randint(1000, 9999)
        
        self.numeroSeguimiento = numero_seguimiento

    def save(self, *args, **kwargs):
        if not self.numeroSeguimiento:
            self.generar_numero_seguimiento()
        
        super().save(*args, **kwargs) 

class GroupAdmin(admin.ModelAdmin):
    list_display = ('name', 'empleados')

    def empleados(self, obj):
        empleados = obj.user_set.all()
        return ", ".join([user.username for user in empleados])

class CotizacionAdmin(admin.ModelAdmin):
    search_fields = ['id', 'cliente__nombre']
    list_display = ('id', 'cliente', 'servicio', 'fechaSolicitud', 'peso', 'dimensiones', 'fechaInicio', 'lugarOrigen', 'lugarDestino')

class BitacoraAdmin(admin.ModelAdmin):
    list_display = ('Orden_de_servicio_id', 'cliente_nombre', 'numero_seguimiento')
    search_fields = ['Orden_de_servicio__id',]

    def cliente_nombre(self, obj):
        return obj.Orden_de_servicio.cliente.nombre

    def numero_seguimiento(self, obj):
        return obj.Orden_de_servicio.numeroSeguimiento

    cliente_nombre.short_description = 'Nombre del cliente'
    numero_seguimiento.short_description = 'Número de seguimiento'

admin.site.unregister(Group)
admin.site.register(Group, GroupAdmin)
admin.site.register(OrdenDeServicio, OrdenDeServicioAdmin)
admin.site.register(Vehículo)
admin.site.register(Cliente, ClienteAdmin)
admin.site.register(Cotización, CotizacionAdmin)
admin.site.register(Bitacora, BitacoraAdmin)
