from django import forms
from django.contrib import admin
from django.contrib.auth.models import Group, User
from Transporteapp.models import Cliente, Cotización, Vehículo, OrdenDeServicio, Bitacora
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static





class TransportistasSelect(forms.Select):
    def get_queryset(self):
        return User.objects.filter(groups__name='Transportistas').exclude(is_superuser=True)
    
    def build_attrs(self, *args, **kwargs):
        attrs = super().build_attrs(*args, **kwargs)
        attrs.update({'class': 'select2'})
        return attrs


class OrdenDeServicioAdminForm(forms.ModelForm):
    class Meta:
        model = OrdenDeServicio
        fields = '__all__'
        widgets = {
            'transportistas': TransportistasSelect()
        }

class ClienteAdmin(admin.ModelAdmin):
    search_fields = ['nombre']

class OrdenDeServicioAdmin(admin.ModelAdmin):
    form = OrdenDeServicioAdminForm
    list_display = ('cliente', 'fecha', 'numeroSeguimiento', 'comentario', 'valor', 'display_transportistas')

    def display_transportistas(self, obj):
        return ", ".join([transportista.username for transportista in obj.transportista.all()])
    display_transportistas.short_description = 'Transportista'
    search_fields = ['cliente__nombre', 'numeroSeguimiento']


class GroupAdmin(admin.ModelAdmin):
    list_display = ('name', 'empleados')

    def empleados(self, obj):
        empleados = obj.user_set.all()
        return ", ".join([user.username for user in empleados])

class CotizacionAdmin(admin.ModelAdmin):
    search_fields = ['numeroSeguimiento']

class BitacoraAdmin(admin.ModelAdmin):
    list_display = ('cliente_nombre', 'numero_seguimiento')
    search_fields = ['orden_de_servicio__numeroSeguimiento']

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
