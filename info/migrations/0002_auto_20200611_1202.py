# Generated by Django 3.0.6 on 2020-06-11 03:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('member', '0001_initial'),
        ('info', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Member',
            new_name='Member3',
        ),
        migrations.AlterField(
            model_name='reply',
            name='member_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='member.Member'),
        ),
    ]
