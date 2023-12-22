create database logic;

use logic;

create table customers(customer_id int, customer_name varchar(20), city varchar(20));

insert into customers(customer_id,customer_name,city)values(101,'Aswin','Pune');
insert into customers(customer_id,customer_name,city)values(103,'Sohan','Mumbai');
insert into customers(customer_id,customer_name,city)values(105,'Arya','Delhi');
insert into customers(customer_id,customer_name,city)values(106,'Kamal','Punjab');
insert into customers(customer_id,customer_name,city)values(107,'Tarak','Hyderabad');
insert into customers(customer_id,customer_name,city)values(108,'Aswin','Hyderabad');


select * from customers where city='Pune' AND customer_name='Aswin';

select * from customers where city='Pune' OR customer_name='Tarak';


select * from customers where city in ('Pune','Mumbai');

select * from customers where city NOT LIKE 'p%';

select * from customers where city LIKE 'p%';

select * from customers where customer_id between 103 AND 107;

select * from customers where customer_id = ALL(SELECT customer_id from customers where city = 'Pune' );

select DISTINCT* from customers where customer_id = ANY(SELECT customer_id from customers where city = 'Hyderabad' );


