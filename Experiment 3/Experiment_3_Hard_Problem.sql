create table TableA (
 empid int PRIMARY key, 
empname varchar(20), 
salary int
 )
insert into TableA values (1,'AA',1000), (2, 'BB',300); 
create table TableB (
 empid int PRIMARY key, 
empname varchar(20), 
salary int
 )
 insert into TableB values (2, 'BB',400), (3,'CC',100);
 select empid, min(empname) as empname, min(salary) as min_salary from 
(select * FROM
 TableA 
UNION
 select * from 
TableB) as UNI 
group by empid;
