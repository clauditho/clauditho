#import MySQLdb as sql
#from os import name
#from django.shortcuts import render
#from formtools.wizard.views import SessionWizardView
#from django.contrib import messages
#import django.db.backends.mysql as conectar
#from .forms import *

from django.shortcuts import redirect, render
from matplotlib.font_manager import json_dump
from pandas import Categorical
from .models import Usuarios,Campos,Campoespecies,Campovariedades,Cuarteles,Categorias,Productos,Proveedores,Monedas,Formadepago,Medidas,Plandecuentas,Numocfecha
from django.http import HttpResponse, JsonResponse
import json

from django.http import JsonResponse




def login(request):
    if request.method == 'POST':
        #cur.execute('select * from usuarios join roles.rut_empresa as rut_empresa on roles')
        
        rut = request.POST['rut_empresa']
        user = request.POST['email']
        password = request.POST['pass']

        if rut == "1-0" and user == "admin@admin.cl" and password == "123":
            return home(request)
    return render(request, 'login/login.html')

def home(request):
    return render(request, 'dashboard/home/index.html')

    
 
def all_category(request):
    template_name = "ordencompras/formula.html"
    
    cat = Categorias.objects.all()
    prod = Productos.objects.all()
    prov = Proveedores.objects.all()


    contex = {
        'cat':cat,
        'prod':prod,
        'prov':prov
        
    }
    return render(request,template_name,contex)


def arbol(request):
    template_name = 'arbol.html'
    camp = Campos.objects.filter(rutfk='1-0')
    
    
    listadic = []

    for c in range(len(camp)):
        #print(camp[c].nomcam)
        listCamp = []
        listCamp.append(camp[c].nomcam)
        

        diccamp = {}
        diccamp['text'] = camp[c].nomcam
        listadic.append(diccamp)

        esp = Campoespecies.objects.filter(idcamfk=camp[c].idcamp)
        
        listEspecie = []
        
        diclistesp = []
        
        for e in range(len(esp)):
            dicespecie = {}
            
            print(esp[e].idespfk.nombre)
            listEspecie.append(esp[e].idespfk.nombre)
            camvar = Campovariedades.objects.filter(idcamfk=camp[c].idcamp,idespfk=esp[e].idespfk.idesp)
            dicespecie['text']=esp[e].idespfk.nombre
            diclistesp.append(dicespecie)

            listVariedades = []
            listdicvar = []
            for v in range(len(camvar)):
                dicvar = {}
                print(camvar[v].idvarfk.variedad)
                listVariedades.append(camvar[v].idvarfk.variedad)
                dicvar['text']=camvar[v].idvarfk.variedad
                listdicvar.append(dicvar)

        
                cuar = Cuarteles.objects.filter(idcamfk=camp[c].idcamp,idespfk=esp[e].idespfk.idesp,idvarfk=camvar[v].idvarfk.idvar)
                listaCuarteles = []
                
                listdiccuartel = []
                
                for cu in range(len(cuar)):
                    diccuartel = {}
                    print(cuar[cu].nomcuartel)
                    listaCuarteles.append(cuar[cu].nomcuartel)
                    
                    diccuartel['text']=cuar[cu].nomcuartel
                    listdiccuartel.append(diccuartel)
                    
                listVariedades.append(listaCuarteles)
                listdicvar[v]['children']=listdiccuartel
                print(listdiccuartel)
            

            listEspecie.append(listVariedades)
            print(listdicvar)
            diclistesp[e]['children']=listdicvar
        
        
        
        diccamp['children']= diclistesp
        
    
    data = listadic   
        

    print("")

    #print(listcontenedora)
    print("")
    print(listadic)

    
   

    return HttpResponse(json.dumps(data), content_type = "application/json")

def formu(request):
    template_name = 'formula2.html'

    prov = Proveedores.objects.all()
    prod = Productos.objects.all()
    moneda = Monedas.objects.all()
    fpago = Formadepago.objects.all()
    medida = Medidas.objects.all()
    pcuentas = Plandecuentas.objects.all()

    context = {
        #'cat':cat,
        'prod':prod,
        'prov':prov,
        'moneda':moneda,
        'fpago':fpago,
        'medida':medida,
        'pcuentas':pcuentas

        
    }

    return render(request,template_name,context)



def insertoc1(request):
    noc = Numocfecha.objects.all()
    oc = Numocfecha(fecha=request.POST['fecha'])
    print('lalala')
    oc.save()
    return redirect('/')




