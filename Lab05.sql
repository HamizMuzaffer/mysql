## Lab05 

show databases;
use uni;  


-- Question 01 (Insert appropriate data in table)

create table uniData (
studentId INT PRIMARY KEY,
studentName VARCHAR(30) NOT NULL,
age INT NOT NULL,
department ENUM("BSCS","BBA","PHARMD","DPT","BSSE","BSEE"),
course VARCHAR(30),
grade ENUM("A","B","C","D","F")
);


INSERT INTO uniData (studentId,studentName,age,department,course,grade) VALUES
(2,"Uzair",22,"BSCS","DB","B"),
(3,"Ishtiaq",21,"BSCS","DB","B"),
(4,"Husban",24,"BSCS","DB","A"),
(5,"Shahzad",26,"BBA","English","C"),
(6,"Umer",17,"BSCS","DSA","A"),
(7,"Amna",20,"PHARMD","Chemistry","B"),
(8,"Fiza",20,"DPT","Medicine","B"),
(9,"Manahil",20,"BBA","Marketing","A"),
(10,"Saad",20,"BSCS","DSA","B");


select * from uniData;

-- Question 02 (Select student name, dept of those enrolled in DSA or DB.)

select studentName,department from uniData where course in ("DSA","DB");

-- Question 03 (Display each name of the student as “st_Name” and Course as “Subject”);

select studentName as st_name,course as subject from uniData;

-- Question 04 (List the names of student not belonging to department BSCS.)

select studentName from uniData where Department != "BSCS";

-- Question 05 (List all the names of student belonging to BSCS department under age 25.)

select studentName from uniData where Department = "BSCS" AND age < 25 ;

-- Question 06 (List different departments in the table.)

select distinct department from uniData;

-- Question 07 (select all those students having grade B)

select studentName from uniData where grade = "B";

-- Question 08 (Select all information from student, sorting by student name.)

select * from uniData order by studentName;

-- Question 09 (write down the quires using NOT IN, NOT like, NOT Between conditions.)

select studentName,department from uniData where department not in("BSCS");
select department from uniData where department not like ("%S");
select studentName from uniData where studentId not between 1 and 5;

-- Question 10 (Display the names and grade of all Students in reverse order.)

select studentName,grade from uniData order by grade desc;


