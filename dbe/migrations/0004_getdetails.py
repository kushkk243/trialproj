# Generated by Django 3.0.6 on 2020-06-07 15:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dbe', '0003_alkview'),
    ]

    operations = [
        migrations.CreateModel(
            name='GetDetails',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('C', models.IntegerField()),
                ('H', models.IntegerField()),
            ],
        ),
    ]