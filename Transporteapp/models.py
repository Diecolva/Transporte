from django.db import models
import datetime
from django.contrib.auth.models import User

# Create your models here.

class Cliente(models.Model):
    nombre = models.CharField(max_length=50)
    dirección = models.CharField(max_length=50)
    correo = models.CharField(max_length=50)
    teléfono = models.PositiveIntegerField()

    def __str__(self):
        return self.nombre

class Cotización(models.Model):
    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE)
    servicio = models.CharField(max_length=50)
    fechaSolicitud = models.DateField()
    peso = models.PositiveIntegerField()
    dimensiones = models.IntegerField()
    fechaInicio = models.DateField()
    lugarOrigen = models.CharField(max_length=50)
    lugarDestino = models.CharField(max_length=50)

    def __str__(self):
        return self.cliente.nombre
    
    class Meta:
        verbose_name_plural = "Cotizaciones"


class Vehículo(models.Model):
    modelo = models.CharField(max_length=50)
    año = models.IntegerField(default=datetime.date.today().year)
    patente = models.CharField(max_length=50, default='')

    def __str__(self):
            return self.modelo
    

class OrdenDeServicio(models.Model):
    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE)
    fecha = models.DateField()
    numeroSeguimiento = models.PositiveIntegerField()
    comentario = models.CharField(max_length=100)
    ESTADO_CHOICES = [
        ('opcion1', 'En evaluación'),
        ('opcion2', 'Despachado'),
        ('opcion3', 'En Traslado'),
        ('opcion4', 'Interrumpido'),
        ('opcion5', 'Cancelado'),
        ('opcion6', 'Cumplido'),
    ]
    estado = models.CharField(max_length=50, choices=ESTADO_CHOICES, default="opcion1")
    valor = models.FloatField()
    transportista = models.ManyToManyField(User, related_name='Transportistas', blank=True)

    def __str__(self):
        return self.estado

    def __str__(self):
        return self.cliente.nombre
    
    def get_transportistas(self):
        return self.transportista.filter(groups__name='Transportistas').exclude(is_superuser=True)
    
    class Meta:
        verbose_name_plural = "Orden de servicio"

class Bitacora(models.Model):
    
    Orden_de_servicio = models.ForeignKey(OrdenDeServicio, on_delete=models.CASCADE)
    imagen = models.ImageField(upload_to='bitacora_imagenes/', blank=True)

    def obtener_ordendeservicio_por_seguimiento(self):
        return self.Orden_de_servicio
