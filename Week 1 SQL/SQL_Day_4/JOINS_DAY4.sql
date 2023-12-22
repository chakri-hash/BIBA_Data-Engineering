create database haptic;

use haptic;

create table orders(order_id int, customer_id int, name varchar(20) );

insert into orders(order_id, customer_id, name)values(1,101,'T.V');
insert into orders(order_id, customer_id, name)values(2,102,'Stove');
insert into orders(order_id, customer_id, name)values(3,103,'Cooker');
insert into orders(order_id, customer_id, name)values(4,104,'Sofa');
insert into orders(order_id, customer_id, name)values(5,105,'Mobile');


create table customers(customer_id int, customer_name varchar(20), city varchar(20));

insert into customers(customer_id,customer_name,city)values(101,'Aswin','Pune');
insert into customers(customer_id,customer_name,city)values(103,'Sohan','Mumbai');
insert into customers(customer_id,customer_name,city)values(105,'Arya','Delhi');
insert into customers(customer_id,customer_name,city)values(106,'Kamal','Punjab');
insert into customers(customer_id,customer_name,city)values(107,'Tarak','Hyderabad');


select orders.order_id, orders.customer_id, orders.name, customers.customer_name from orders inner join customers on orders.customer_id = customers.customer_id;
select orders.order_id, orders.customer_id, orders.name, customers.customer_name from orders left join customers on orders.customer_id = customers.customer_id;
select orders.order_id, orders.customer_id, orders.name, customers.customer_name from orders right join customers on orders.customer_id = customers.customer_id;
select orders.order_id, orders.customer_id, orders.name, customers.customer_name from orders full join customers on orders.customer_id = customers.customer_id;




select ascii('AB');
SELECT char(66);
select len('WIDESKILL');
SELECT lower ( 'JOHN');
SELECT REPLACE ( 'countrY', 'y', 'ies' );
SELECT reverse ( 'PATH');
SELECT str (134.56,6, 2);/*number to get converted, length of number, no.of decimal places*/
SELECT upper ( 'Peter');

/*date*/
SELECT dateadd (mm, 2, '2010-02-03');
SELECT datediff ( year, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'));
SELECT datepart (mm, '2008-01-01');
SELECT day ( '2010-03-21');
SELECT month ('2007-04-03');
SELECT year ( '2011-04-17');


/*math*/
select abs(-789);
select sin(0.5);
select cos(1.5);
select tan(1.5);
select cot(1.5);
select ceiling(14.5);
select floor(98.78);
select exp(49.98);
select log(100);


/*system function*/
select HOST_ID() AS 'HOSTID';
SELECT HOST_NAME() as 'HOSTNAME';
select suser_id() as suserid;
select user_id() as userid;
select suser_id('ss') as suserid;
select user_id('ss') as userid;
select db_name() as DatabaseName;

/*aggreagate function*/
select 'AverageCustomerId' = avg(customer_id) from customers;
select 'uniqueRate'=count(distinct customer_id) from customers;
select 'minimum'=min(customer_id) from customers;
select 'miximum'=max(customer_id) from customers;
select 'Sum'=sum(customer_id) from customers;

/*rank*/

create table students(id int, name varchar(20), age int, marks int, sports varchar(20) );

insert into students(id, name, age, marks, sports)values(1,'asd',18,89,'cricket');
insert into students(id, name, age, marks, sports)values(2,'sdf',17,78,'tennis');
insert into students(id, name, age, marks, sports)values(3,'dfg',18,90,'carroms');
insert into students(id, name, age, marks, sports)values(4,'fgh',17,90,'throwball');
insert into students(id, name, age, marks, sports)values(5,'ghj',19,56,'chess');
insert into students(id, name, age, marks, sports)values(6,'hjk',18,76,'basketball');
insert into students(id, name, age, marks, sports)values(7,'jkl',17,45,'kabaddi');
insert into students(id, name, age, marks, sports)values(8,'qwe',18,90,'baseball');
insert into students(id, name, age, marks, sports)values(9,'wer',18,65,'khokho');
insert into students(id, name, age, marks, sports)values(10,'rty',17,97,'volleyball');

select name,marks,rank() over(order by marks desc) from students;
select name,marks,row_number() over(order by marks desc) from students;
select name,marks,dense_rank() over(order by marks desc) from students;
select name,marks,ntile(3) over(order by marks desc) from students;


