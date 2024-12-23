-- Question 01 ()

select student.eid,student.name,teach.name,teach.Department from student inner join teach on student.eid = teach.id;
select student.eid,student.name,teach.name,teach.Department from student left join teach on student.eid = teach.id;
select student.eid,student.name,teach.name,teach.Department from student right join teach on student.eid = teach.id;
select * from teach natural join student;
select * from teach cross join student;


desc student;