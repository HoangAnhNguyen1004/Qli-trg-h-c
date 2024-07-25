create database ql_truonghoc;
use ql_truonghoc;

create table Class (
class_ID int primary key,
class_name varchar(255),
grade int
);

create table Teacher (
teacher_ID int primary key,
teacher_name varchar(255),
address varchar(255),
phone_number varchar(255)
);

create table Student (
student_ID int primary key,
First_name varchar(255),
Last_name varchar (255),
email varchar (255),
class_ID int,
FOREIGN KEY (class_ID) REFERENCES Class(class_ID)
);

CREATE TABLE Subjects (
    subject_ID INT PRIMARY KEY,
    subject_name VARCHAR(255),
    teacher_ID INT,
    FOREIGN KEY (teacher_ID) REFERENCES Teacher(teacher_ID)
);

create table Points (
point_ID int primary key,
points float,
semester int,
student_ID INT,
point_ID INT,
FOREIGN KEY (student_ID) REFERENCES Student(student_ID),
FOREIGN KEY (point_ID) REFERENCES Points(point_ID)
);

create table HS_GV (
hs_gv int primary key,
student_ID INT,
teacher_ID INT,
FOREIGN KEY (student_ID) REFERENCES Student(student_ID),
FOREIGN KEY (teacher_ID) REFERENCES Teacher(teacher_ID)
);

create table HS_MH (
hs_mh int primary key,
subject_ID INT,
student_ int,
FOREIGN KEY (subject_ID) REFERENCES Subjects(subject_ID),
FOREIGN KEY (student_ID) REFERENCES Student(student_ID)
)

 







