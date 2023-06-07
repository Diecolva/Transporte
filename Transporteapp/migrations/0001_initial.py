# Generated by Django 4.2.1 on 2023-06-07 22:26

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('dirección', models.CharField(max_length=50)),
                ('correo', models.CharField(max_length=50)),
                ('teléfono', models.PositiveIntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Vehículo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('modelo', models.CharField(max_length=50)),
                ('año', models.IntegerField(default=2023)),
                ('patente', models.CharField(default='', max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='OrdenDeServicio',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha', models.DateField()),
                ('numeroSeguimiento', models.PositiveIntegerField()),
                ('comentario', models.CharField(max_length=100)),
                ('estado', models.CharField(choices=[('opcion1', 'En evaluación'), ('opcion2', 'Despachado'), ('opcion3', 'En Traslado'), ('opcion4', 'Interrumpido'), ('opcion5', 'Cancelado'), ('opcion6', 'Cumplido')], default='opcion1', max_length=50)),
                ('valor', models.FloatField()),
                ('cliente', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Transporteapp.cliente')),
                ('transportista', models.ManyToManyField(blank=True, related_name='Transportistas', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Orden de servicio',
            },
        ),
        migrations.CreateModel(
            name='Cotización',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('servicio', models.CharField(max_length=50)),
                ('fechaSolicitud', models.DateField()),
                ('peso', models.PositiveIntegerField()),
                ('dimensiones', models.CharField(max_length=50)),
                ('fechaInicio', models.DateField()),
                ('lugarOrigen', models.CharField(max_length=50)),
                ('lugarDestino', models.CharField(max_length=50)),
                ('cliente', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Transporteapp.cliente')),
            ],
            options={
                'verbose_name_plural': 'Cotizaciones',
            },
        ),
        migrations.CreateModel(
            name='Bitacora',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('imagen', models.ImageField(blank=True, upload_to='bitacora_imagenes/')),
                ('orden_de_servicio', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='Transporteapp.ordendeservicio')),
            ],
        ),
    ]
