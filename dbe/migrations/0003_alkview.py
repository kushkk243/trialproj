# Generated by Django 3.0.6 on 2020-05-31 15:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dbe', '0002_auto_20200519_1037'),
    ]

    operations = [
        migrations.CreateModel(
            name='AlkView',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Srno', models.IntegerField()),
                ('Primary_name', models.CharField(max_length=100)),
                ('isomers', models.TextField()),
            ],
        ),
    ]
