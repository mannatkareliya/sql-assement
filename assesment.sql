create database worker;
use worker;
create table workers_detail(
worker_id int,
first_name varchar(100),
last_name varchar(100),
salary int,
joining_date date,
department varchar(50));
insert into workers_detail values
(1,"Monika","Arora",100000,"2014-2-20","HR"),
(2,"Niharika","Verma",8000,"2014-11-06","Admin"),
(3,"Vishal","Singhal",300000,"2014-2-20","HR"),
(4,"Amitabh","Singh",500000,"2014-2-20","Admin"),
(5,"Vivek","Bhati",500000,"2014-11-06","Admin"),
(6,"Vipul","Diwan",200000,"2014-11-06","Account"),
(7,"Satish","Kumar",75000,"2014-01-20","Account"),
(8,"Geetika","Chuahan",90000,"2014-04-11","Admin");
select * from workers_detail;

/* 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
Ascending and DEPARTMENT Descending */
select * from workers_detail
order by first_name asc,department desc;


/*2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
from the Worker table. */
select * from workers_detail
where first_name in ("Vipul","Satish");


/*3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
contains six alphabets. */
select first_name
from Workers_detail
where LENGTH(first_Name) = 6 and first_Name LIKE '%h';


/*4. Write an SQL query to print details of the Workers whose SALARY lies between 1*/
select *
from Workers_detail
where salary between 100000 and 200000;


/*5.Write an SQL query to fetch duplicate records having matching data in some fields of a table*/
select salary, joining_date, department, COUNT(*)
from workers_detail
group by salary,joining_date, department
having COUNT(*) ;


/*6.Write an SQL query to show the top 6 records of a table.*/
select *
from workers_detail
order by salary desc
limit 6;

/*7.Write an SQL query to fetch the departments that have less than five people in them. */
select worker_id,department
from workers_detail
where worker_id <5;


/*8.Write an SQL query to show all departments along with the number of people in there. */
select department,worker_id,salary
from workers_detail
where salary>100000;

/*9.Write an SQL query to print the name of employees having the highest salary in each
department.*/
select first_name,last_name,salary
from workers_detail
order by salary desc;
