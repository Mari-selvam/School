from django.urls import path
from . import views

urlpatterns = [
    path("Login/",view=views.student_login, name='Login' ),
    path('process_input/', views.process_input, name='process_input'),

]
