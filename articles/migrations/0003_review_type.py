# Generated by Django 3.1.7 on 2021-05-20 05:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('articles', '0002_actor'),
    ]

    operations = [
        migrations.AddField(
            model_name='review',
            name='type',
            field=models.CharField(default=1, max_length=10),
            preserve_default=False,
        ),
    ]
