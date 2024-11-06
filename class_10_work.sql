-- Q1
create table gpa(
serial_num int,
student_id int,
course_title varchar(20),
cgpa double
);
alter table gpa
add primary key(student_id);

-- Q2
alter table gpa
add unique(serial_num);

-- Q3
alter table gpa
drop primary key;

-- Q4
insert into gpa(serial_num,student_id, course_title,cgpa)
values(1,2102043,"DBMS",4.00),(2,2102044,"DLD",3.00),(3,2102045,"Java",3.50),(4,2102046,"Python",3.75),
(5,2102050,"ML",2.75);
-- Wrong Answer
insert into gpa(serial_num,student_id, course_title,cgpa)
values(1,2102051,"Algorithm",4.00);
