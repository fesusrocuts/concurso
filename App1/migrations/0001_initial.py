# Generated by Django 4.1.3 on 2022-11-18 20:49

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='App1Cargo',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('cargo', models.CharField(max_length=255, unique=True)),
                ('estado', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'app1_cargo',
                'managed': False,
            },
        ),
    ]
