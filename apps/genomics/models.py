from __future__ import unicode_literals
from django.db import models
from django.contrib import messages
import bcrypt
import re

EMAIL_REGEX = re.compile(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)")

# Model manager - gives access to models.manager as well as internal validation functions
class UserManager(models.Manager):
    # Validate user registration
    def registrationValidator(self, postData):
        errors = {}
        if len(postData['first_name']) < 4 or len(postData['first_name']) > 255:
            errors['first_name'] = "Your first name must be at least 3 characters"

        if len(postData['last_name']) < 4 or len(postData['last_name']) > 255:
            errors['last_name'] = "Your last name must be at least 3 characters"

        if not EMAIL_REGEX.match(postData['email']):
            errors['email_invalid'] = "The email you entered is not valid."

        if len(postData['email']) < 6 or len(postData['email']) > 255:
            errors['email_length'] = "Email must be at least 8 characters long."

        elif AuthUser.objects.filter(email = postData['email']):
            errors['email'] = "The email you entered has already been taken! Please log in."

        if len(postData['password']) < 5 or len(postData['password']) > 255:
            errors['password'] = "Password must be at least 8 characters long."
        
        elif len(postData['pw_confirm']) < 5 or len(postData['pw_confirm']) > 255:
            errors['pw_confirm'] = "Password must be at least 8 characters long."
        elif postData['password'] != postData['pw_confirm']:
            errors['password'] = "Your passwords do not match!"
        
        if len(errors):
            errors['valid'] = False
            return errors

        else:
            # hash password + salt password using bcrypt
            # Bcrypt requires encoding on hashing and checking passwords
            # - So we need to ensure we add a step to decode, so we don't double encode our password
            new_pw = bcrypt.hashpw(postData['password'].encode('utf-8'), bcrypt.gensalt())
            new_pw = new_pw.decode('utf-8')
            # By default I am making each user a super-user in order
            # to satisfy django's auto-created user model and for testing purposes.
            create_user =  AuthUser.objects.create(
                first_name = postData['first_name'],
                last_name = postData['last_name'],
                email = postData['email'],
                password = new_pw,
                is_active = True,
                is_superuser = True,
                is_staff = True
            )
            new_user = create_user.id
            return new_user

    # Validate user login
    def loginValidator(self, postData):
        errors = {}
        user = AuthUser.objects.filter(email = postData['email2'])
        print("\n\n")
        print(user[0].password.encode('utf-8'))
        print(postData['password2'].encode('utf-8'))
        print("\n\n")

        if len(user):
            if bcrypt.checkpw(postData['password2'].encode('utf-8'), user[0].password.encode('utf-8')):
                return user
            else:
                errors['invalid_email'] = "The email address or password you entered was not valid."
                return errors
        else:
            errors['empty'] = "Please enter a valid email address and password."
            return errors

