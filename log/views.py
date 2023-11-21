from django.shortcuts import render,HttpResponse,redirect
import mysql.connector
from django.contrib.auth.hashers import make_password, check_password

mydb = mysql.connector.connect(
        host="127.0.0.1",
        user="root",
        password="l1o2v3e4"
        )
mycursor = mydb.cursor()
mycursor.execute('USE school')



def index(request):
    return render(request=request,template_name='index.html')


def account(request):
    return render(request=request,template_name='account.html')

def stu_account(request):
    
    return render(request=request,template_name='student_acc.html')


def teacher_account(request):
    if request.method == 'POST':


        data = dict(request.POST)
        
        name = data['name'][0]
        TeacherID = data['Employee_id'][0]
        DOB = data['Date-of-Birth'][0]
        Email = data['Email'][0]
        password = make_password(password=str(data['Password'][0]))
        Department = data['Department'][0]
        tem_gender = data['Gender'][0]
        gender = "M" if tem_gender == 'Male' else "F"
        print(gender)
        print(data)
        if len(data) == 8:
            mycursor.execute(f"INSERT INTO teachers (TeacherID, Name, Dataofbirth, Email, Passcode, gender, SubjectTaught) VALUES ({TeacherID}, '{name}', '{DOB}', '{Email}', '{password}', '{gender}', '{Department}');")
            print("Data Update in DataBase")
            # db.close()
            
            
    return render(request=request,template_name='teacher_acc.html')
