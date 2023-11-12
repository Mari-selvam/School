from django.shortcuts import render,HttpResponse,redirect

def index(request):
    return render(request=request,template_name='index.html')


def account(request):
    return render(request=request,template_name='account.html')

def stu_account(request):
    return render(request=request,template_name='student_acc.html')


def teacher_account(request):
    
    if request.method == 'POST':
        data = dict(request.POST)
        print(data['name'])
    return render(request=request,template_name='teacher_acc.html')
