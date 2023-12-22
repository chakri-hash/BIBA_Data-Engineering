CREATE DATABASE fish;

use fish;


create table employer(id int primary key, name varchar(10) NOT NULL, job varchar(20) UNIQUE, age int, salary int DEFAULT 15000, constraint chksalary check(salary>=40000));

insert into employer(id,name,job,age,salary)values(1,'Nani','chef',17,300000);
insert into employer(id,name,job,age,salary)values(2,'Rani','Artist',56,360000);
insert into employer(id,name,job,age,salary)values(3,'Toni','Engineer',23,430000);
insert into employer(id,name,job,age,salary)values(4,'Sony','Lawer',35,32000);
insert into employer(id,name,job,age,salary)values(5,'Perry','Doctor',47,14900);


create table detail(emp_id int NOT NULL, job varchar(20) primary key foreign key references employer(job));

select * from employer;

select * from detail;


