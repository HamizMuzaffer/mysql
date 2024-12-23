-- Question 01 () 

create view uni as select name,Department, pay from teach;

-- Question 02 ()

drop view uni;

-- Question 03 ()

create view temp as select student.name,student.course,teach.pay from student inner join teach on   student.eid = teach.id;

-- Question 04 ()

create view temp as select Department,count(*) as Teacher_Count from teach group by Department ;


