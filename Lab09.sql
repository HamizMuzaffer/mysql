-- Lab 09 -- 

-- Question 01 () 

rename table teacher to teach;

-- Question 02 () 

alter table teach add status varchar(30);

-- Question 03 () 

alter table teach change column status feedback varchar(40);

-- Question 04 () 

ALTER TABLE teach MODIFY salary int NOT NULL CHECK (salary > 2500);

-- Question 05 ()

ALTER TABLE teach DROP COLUMN feedback; 


-- Question 06 ()

ALTER TABLE teach rename COLUMN salary to pay;


desc teach;
select * from teach;


ALTER TABLE teach
DROP CONSTRAINT teach_chk_1;
