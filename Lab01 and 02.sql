## Creating Databases and then using it

create database uni;
show databases;
use uni;
select database();

# creating Tables 

create table student (
eid INT PRIMARY KEY,
name varchar(50) not null,
age INT,
course varchar(20),
Grade varchar(1),
City varchar(20) not null,
Department varchar(20)
);

#Checking the table structure 

desc student;

create table teacher (
id INT PRIMARY KEY,
name varchar(50) not null,
subject varchar(20),
Salary INT,
City varchar(20) not null,
);

create table department ( 
id INT PRIMARY KEY,
NAME varchar(30),
TELEPHONE INT,
LOCATION varchar(100)
);
create table course ( 
ID INT PRIMARY KEY,
NAME varchar(20),
INSTRUCTOR varchar(20),
START_MONTH varchar(20),
END_MONTH varchar(20),
CREDIT_HOUR INT 
);

# To see all the tables in a database 
show tables;


show databases;
use uni;

# Checking the content in a table
select * from student;
select * from teacher;

# Inserting Values in teacher's table 
insert into teacher values(1,"Aliza","Database",20000,"Karachi","BSCS");
select * from teacher;

# Further insering values in a teacher's table 
insert into teacher (id,name,subject,Salary,City,Department) 
values
 (2,"Subreena","Software Engineering",40000,"Karachi","BSCS"),
 (3,"Maleeha","DLD",10000,"Karachi", "BSCS"),
 (5,"Shah Salman","TECHNICAL WRITTING",100000,"Karachi","BBA"),
 (6,"Salam Shah","COAL",100000,"Karachi","BBA");
 
insert into teacher values(2,"Subreena","Software Engineering",40000,"Karachi","BSCS");
insert into teacher values(3,"Maleeha","DLD",10000,"Karachi", "BSCS");
insert into teacher values(4,"Salam Shah","COAL",100000,"Karachi");
insert into teacher values(5,"Shah Salman","TECHNICAL WRITTING",100000,"Karachi","BBA");
insert into teacher values(6,"Salam Shah","COAL",100000,"Karachi","BBA");

# Updating salary field of teacher's table 

update teacher set Salary = 80000 WHERE Department = "BBA";

SET SQL_SAFE_UPDATES = 0;

insert into student values (1,"Saad",17,"English","A","Karachi","BBA");

select name,grade,eid from student;
delete from student where age < 18;
select * from student where Department = "BSCS";

select * from teacher;
DELETE FROM teacher WHERE Department IS NULL;


insert into student(eid,name,age,course,Grade,City,Department) 
values 
(1,"Hamiz",20,"Database Systems","A","Karachi","BSCS"),
(2,"Husban",20,"Database Systems","A","Karachi","BSCS"),
(3,"Uzair",20,"Database Systems","A","Karachi","BSCS"),
(4,"Ishtiaq",20,"Database Systems","A","Karachi","BSCS");
select * from student;
select name,eid,Grade from student;
insert into student values (6,"Usman",17,"Database Systems","A","Karachi","BSCS");
select * from student where Department = "BSCS";
delete from student where Age < 18;
select name,Salary, 12*Salary+100 from teacher;