CREATE TABLE class(
class_number int,
class_name varchar(20),
class_code int,
class_loc varchar(20)
);
INSERT INTO class(class_number,class_name,class_code,class_loc)
VALUES(1,'Database',21,'HSTU'),(2,'Python',23,'HSTU'),(3,'MS Word',27,'Wazed');
INSERT INTO class(class_number,class_name,class_code,class_loc)
VALUES(4,'DLD',31,'HSTU'),(5,'C++',19,'HSTU'),(6,'Flutter',33,'Wazed');
select* from class;

select * from class
where class_name='Database' and class_loc='HSTU';

select * from class
where class_name like 'M%';

select * from class
where class_code <= 30;