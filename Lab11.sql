-- Question 03 () 

select Department, SUM(pay) as Total_Salary from teach group by Department;
 
-- Question 04 () 
 
select Department, min(pay) as Minimum_Salary from teach group by Department;

-- Question 04 () 

select Department, avg(pay) as Average_Salary from teach where Department = "BBA" group by Department;
