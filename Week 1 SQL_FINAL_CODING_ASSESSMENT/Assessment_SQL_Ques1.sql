create database question1;

use question1;

/*-----1.Querying Data by Using Joins and Subqueries-----*/


create table orderex(ord_id int, cust_id int, name varchar(20) );

insert into orderex(ord_id, cust_id, name)values(1,101,'T.V');
insert into orderex(ord_id, cust_id, name)values(2,102,'Stove');
insert into orderex(ord_id, cust_id, name)values(3,103,'Cooker');
insert into orderex(ord_id, cust_id, name)values(4,104,'Sofa');
insert into orderex(ord_id, cust_id, name)values(5,105,'Mobile');
insert into orderex(ord_id, cust_id, name)values(6,106,'Table');
insert into orderex(ord_id, cust_id, name)values(7,107,'Camera');
insert into orderex(ord_id, cust_id, name)values(8,108,'Spectacles');
insert into orderex(ord_id, cust_id, name)values(9,109,'Trimmer');
insert into orderex(ord_id, cust_id, name)values(10,110,'Guitar');



create table customerex(cust_id int, cust_name varchar(20), city varchar(20));

insert into customerex(cust_id,cust_name,city)values(101,'Aswin','Pune');
insert into customerex(cust_id,cust_name,city)values(103,'Sohan','Mumbai');
insert into customerex(cust_id,cust_name,city)values(105,'Arya','Delhi');
insert into customerex(cust_id,cust_name,city)values(106,'Kamal','Punjab');
insert into customerex(cust_id,cust_name,city)values(107,'Tarak','Hyderabad');
insert into customerex(cust_id,cust_name,city)values(108,'Murali','Vizag');
insert into customerex(cust_id,cust_name,city)values(109,'Krishna','Vijayawada');
insert into customerex(cust_id,cust_name,city)values(110,'Ram','Guntur');
insert into customerex(cust_id,cust_name,city)values(115,'Somesh','Hyderabad');
insert into customerex(cust_id,cust_name,city)values(117,'Ramarao','Hyderabad');


/*JOINS*/

select orderex.ord_id, orderex.cust_id, orderex.name, customerex.cust_name from orderex inner join customerex on orderex.cust_id = customerex.cust_id;
select orderex.ord_id, orderex.cust_id, orderex.name, customerex.cust_name from orderex left join customerex on orderex.cust_id = customerex.cust_id;
select orderex.ord_id, orderex.cust_id, orderex.name, customerex.cust_name from orderex right join customerex on orderex.cust_id = customerex.cust_id;
select orderex.ord_id, orderex.cust_id, orderex.name, customerex.cust_name from orderex full join customerex on orderex.cust_id = customerex.cust_id;

/*Sub queries*/
select cust_id, cust_name, city from customerex where city IN(select city from customerex where city = 'Hyderabad');

select cust_id, cust_name, city from customerex where cust_id IN(select cust_id from customerex where cust_id<=106);

select cust_id, cust_name, city from customerex where cust_id = ANY(SELECT cust_id from customerex where cust_id >= 109);

select cust_id, cust_name, city from customerex where cust_id NOT IN(select cust_id from orderex);