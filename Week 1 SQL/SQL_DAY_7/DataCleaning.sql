create database DataCleaningEg;
use DataCleaningEg;

create table Companies (id int, name varchar(20),industry varchar(100), year_founded int, employees int, state varchar(20));

insert into Companies(id, name, industry, year_founded, employees, state)values(1,'Over_Hex','Software',2006,25,'TX');
insert into Companies(id, name, industry, year_founded, employees, state)values(2,'Unimattax','IT Services',2009,36,'TX');
insert into Companies(id, name, industry, year_founded, employees, state)values(3,'Lexial','RealEstate',2032,38,'IL');
insert into Companies(id, name, industry, year_founded, employees, state)values(4,'Greenfax','Retail',2012,320,'SC');
insert into Companies(id, name, industry, year_founded, employees, state)values(5,'Saoace','Energy',2009,24,'WI');
insert into Companies(id, name, industry, year_founded, employees, state)values(6,'Donplus','Advertising & Marketing',2009,26,'CA');
insert into Companies(id, name, industry, year_founded, employees, state)values(7,'Blacklane','IT Services',2011,9,'CA');
insert into Companies(id, name, industry, year_founded, employees, state)values(8,'Toughtam','Logistics & Transportation',2011,20,'AL');
insert into Companies(id, name, industry, year_founded, employees, state)values(9,'Toughtam','Logistics & Transportation',2011,20,'AL');
insert into Companies(id, name, industry, year_founded, employees, state)values(10,'Quotelane','Advertising & Marketing',NULL,4,'SC');
insert into Companies(id, name, industry, year_founded, employees, state)values(11,'Ganzzap','Advertising & Marketing',2011,133,'CA');
insert into Companies(id, name, industry, year_founded, employees, state)values(12,'Yearflex',NULL,2013,45,'WI');


select name, count(name) as count from Companies group by name having count(name) > 1;

WITH cte AS (SELECT name,ROW_NUMBER() OVER (PARTITION BY name ORDER BY name ASC) AS rn FROM Companies) DELETE FROM cte WHERE rn > 1;

SELECT * FROM Companies;

SELECT * FROM Companies WHERE year_founded IS NULL;

DELETE FROM Companies WHERE year_founded IS NULL;

UPDATE Companies SET industry = 'Other' WHERE industry IS NULL;

UPDATE Companies SET state = UPPER(state);

SELECT * FROM companies WHERE year_founded > 2023;



create table cars(car_make varchar(50), car_model varchar(50), car_type varchar(50), car_price int);

insert into cars(car_make, car_model, car_type, car_price)values('Ford','Mondeo','Premium',18200);
insert into cars(car_make, car_model, car_type, car_price)values('Renault','Fuego','sport',16500);
insert into cars(car_make, car_model, car_type, car_price)values('Citroen','Cactus','Premium',19000);
insert into cars(car_make, car_model, car_type, car_price)values('Ford','Falcon','low cost',8990);
insert into cars(car_make, car_model, car_type, car_price)values('Ford','Galaxy','standard',12400);
insert into cars(car_make, car_model, car_type, car_price)values('Renault','Megane','standard',14300);
insert into cars(car_make, car_model, car_type, car_price)values('Citroen','Picasso','Premium',23400);

select * from cars;

/*select 'overall avg price'=avg(car_price) from cars;*/

select car_make, car_model, car_price , avg(car_price) over() as 'overall average price', avg(car_price) over(partition by car_type) as 'car type average' from cars;

/*select car_make,avg(car_price) over() as 'avg' from cars;*/

select car_make, avg(car_price) as avg_price, max(car_price) as top_price from cars group by car_make;  

select car_make, car_model, car_price, avg(car_price) over(partition by car_make) as avg_mark from cars;

