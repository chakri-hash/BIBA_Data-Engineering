create database steel;
use steel;

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


select name from employees union select name from customer;

select name from employees union all select name from customer;

select name,city from employees intersect select name,city from customer;

select id from employees MINUS select id from customer;


select id from employees EXCEPT select id from customer;
