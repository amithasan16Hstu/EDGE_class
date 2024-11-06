CREATE TABLE class(
class_number int,
class_name varchar(30),
class_code varchar(20),
class_loc varchar(20)
);

INSERT INTO class(class_number,class_name,class_code,class_loc)
VALUES(1,"Database","21","HSTU"),(2,"Python","23","HSTU"),(3,"MS Word","27","Wazed");
Select * from class;


-- where class_name is Python
select * from class
where class_name='Python';

-- descending order by class_code
select * from class
order by class_code desc;

-- class_number=3 and class_loc= Wazed
select * from class
where class_number=3 and class_loc="Wazed";

INSERT INTO class(class_number,class_name,class_code,class_loc)
VALUES(4,"DLD","29","WAZED"),(5,"Botany","31","Agriculture"),(6,"DVM","33","DVM");

select * from class
where class_name="DLD" and class_loc="Wazed";

select *from class
where class_number=1 || class_name="Python";

select * from class
where class_number>2;

select * from class
where NOT class_name="Botany";

select * from class
where class_name NOT LIKE 'D%';

select * from class
where class_name NOT IN("Botany","DVM");

select * from class
where class_number<3;

select * from class
where class_name NOT LIKE '%e';

select * from class
where class_name NOT LIKE '%y%';

select * from class
where class_number=2 and class_loc="HSTU" or class_loc="Wazed" or class_code="33";

