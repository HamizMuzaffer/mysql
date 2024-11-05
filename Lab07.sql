 -- Lab 07 -- 

-- Question 01 ()

delete from teacher where name like "m%";

-- Question 02 ()

SELECT id, name, subject FROM teacher WHERE Department = (SELECT department FROM uniData WHERE department = 'BBA' LIMIT 1 );
select name from student where eid = (select id from teacher where id = 1  limit 1);
select grade from studentGrade where student_name = (select name from student where name = "Hamiz");

-- Question 03 ()

delete from teacher where subject = "PF";

-- Question 04 ()

delete from student where eid = (select student_id from studentGrade where student_id = 3);