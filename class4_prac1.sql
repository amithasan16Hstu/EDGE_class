CREATE TABLE student_info(
std_id int,
std_name varchar(20),
std_department varchar(20),
cgpa double,
grade varchar(10)
);

INSERT INTO student_info(std_id,std_name,std_department,cgpa,grade)
VALUES(1,'Amit','CSE',3.865,'A'),(2,'Razzak','EEE',3.423,'A-'),(3,'Sayem','EEE',3.324,'B+'),(4,'Lipa','ECE',3.645,'A'),(5,'Utal','CSE',2.567,'B-');
-- Select * from student_info;

DELETE FROM student_info 
WHERE std_name='Utal';

select *from student_info
LIMIT 3;

select * from student_info
WHERE std_name='Razzak'
LIMIT 2;

select MAX(cgpa) AS First from student_info;

select MIN(cgpa) AS Last from student_info;

select AVG(cgpa) AS AVERAGE from student_info;

select count(std_name) from student_info;

select count(distinct std_name) from student_info;

select sum(cgpa) from student_info;

Select count(cgpa) AS CGPA, std_id from student_info 
where cgpa>3
group by std_id;

select MIN(cgpa) AS CGPA, std_id
from student_info
group by std_id;