#Lab 04 

show databases;

use uni;

# Question 01 

select * from student where City LIKE "%i";

# Question 02 

select Department from teacher where length(Department) = 3;

# Question 03 

select name,Salary from teacher order by Salary;

# Question 04

select name from teacher where name Like "%a%";

# Question 05 
select name from teacher where Department in ("BBA","ADP");

# Question 06 
select name from teacher where name like "__a%";

# Question 07

select * from teacher where Department = "BSCS";

# Question 08 

select name,Department from teacher where Salary between 20000 and 30000;

# Question 09 

SELECT *
FROM course
WHERE FIELD(start_month, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December')
BETWEEN 1 AND 6;

# Question 11 

select * from teacher where Salary > 60000;

# Question 12 

update teacher set Salary = Salary+20000 where Department = "BBA";

