-- Lab 08 -- 

-- Question 01 () 

update course set credit_hour = 3 where credit_hour = 2;

-- Question 03 ()

update course set name = (select name from (select * from course) as x where id = 4 ) where id = 5;

-- Question 05 ()

-- (i) -- 
update teacher set Salary = Salary + 20000 where Salary < 90000; 
-- (ii) -- 
update teacher set Department = "BBA", Salary = Salary * 0.85 where id = 4;
-- (iii) -- 
update teacher set Salary = Salary * 1.1 where id = 7;
-- (iv) -- 
update teacher set subject = (select subject from (select * from teacher where id = 2) as x )  where id = 6;

