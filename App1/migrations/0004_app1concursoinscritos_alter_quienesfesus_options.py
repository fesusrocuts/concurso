# Generated by Django 4.1.3 on 2022-11-21 06:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('App1', '0003_quienesfesus'),
    ]

    operations = [
        migrations.CreateModel(
            name='App1ConcursoInscritos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('registro', models.DateTimeField()),
                ('estado', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'app1_concurso_inscritos',
                'managed': False,
            },
        ),
        migrations.AlterModelOptions(
            name='quienesfesus',
            options={'managed': False},
        ),
    ]