class AuthUser(models.Model):
    password = models.TextField()
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField(blank=True, null=True)
    username = models.CharField(blank=True, null=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField(blank=True, null=True)
    is_active = models.IntegerField(blank=True, null=True)
    date_joined = models.DateTimeField(auto_now_add=True)
    objects = UserManager()

    class Meta:
        managed = False
        db_table = 'auth_user'


class Patients(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    gender = models.CharField(db_column='GENDER', max_length=45, blank=True, null=True)  # Field name made lowercase.
    age = models.CharField(db_column='AGE', max_length=25, blank=True, null=True)  # Field name made lowercase.
    vital_status = models.CharField(db_column='VITAL_STATUS', max_length=255, blank=True, null=True)  # Field name made lowercase.
    height = models.CharField(db_column='HEIGHT', max_length=5, blank=True, null=True)  # Field name made lowercase.
    weight = models.CharField(db_column='WEIGHT', max_length=10, blank=True, null=True)  # Field name made lowercase.
    first_name = models.CharField(db_column='FIRST_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    last_name = models.CharField(db_column='LAST_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    stage = models.CharField(db_column='STAGE', max_length=1, blank=True, null=True)  # Field name made lowercase.
    symptoms = models.TextField(db_column='SYMPTOMS', blank=True, null=True)  # Field name made lowercase.
    tests = models.TextField(db_column='TESTS', blank=True, null=True)  # Field name made lowercase.
    appointment_datetime = models.DateTimeField(db_column='APPOINTMENT_DATETIME', blank=True, null=True) # Field name made lowercase.
    objects = models.Manager

    # Allows us to print class properties
    def __repr__(self):
        return "{} {} {} {} {} {} {} {} {} {} {} {} {}".format(self.id,self.gender,self.age,self.vital_status,self.height,self.weight,self.first_name,self.last_name,self.stage,self.symptoms,self.tests,self.appointment_datetime)
    def __str__(self):
        return str(self.__class__) + ": " + str(self.__dict__)
    class Meta:
        managed = False
        db_table = 'Patients'


class Cancers(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    type = models.CharField(db_column='TYPE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    primary_site = models.CharField(db_column='PRIMARY_SITE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Cancers'


class Genes(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    is_cancer_gene = models.CharField(db_column='IS_CANCER_GENE', max_length=45, blank=True, null=True)  # Field name made lowercase.
    symbol = models.CharField(db_column='SYMBOL', max_length=255, blank=True, null=True)  # Field name made lowercase.
    bio_type = models.CharField(db_column='BIO_TYPE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    cytoband = models.CharField(db_column='CYTOBAND', max_length=255, blank=True, null=True)  # Field name made lowercase.
    genotype = models.CharField(db_column='GENOTYPE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    phenotype = models.TextField(db_column='PHENOTYPE', blank=True, null=True)  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Genes'


class Medications(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    dosage = models.CharField(db_column='DOSAGE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    method = models.CharField(db_column='METHOD', max_length=255, blank=True, null=True)  # Field name made lowercase.
    indication = models.TextField(db_column='INDICATION', blank=True, null=True)  # Field name made lowercase.
    contraindication = models.TextField(db_column='CONTRAINDICATION', blank=True, null=True)  # Field name made lowercase.
    side_effects = models.TextField(db_column='SIDE_EFFECTS', blank=True, null=True)  # Field name made lowercase.
    generic_name = models.CharField(db_column='GENERIC_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    brand_name = models.CharField(db_column='BRAND_NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    route = models.CharField(db_column='ROUTE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    iupac = models.TextField(db_column='IUPAC', blank=True, null=True)  # Field name made lowercase.
    mechanism = models.TextField(db_column='MECHANISM', blank=True, null=True)  # Field name made lowercase.
    type = models.CharField(db_column='TYPE', max_length=45, blank=True, null=True)  # Field name made lowercase.
    treatment_type = models.CharField(db_column='TREATMENT_TYPE', max_length=255, blank=True, null=True)  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Medications'


class MedicationsHasGenes(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    medications = models.ForeignKey(Medications, models.DO_NOTHING, db_column='Medications_ID')  # Field name made lowercase.
    genes = models.ForeignKey(Genes, models.DO_NOTHING, db_column='Genes_ID')  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Medications_has_Genes'

class CancerHasGenes(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    cancer = models.ForeignKey('Cancers', models.DO_NOTHING, db_column='Cancer_ID')  # Field name made lowercase.
    gene = models.ForeignKey('Genes', models.DO_NOTHING, db_column='Gene_ID')  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Cancer_has_Genes'


class CancerHasMedications(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    medication_id = models.IntegerField(db_column='Medication_ID')  # Field name made lowercase.
    cancer_id = models.IntegerField(db_column='Cancer_ID')  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Cancer_has_Medications'

class Pathways(models.Model):
    id = models.IntegerField(db_column='ID', primary_key=True)  # Field name made lowercase.
    medication = models.ForeignKey(Medications, models.DO_NOTHING, db_column='Medication_ID')  # Field name made lowercase.
    name = models.CharField(db_column='NAME', max_length=255, blank=True, null=True)  # Field name made lowercase.
    description = models.TextField(db_column='DESCRIPTION', blank=True, null=True)  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Pathways'


class PatientsHasCancer(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey(Patients, models.DO_NOTHING, db_column='Patient_ID')  # Field name made lowercase.
    cancer = models.ForeignKey(Cancers, models.DO_NOTHING, db_column='Cancer_ID')  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Patients_has_Cancer'


class PatientsHasGenes(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    patient = models.ForeignKey(Patients, models.DO_NOTHING, db_column='Patient_ID')  # Field name made lowercase.
    gene = models.ForeignKey(Genes, models.DO_NOTHING, db_column='Gene_ID')  # Field name made lowercase.
    sequence = models.TextField(db_column='SEQUENCE', blank=True, null=True)  # Field name made lowercase.
    isvariant = models.IntegerField(db_column='ISVARIANT', blank=True, null=True)  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Patients_has_Genes'


class PatientsHasMedication(models.Model):
    patient = models.OneToOneField(Patients, models.DO_NOTHING, db_column='Patient_ID', primary_key=True)  # Field name made lowercase.
    medication = models.ForeignKey(Medications, models.DO_NOTHING, db_column='Medication_ID')  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Patients_has_Medication'
        unique_together = (('patient', 'medication'),)


class Variants(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    gene = models.ForeignKey(Genes, models.DO_NOTHING, db_column='Gene_ID')  # Field name made lowercase.
    patient = models.ForeignKey(Patients, models.DO_NOTHING, db_column='Patient_ID')  # Field name made lowercase.
    sequence = models.TextField(db_column='SEQUENCE', blank=True, null=True)  # Field name made lowercase.
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'Variants'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)
    objects = models.Manager

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
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()
    objects = models.Manager

    class Meta:
        managed = False
        db_table = 'django_session'

