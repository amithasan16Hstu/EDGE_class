CREATE TABLE Course_info(
course_id int,
course_name varchar(20),
credit double,
course_teacher varchar(20),
Assign_room varchar(20)
)
select * from Course_info;
show databases;
use class2_practice;
show tables;


INSERT INTO Course_info(course_id,course_name,credit,course_teacher,Assign_room)
VALUES(101,"Fundamental Computer",2.00,"Adiba Mahajabin Nitu","201"),
(103,"Discrete mathematics",3.00,"Rashedul Islam","202"),
(155,"DLD",3.00,"Abdullah Al Mamun","210"),
(201,"OOP",3.00,"Rashedul Islam","201"),
(303,"Database",3.00,"Sumya Akter","235"),
(307,"Software Engineering",3.00,"Pangkaj Bhoumik","236");
Select * from course_info;
select *from course_info
where course_id=101;

select * from course_info
where credit=3;

select * from course_info
where course_teacher='Rashedul Islam';

select * from course_info
order by course_id;
-- By Default asc order
select * from course_info
order by course_id desc;

select * from course_info
order by course_teacher;

select *from course_info
where course_name="DLD" and Assign_room=210;



