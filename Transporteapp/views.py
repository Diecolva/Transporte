from django.shortcuts import render, redirect
from .forms import CotizacionForm
from django.http import HttpResponseRedirect
from Transporteapp.models import OrdenDeServicio, Bitacora
from django.core.mail import send_mail
import re

def index(request):
    if request.method == 'POST':
        form = CotizacionForm(request.POST)
        if form.is_valid():
            form.save(commit=True)
            return redirect('confirmacion')
    else:
        form = CotizacionForm()

    context = {'form': form}
    return render(request, 'index.html', context)

def seguimiento(request):
    if request.method == 'POST':
        numero_seguimiento = request.POST.get('numero_seguimiento')
        
        if not re.match(r'^\d+$', numero_seguimiento):
            estado = None
            bitacora = None
            mensaje_error = 'El número de seguimiento debe contener solo dígitos.'
            context = {
                'numero_seguimiento': numero_seguimiento,
                'estado': estado,
                'bitacora': bitacora,
                'mensaje_error': mensaje_error
            }
            return render(request, 'seguimiento.html', context)

        try:
            orden_servicio = OrdenDeServicio.objects.get(numeroSeguimiento=numero_seguimiento)
            bitacora = Bitacora.objects.filter(Orden_de_servicio=orden_servicio).first()
            estado = orden_servicio.estado
            comentario = orden_servicio.comentario
        except OrdenDeServicio.DoesNotExist:
            estado = None
            bitacora = None
            mensaje_error = 'El número de seguimiento no existe.'
            context = {
                'numero_seguimiento': numero_seguimiento,
                'estado': estado,
                'bitacora': bitacora,
                'mensaje_error': mensaje_error
            }
            return render(request, 'seguimiento.html', context)

        context = {
            'numero_seguimiento': numero_seguimiento,
            'estado': estado,
            'bitacora': bitacora,
	    'comentario': comentario,
        }

        return render(request, 'seguimiento.html', context)
    else:
        return render(request, 'seguimiento.html')

def confirmacion(request):
    data = {}
    return render(request, 'confirmacion.html', data)
