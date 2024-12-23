-- Question 02 () 

select name from teach where pay > 70000;

-- Question 03 () 

select name from teach where Department = "BSCS" and name like "S%";

-- Question 04 () 

update teach set pay= pay+10000 where department = "BBA";

-- Question 05 () 

select name from teach where Department = "BBA" and pay between 30000 and 40000;

-- Question 06 () 

select name from teach where City like "K%" and  length(City) = 9;

-- Question 07 ()