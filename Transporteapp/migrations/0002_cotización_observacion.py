# Generated by Django 4.2.1 on 2023-07-19 20:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Transporteapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='cotización',
            name='observacion',
            field=models.CharField(blank=True, default='', max_length=550, null=True),
        ),
    ]
