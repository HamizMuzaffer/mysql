## Lab 02 

## Creating Databases and then using it

create database uni;

## Checking all the databases that exist in my server 

show databases;

## using the database I created 

use uni;

# checking which database I am using currently 

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

## Lab 03 

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
 

# Updating salary field of teacher's table 

update teacher set Salary = 80000 WHERE Department = "BBA";

SET SQL_SAFE_UPDATES = 0;

insert into student values (1,"Saad",17,"English","A","Karachi","BBA");

## Selecting particular fields from a table through select commands 

select name,grade,eid from student;

## Deleting from table 

delete from student where age < 18;

## finding all students from BSCS department 

select * from student where Department = "BSCS";


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

## Performing basic arithmetic operations 

select name,Salary, 12*Salary+100 from teacher;