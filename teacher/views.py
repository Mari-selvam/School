from django.http import HttpResponseRedirect
from django.shortcuts import render,HttpResponse,redirect
from django.views.decorators.csrf import csrf_exempt





user_name = []
password = []

# @csrf_exempt
def Login(request):
    if request.method =='POST':
        email = request.POST['email']
        password = request.POST['password']    
        user_name.append(email)
    return render(request=request,template_name='teacher_log.html')




def home(request):

    
    return render(request=request,template_name='home.html')