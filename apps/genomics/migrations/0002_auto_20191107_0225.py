# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2019-11-07 02:25
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('genomics', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='quotes',
            name='user',
        ),
        migrations.DeleteModel(
            name='Quotes',
        ),
    ]
