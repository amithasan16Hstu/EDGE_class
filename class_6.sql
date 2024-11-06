create table OrderDetails(
orderdetailsid int,
orderid int,
productid int,
quantity int
);
insert into orderdetails(orderdetailsid,orderid,productid,quantity)
values(1,10248,11,12),(2,10248,11,10),(3,10249,55,19),(4,10249,2,2),(5,10244,33,3),(6,10244,55,10),(7,10231,40,20);
select *from orderdetails;
select sum(quantity) from orderdetails;
 
select sum(quantity) from orderdetails where productid=11;
 
 select sum(quantity) as total
 from orderdetails;
 
 select orderid,sum(quantity) as total_quantity
 from orderdetails
 group by orderid;
 
 select sum(quantity*10)
 from orderdetails;
 
 select avg(quantity) as avg_quantity
 from orderdetails;
 
  select * from orderdetails
  where quantity> (select avg(quantity) from OrderDetails);
 