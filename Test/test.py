import mysql.connector

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="root",
  password="l1o2v3e4"
)

mycursor = mydb.cursor()

mycursor.execute("SHOW DATABASES")

for i in mycursor:
    print(i)