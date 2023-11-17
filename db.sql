-- Active: 1697280133423@@127.0.0.1@3306@school
SHOW DATABASES;

use school;

show TABLES;


create TABLE student(
    student_ID INTEGER PRIMARY KEY ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    Dataofbirth DATE,
    gender SET('M','F')
);



CREATE Table teachers (
    TeacherID INTEGER PRIMARY key,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    Dataofbirth DATE,
    gender SET('M','F'),
    SubjectTaught VARCHAR(30)
);

CREATE Table classes (
    classID INTEGER PRIMARY KEY ,
    className VARCHAR(10)
);

CREATE TABLE Subjects (
    subjectID INTEGER PRIMARY KEY,
    subjectName VARCHAR(10)
);

CREATE TABLE attendance (
    attendanceID INTEGER PRIMARY KEY,
    student_ID INTEGER,
    classID INTEGER,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_ID) REFERENCES student(student_ID),
    FOREIGN KEY (classID) REFERENCES classes(classID)
);


SELECT * from student;


CREATE TABLE Exam(
    ExamID INTEGER PRIMARY KEY,
    student_ID INTEGER,
    classID INTEGER,
    subjectID INTEGER,
    ExamDate DATE
);
-- DROP TABLE student;


CREATE Table users(
    user_ID INTEGER PRIMARY KEY,
    UserName VARCHAR(100),
    Password VARCHAR(100),
    userType set('Admin','Teacher','Student')
)

SHOW TABLes;