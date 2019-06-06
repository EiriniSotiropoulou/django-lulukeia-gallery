# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from .managers import PostManager

class Artgallery(models.Model):
    galleryid = models.AutoField(db_column='galleryID', primary_key=True)  # Field name made lowercase.
    galleryname = models.CharField(db_column='galleryName', max_length=50)  # Field name made lowercase.
    telephone = models.CharField(max_length=20)
    e_mail = models.CharField(db_column='e-mail', max_length=30)  # Field renamed to remove unsuitable characters.

    class Meta:
        managed = False
        db_table = 'artgallery'


class Artmovement(models.Model):
    artisticid = models.AutoField(db_column='artisticID', primary_key=True)  # Field name made lowercase.
    artisticname = models.CharField(db_column='artisticName', max_length=50)  # Field name made lowercase.
    smalldescription = models.CharField(db_column='smallDescription', max_length=500, blank=True, null=True)  # Field name made lowercase.
    rating = models.FloatField(blank=True, null=True)
    countrate = models.IntegerField(db_column='countRate', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'artmovement'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Isrented(models.Model):
    paintid = models.ForeignKey('Paint', models.DO_NOTHING, db_column='PaintID', primary_key=True)  # Field name made lowercase.
    galleryid = models.ForeignKey(Artgallery, models.DO_NOTHING, db_column='galleryID')  # Field name made lowercase.
    dateofrnt = models.DateTimeField(db_column='DateofRnt', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'isrented'
        unique_together = (('paintid', 'galleryid'),)


class Likesartmovement(models.Model):
    artisticid = models.ForeignKey(Artmovement, models.DO_NOTHING, db_column='artisticID', primary_key=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='userID')  # Field name made lowercase.
    rating = models.FloatField()

    class Meta:
        managed = False
        db_table = 'likesartmovement'
        unique_together = (('artisticid', 'userid'),)


class Likespaint(models.Model):
    paintid = models.ForeignKey('Paint', models.DO_NOTHING, db_column='paintID', primary_key=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='userID')  # Field name made lowercase.
    rating = models.FloatField()

    class Meta:
        managed = False
        db_table = 'likespaint'
        unique_together = (('paintid', 'userid'),)


class Likespainter(models.Model):
    painterid = models.ForeignKey('Painter', models.DO_NOTHING, db_column='painterID', primary_key=True)  # Field name made lowercase.
    userid = models.ForeignKey('User', models.DO_NOTHING, db_column='userID')  # Field name made lowercase.
    rating = models.FloatField()

    class Meta:
        managed = False
        db_table = 'likespainter'
        unique_together = (('painterid', 'userid'),)


class MainPaint(models.Model):
    title = models.CharField(max_length=255)
    keywords = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'main_paint'


class Paint(models.Model):
    paintid = models.IntegerField(db_column='paintID', primary_key=True)  # Field name made lowercase.
    title = models.CharField(max_length=255)
    dimensions = models.CharField(max_length=255, blank=True, null=True)
    isprototype = models.IntegerField(db_column='isPrototype', blank=True, null=True)  # Field name made lowercase.
    material = models.CharField(max_length=100, blank=True, null=True)
    keywords = models.CharField(max_length=200)
    acquisition = models.CharField(max_length=300, blank=True, null=True)
    dateofcreation = models.CharField(db_column='dateOfCreation', max_length=20)  # Field name made lowercase.
    painterid = models.ForeignKey('Painter', models.DO_NOTHING, db_column='painterID', blank=True, null=True)  # Field name made lowercase.
    artid = models.ForeignKey(Artmovement, models.DO_NOTHING, db_column='artID', blank=True, null=True)  # Field name made lowercase.
    roomid = models.ForeignKey('Room', models.DO_NOTHING, db_column='roomID', blank=True, null=True)  # Field name made lowercase.
    rating = models.FloatField(blank=True, null=True)
    countrate = models.IntegerField(db_column='countRate', blank=True, null=True)  # Field name made lowercase.
    image = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'paint'




class Painter(models.Model):
    painterid = models.AutoField(db_column='painterID', primary_key=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='firstName', max_length=255)  # Field name made lowercase.
    lastname = models.CharField(db_column='lastName', max_length=255)  # Field name made lowercase.
    nickname = models.CharField(db_column='nickName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    origins = models.CharField(max_length=100)
    dateborn = models.CharField(db_column='dateBorn', max_length=20)  # Field name made lowercase.
    datedied = models.CharField(db_column='dateDied', max_length=20, blank=True, null=True)  # Field name made lowercase.
    artid = models.ForeignKey(Artmovement, models.DO_NOTHING, db_column='artID', blank=True, null=True)  # Field name made lowercase.
    rating = models.FloatField(blank=True, null=True)
    countrate = models.IntegerField(db_column='countRate', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'painter'

    def get_subfeature_painter(self):
        return self.painterid_set.filter(type=painterid)


class Room(models.Model):
    roomid = models.AutoField(db_column='roomID', primary_key=True)  # Field name made lowercase.
    timeperiod = models.CharField(db_column='timePeriod', max_length=20, blank=True, null=True)  # Field name made lowercase.
    artmovement = models.IntegerField(db_column='artMovement', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'room'


# class Suggest(models.Model):
#     sourceid = models.ForeignKey('User', models.DO_NOTHING, db_column='sourceID', primary_key=True)  # Field name made lowercase.
#     destid = models.ForeignKey('User', models.DO_NOTHING, db_column='destID')  # Field name made lowercase.
#     paintid = models.IntegerField(db_column='paintID')  # Field name made lowercase.
#     painterid = models.IntegerField(db_column='painterID', blank=True, null=True)  # Field name made lowercase.
#     stime = models.DateTimeField(db_column='sTime')  # Field name made lowercase.
#
#     class Meta:
#         managed = False
#         db_table = 'suggest'
#         unique_together = (('sourceid', 'destid', 'paintid'),)


class User(models.Model):
    userid = models.AutoField(db_column='userID', primary_key=True)  # Field name made lowercase.
    username = models.CharField(db_column='userName', max_length=30)  # Field name made lowercase.
    userpassword = models.CharField(db_column='userPassword', max_length=50)  # Field name made lowercase.
    userstatus = models.IntegerField(db_column='userStatus', blank=True, null=True)  # Field name made lowercase.
    user_email = models.CharField(max_length=40, blank=True, null=True)
    displayname = models.CharField(db_column='displayName', max_length=30)  # Field name made lowercase.
    membershiplevel = models.IntegerField(db_column='membershipLevel', blank=True, null=True)  # Field name made lowercase.
    creditcardno = models.CharField(db_column='creditCardNo', max_length=255, blank=True, null=True)  # Field name made lowercase.
    balance = models.IntegerField(blank=True, null=True)
    user_registered = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'
