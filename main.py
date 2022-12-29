import mysql.connector

cnx = mysql.connector.connect(user='root', password='mysql', host='mysql', database='university')
cursor = cnx.cursor()

cursor.execute("Use university;")
cursor.execute("select student.id, student.firstName, student.secondName, book.lesson, book.mark from student join book on student.id = book.studentID;")
answer = cursor.fetchall()
id = 1
x = 0
count = 0
z = 0
checker = 6
resid = 0
for (a, b, c ,d, e) in answer:
    if (a == id):
        x = x + e
        count += 1
    else:
        z = x/count
        if (z < checker):
            checker = z
            resid = id
        x = 0
        count = 0
        id = a
        x = x + e
        count += 1
z = x/count
if (z < checker):
    checker = z
    resid = id 
for (a, b, c ,d , e) in answer:
    if(a == resid):
        print(str(b), str(c), str(d), str(e))

cursor.close()
cnx.close()