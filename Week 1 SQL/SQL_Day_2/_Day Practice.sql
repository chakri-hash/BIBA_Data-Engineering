create database Customers;

Use Customers;

CREATE TABLE customer(customer_id INTEGER, customer_name varchar(20), contact_name varchar(20), city varchar(20));

INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(1,'AkshayKumar','Akshay','NewYork');
INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(2,'KarthikKalyan','Karthik','Vizag');
INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(3,'RamCharan','Charan','Paris');
INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(4,'DeepakNayar','Deepak','Mumbai');
INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(6,'ShahRukhKhan','ShahRukh','Mumbai');
INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(7,'GopalRao','Gopal','Vizag');
INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(8,'KamalHassan','Kamal','Mumbai');
INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(9,'TonyStark','Tony','Mumbai');
INSERT INTO customer (customer_id, customer_name, contact_name, city)VALUES(10,'ViratKohli','Virat','Delhi');


select * from customer;

select DISTINCT city from customer;

Select city from customer;

select  count(customer_id),city from customer GROUP BY city having count(customer_id)>=2;

select count(customer_id) as count,city from customer GROUP BY city having count(customer_id)>=2 ORDER BY count(customer_id) DESC;

begin tran;

DELETE FROM customer where city='NewYork';

commit;

begin tran

DELETE FROM customer where city='Delhi';

rollback;

begin tran;

insert into customer (customer_id, customer_name, contact_name, city)VALUES(11,'TomCruise','Tom','Mechigan');

save transaction s1;

delete from customer where contact_name ='kamalHassan';

save transaction s2;

insert into customer (customer_id, customer_name, contact_name, city)VALUES(12,'ChrisEvans','Chris','Washington');

save transaction s3;


begin tran;

rollback transaction s2;


