create database class5;

use class5;

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





/*EQUI JOIN*/
select orders.order_id, orders.customer_id, orders.name, customers.customer_name from orders,customers where orders.customer_id = customers.customer_id;


/*EQUI JOIN OTHER WAY*/
select orders.order_id, orders.customer_id, orders.name, customers.customer_name from orders JOIN customers ON orders.customer_id = customers.customer_id;


/*NON EQUI JOIN*/
select orders.order_id, orders.customer_id, orders.name, customers.customer_name from orders,customers where orders.customer_id < customers.customer_id;


/*IN, NOT IN*/
select * from orders where customer_id IN(select customer_id from customers where customer_id<=104 );
select * from orders where customer_id NOT IN(select customer_id from customers where customer_id<=104 );


/*EXISTS*/
CREATE TABLE customerex(cust_id int,  name varchar(35), occupation varchar(25), age int);  

CREATE TABLE orderex ( order_id int, cust_id int, prod_name varchar(45), order_date date);  

INSERT INTO customerex(cust_id, name, occupation, age)VALUES (101, 'Peter', 'Engineer', 32);
INSERT INTO customerex(cust_id, name, occupation, age)VALUES (102, 'Joseph', 'Developer', 30);
INSERT INTO customerex(cust_id, name, occupation, age)VALUES (103, 'John', 'Leader', 28);
INSERT INTO customerex(cust_id, name, occupation, age)VALUES (104, 'Stephen', 'Scientist', 45);
INSERT INTO customerex(cust_id, name, occupation, age)VALUES (105, 'Suzi', 'Carpenter', 26);
INSERT INTO customerex(cust_id, name, occupation, age)VALUES (106, 'Bob', 'Actor', 25);
INSERT INTO customerex(cust_id, name, occupation, age)VALUES (107, 'David', 'Choreographer', 25);




INSERT INTO orderex(order_id, cust_id, prod_name, order_date)   
VALUES (1, '101', 'Laptop', '2020-01-10'),  
(2, '103', 'Desktop', '2020-02-12'),  
(3, '106', 'Iphone', '2020-02-15'),  
(4, '104', 'Mobile', '2020-03-05'),  
(5, '102', 'TV', '2020-03-20');  

/*exist*/
select name, occupation from customerex where exists(select * from orderex where customerex.cust_id=orderex.cust_id);



SELECT * from customerex;
select * from orderex;


/*ALL ANY SOME*/

select name from customerex where cust_id = ANY(select cust_id from customerex where cust_id>2);
select name from customerex where cust_id = ALL(select cust_id from customerex where cust_id>2);
select name from customerex where cust_id = SOME(select cust_id from customerex where cust_id>2);




/*GROUP BY   HAVING   ORDER BY*/

CREATE TABLE employee(emp_id INTEGER, emp_fullname varchar(20) NOT NULL, emp_salary INTEGER, city varchar(20));

INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(1,'AkshayKumar',10000,'NewYork');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(2,'KarthikKalyan',20000,'Vizag');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(3,'RamCharan',30000,'Paris');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(4,'DeepakNayar',40000,'Mumbai');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(5,'ShahRukhKhan',50000,'Mumbai');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(6,'GopalRao',60000,'Vizag');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(7,'KamalHassan',70000,'Mumbai');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(8,'TonyStark',80000,'Mumbai');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(9,'ViratKohli',90000,'Delhi');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(10,'Pranav',20000,'Vizag');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(11,'Jackie',10000,'Nagole');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(12,'Bruce',76000,'Haryana');
INSERT INTO employee(emp_id, emp_fullname, emp_salary, city)VALUES(13,'Robert',88000,'Patna');


select * from employee;



select count(emp_id) as 'NO.of Employees', city from employee GROUP BY city having count(emp_id)>=2 order by count(emp_id) DESC;



/*NOT EXIST*/

select name, occupation from customerex where not exists(select * from orderex where customerex.cust_id=orderex.cust_id);




/*CORRELATED SUB QUERY*/

/*A correlated subquery is a subquery that contains a reference to a table that also appears in the outer query*/

create table t1 (id int, name varchar(20), city varchar(20));
create table t2 (id int, name varchar(20), city varchar(20));

insert into t1(id,name,city)values(1,'ranbir','mumbai');
insert into t1(id,name,city)values(2,'prem','chennai');
insert into t1(id,name,city)values(3,'kohli','hyderabad');
insert into t1(id,name,city)values(4,'arjun','bhopal');
insert into t1(id,name,city)values(5,'sameer','delhi');


insert into t2(id,name,city)values(5,'ram','deharadun');
insert into t2(id,name,city)values(4,'raj','banglore');
insert into t2(id,name,city)values(2,'lakshman','goa');
insert into t2(id,name,city)values(6,'dheeraj','nagole');
insert into t2(id,name,city)values(8,'raghav','raipur');

select DISTINCT id from t1 where id= ANY(select id from t2 where t1.id=t2.id);


/*NESTED SUB QUERY*/
select * from t1 where id=ANY(select id from t2);


/*UNION, UNION ALL, INTERSECT, EXCEPT*/
create table employees (id int, name varchar(20), salary int, city varchar(20));

create table customerss (id int, name varchar(20), city varchar(20),salary int);

insert into employees (id,name,salary,city)values(1,'akarsh',20000,'goa');
insert into employees (id,name,salary,city)values(2,'bhagavan',50000,'delhi');
insert into employees (id,name,salary,city)values(3,'chayan',70000,'mumbai');
insert into employees (id,name,salary,city)values(4,'dileep',90000,'hyderabad');

insert into customerss (id,name,city,salary)values(1,'pradeep','goa',40000);
insert into customerss (id,name,city,salary)values(2,'gahan','chennai',67890);
insert into customerss (id,name,city,salary)values(3,'hafiz','mysore',12345);
insert into customerss (id,name,city,salary)values(4,'tom','vizag',45678);
insert into customerss (id,name,city,salary)values(5,'jack','bhopal',67543);
insert into customerss (id,name,city,salary)values(6,'dileep','hyderabad',89321);


select name from employees union select name from customerss;

select name from employees union all select name from customerss;

select name,city from employees intersect select name,city from customerss;



select id from employees EXCEPT select id from customerss;
