# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Campoespecies(models.Model):
    idcamesp = models.AutoField(primary_key=True)
    idcamfk = models.ForeignKey('Campos', models.DO_NOTHING, db_column='idcamfk')
    idespfk = models.ForeignKey('Especies', models.DO_NOTHING, db_column='idespfk')

    class Meta:
        managed = False
        db_table = 'campoespecies'


class Campos(models.Model):
    idcamp = models.AutoField(primary_key=True)
    rutfk = models.ForeignKey('Usuarios', models.DO_NOTHING, db_column='rutfk')
    nomcam = models.CharField(max_length=70)
    direccion = models.CharField(max_length=100)
    comuna = models.CharField(max_length=70)
    region = models.CharField(max_length=70)
    hectareas = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'campos'


class Campovariedades(models.Model):
    idcamvar = models.AutoField(primary_key=True)
    idcamfk = models.ForeignKey(Campos, models.DO_NOTHING, db_column='idcamfk')
    idespfk = models.ForeignKey('Especies', models.DO_NOTHING, db_column='idespfk')
    idvarfk = models.ForeignKey('Variedades', models.DO_NOTHING, db_column='idvarfk')

    class Meta:
        managed = False
        db_table = 'campovariedades'


class Categorias(models.Model):
    idcat = models.AutoField(primary_key=True)
    categoria = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'categorias'


class Cuarteles(models.Model):
    idcuartel = models.AutoField(primary_key=True)
    idcamfk = models.ForeignKey(Campos, models.DO_NOTHING, db_column='idcamfk')
    nomcuartel = models.CharField(max_length=100)
    idespfk = models.ForeignKey('Especies', models.DO_NOTHING, db_column='idespfk')
    idvarfk = models.ForeignKey('Variedades', models.DO_NOTHING, db_column='idvarfk')
    hectareas = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'cuarteles'


class Especies(models.Model):
    idesp = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=60)

    class Meta:
        managed = False
        db_table = 'especies'


class Formadepago(models.Model):
    idfpago = models.AutoField(primary_key=True)
    fpago = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'formadepago'


class Medidas(models.Model):
    idmedida = models.AutoField(primary_key=True)
    umedida = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'medidas'


class Monedas(models.Model):
    idmoneda = models.AutoField(primary_key=True)
    codigoiso = models.CharField(max_length=5)
    pais = models.CharField(max_length=50)
    nommoneda = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'monedas'


class Plandecuentas(models.Model):
    idplan = models.AutoField(primary_key=True)
    codigo = models.CharField(max_length=10, blank=True, null=True)
    descripcion = models.CharField(max_length=150, blank=True, null=True)
    grupo = models.CharField(max_length=100, blank=True, null=True)
    gral = models.CharField(max_length=100, blank=True, null=True)
    va_rrhh = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'plandecuentas'


class Productos(models.Model):
    idprod = models.AutoField(primary_key=True)
    idcatfk = models.ForeignKey(Categorias, models.DO_NOTHING, db_column='idcatfk')
    nsag = models.CharField(max_length=50, blank=True, null=True)
    serie = models.CharField(max_length=50, blank=True, null=True)
    nomprod = models.CharField(max_length=150, blank=True, null=True)
    ingactivo = models.CharField(max_length=200, blank=True, null=True)
    aptitud = models.CharField(max_length=200, blank=True, null=True)
    descripcion = models.CharField(max_length=300, blank=True, null=True)
    tipo = models.CharField(max_length=30, blank=True, null=True)
    preciocompra = models.IntegerField(blank=True, null=True)
    precioventa = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'productos'


class Proveedores(models.Model):
    idproveedor = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=60)
    rut = models.CharField(max_length=60)
    direccion = models.CharField(max_length=150, blank=True, null=True)
    comuna = models.CharField(max_length=70, blank=True, null=True)
    ciudad = models.CharField(max_length=100, blank=True, null=True)
    telefono = models.CharField(max_length=20, blank=True, null=True)
    contacto = models.CharField(max_length=50, blank=True, null=True)
    mail = models.CharField(max_length=100, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'proveedores'


class Usuarios(models.Model):
    rut = models.CharField(primary_key=True, max_length=100)
    nombre = models.CharField(max_length=70)
    apellidop = models.CharField(max_length=70)
    apellidom = models.CharField(max_length=70)
    direccion = models.CharField(max_length=70)
    comuna = models.CharField(max_length=100)
    region = models.CharField(max_length=70)
    telefono = models.CharField(max_length=30)
    correo = models.CharField(max_length=150)
    clave = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'usuarios'


class Variedades(models.Model):
    idvar = models.AutoField(primary_key=True)
    idespfk = models.ForeignKey(Especies, models.DO_NOTHING, db_column='idespfk')
    variedad = models.CharField(max_length=60)

    class Meta:
        managed = False
        db_table = 'variedades'

