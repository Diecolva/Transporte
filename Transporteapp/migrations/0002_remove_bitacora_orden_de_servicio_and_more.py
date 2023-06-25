# Generated by Django 4.2.1 on 2023-06-25 23:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Transporteapp', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='bitacora',
            name='orden_de_servicio',
        ),
        migrations.AlterField(
            model_name='cliente',
            name='correo',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='dirección',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='cliente',
            name='teléfono',
            field=models.PositiveIntegerField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='bitacora',
            name='Orden_de_servicio',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='Transporteapp.ordendeservicio'),
        ),
    ]
