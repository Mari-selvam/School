from django.shortcuts import render,HttpResponse

def student_login(request):
    
    if request.method =='POST':
        name = request.POST.get('name')
        HttpResponse(f'Your Name is {name}')
    else:
        return HttpResponse("Not")
    
    return render(request=request,template_name='student_log.html')













from django.shortcuts import render
from django.http import HttpResponse

def process_input(request):

    if request.method =='POST':
        input_data = request.POST.get('input_data')

        # print(str(request.method)+"iminfdnhn")
        
        
        return HttpResponse(f'You entered: {input_data}')
    # else:
    #     return HttpResponse('No data submitted')
    
    return render(request=request,template_name='test.html')


