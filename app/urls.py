from django.conf.urls import *
from django.urls import *
from django import urls
from .views import *
from . import views
from django.conf import settings

app_name = 'app'

urlpatterns = [
    path('', views.login, name='login'),
   path('home/', views.home, name='home'),
   path('', all_category,name='all_category'),
    path('arbol/',arbol,name='arbol'),
    path('formu/',formu,name='formu'),

]
