## Lab 06 
-- Question 01 ()

select upper(studentName),lower(department),length(grade) from uniData;

-- Question 02 ()
select adddate(admissionDate,04) from admissionInfo;

-- Question 03 ()

select replace(studentName,"a","x") from admissionInfo;

-- Question 04 ()

select reverse(studentName) as reverseName from admissionInfo where studentName like ("%a");

-- Question 05 () 

select
date(admissionDate),adddate(admissionDate,01),curtime(),curdate(),subdate(admissionDate,01),dayname(admissionDate),dayofmonth(admissionDate),monthname(admissionDate),
weekofyear(admissionDate) from admissionInfo;
-- Question 06 ()

select count(age) from uniData;
select max(age) from uniData;
select min(age) from uniData;
select abs(age) from uniData;
select sqrt(age) from uniData;

-- Question 07 ()

create table studentGrade(
student_name varchar(20),
student_id int primary key,
grade DECIMAL(5, 4)
);

insert into studentGrade(student_name,student_id,grade) values 
("Hamiz",1,3.6541),
("Husban",2,2.2342),
("Umer",3,3.4133);

select student_name, truncate(grade,2) from studentGrade;
select student_name, round(grade,2) from studentGrade;

