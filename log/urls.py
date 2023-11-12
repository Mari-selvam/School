from django.urls import path,include
from . import views

urlpatterns = [
    path("Home/",views.index),
    path("create-account/",views.account),
    path("create-account/student/",views.stu_account),
    path("create-account/teacher/",views.teacher_account)


]
