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

drop Table teachers;

CREATE Table teachers (
    TeacherID INTEGER PRIMARY key,
    Name VARCHAR(50),
    Dataofbirth DATE,
    Email VARCHAR(50) NOT NULL,
    Passcode VARCHAR(300) NOT NULL,
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
);

CREATE TABLE Grades(
    GradeID INTEGER PRIMARY KEY,
    ExamID INTEGER,
    student_ID INTEGER,
    Grade SET('A','B','C','E','O'),
    marks INTEGER,
    Foreign Key (ExamID) REFERENCES Exam(ExamID),
    Foreign Key (student_ID) REFERENCES student(student_ID)
);


-- CREATE TABLE Enrollments(
--     EnrollmentID INTEGER PRIMARY KEY,
--     studentID INTEGER,
--     classID INTEGER,
--     EnrollmentData  
-- )


SHOW TABLES;

DESCRIBE TABLE teachers;

INSERT INTO teachers (TeacherID, first_name, last_name, Dataofbirth, Email, Passcode, gender, SubjectTaught) 
VALUES (1232, 'mari', 'selvam', '2023-11-20', 'mari@gmail.com', 'u3rfh3893ffr9f', 'M', 'science');
