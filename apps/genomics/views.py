from django.shortcuts import render, redirect
from django.contrib import messages
from django.core.serializers.json import DjangoJSONEncoder
import json
import datetime
import time
from .models import *

def index(request):
    request.session.clear()
    return render(request, 'dashboard/index.html')

def dashboard(request):
    if request.method == "GET":
        if 'first_name' not in request.session:
            messages.error(request, "You have been logged out. Please log back in.")
            return redirect('/')
    patients = Patients.objects.all().values()
    patient_has_genome = PatientsHasGenes.objects.all().values()
    # format appointment dates for readability
    for patient in patients:
        patient['hasGenomicData'] = False;
        if patient['appointment_datetime'] != None:
            patient['date'] = patient['appointment_datetime'].strftime('%b. %d, %Y')
            patient['apt_time'] = patient['appointment_datetime'].strftime('%I:%m %p')
        
        for ids in patient_has_genome:
            if patient['id'] == ids['patient_id']:
                patient['hasGenomicData'] = True
                break

    data = {
        'patients': list(patients)
    }
 
    return render(request, 'dashboard/dashboard.html', data)

def patient(request, id):
    myPatient = Patients.objects.get(id = id);

    print(myPatient)

    data = {
        'first_name': myPatient.first_name,
        'last_name': myPatient.last_name,
        'DOB': '01/21/1992',
        'gender': myPatient.gender,
        'diagnosis_history': [],
        'medications': [],
        'genome_mutations': [],
        'pharmacy': 'TestPharm',
        'pharmacy_address': '1111 Test Ln.',
        'pharmacy_phone': '111-000-1111',

        'symptoms': myPatient.symptoms,
        'tests_labs': [],
        'imaging': [],
        'prognosis': [],

        'rec_medications': [
            {
                'name': 'testMed',
                'dosage': '5mg',
                'route': 'oral',
                'contraindications': [],
                'contraMedications': [],
            },
            {
                'name': 'testMed2',
                'dosage': '5mg',
                'route': 'oral',
                'contraindications': [],
                'contraMedications': [],
            },
        ]
    }
    return render(request, 'dashboard/patient.html', data)

# Post request from front end to register a new user.
def register(request):
    request.session['first_name'] = request.POST['first_name']
    request.session['last_name'] = request.POST['last_name']
    request.session['email'] = request.POST['email']
    request.session['password'] = request.POST['password']
    request.session['pw_confirm'] = request.POST['pw_confirm']
    if request.method == "POST":
        result = AuthUser.objects.registrationValidator(request.POST)
        if isinstance(result, dict):
            for tags, value in result.items():
                messages.error(request, value, extra_tags=tags)
            return redirect('/')
        else:
            request.session['isvalid'] = True
            request.session['user_id'] = result
            request.session['first_name'] = AuthUser.objects.get(id = result).first_name
        return redirect('/dashboard')

def login(request):
    # backup method if db is down
    # if request.method == "POST":
    #     request.session['user_id'] = "1"
    #     request.session['first_name'] = "Test User"
    #     return redirect('/dashboard')
    if request.method == "POST":
        user = AuthUser.objects.loginValidator(request.POST)
        if 'invalid_email' in user or 'empty' in user:
            for tags, value in user.items():
                messages.error(request, value, extra_tags=tags)
            return redirect('/')
        else:
            request.session['isvalid'] = True

            request.session['user_id'] = user[0].id
            request.session['first_name'] = user[0].first_name
            request.session['last_name'] = user[0].last_name
            return redirect('/dashboard')