from django.shortcuts import render, redirect
from .forms import CotizacionForm
from django.http import JsonResponse


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
    data = {}
    return render(request, 'seguimiento.html', data)

def confirmacion(request):
    data = {}
    return render(request, 'confirmacion.html', data)
