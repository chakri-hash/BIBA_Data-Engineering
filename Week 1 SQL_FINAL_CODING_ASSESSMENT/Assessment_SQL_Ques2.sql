create database question2;

use question2;

/*-----2.Manipulate data by using sql commands using groupby and having clause.-----*/

create table Employeex(id int, name varchar(20), salary int, location varchar(20), age int);

insert into Employeex(id,name,salary,location,age)values(1,'Hanish',30000,'Hyderabad',28);
insert into Employeex(id,name,salary,location,age)values(2,'Raghav',55000,'Pune',45);
insert into Employeex(id,name,salary,location,age)values(3,'Ramesh',45000,'Vijayawada',38);
insert into Employeex(id,name,salary,location,age)values(4,'Ram',67000,'Hyderabad',27);
insert into Employeex(id,name,salary,location,age)values(5,'Takur',56000,'Hyderabad',26);
insert into Employeex(id,name,salary,location,age)values(6,'Prabhu',23000,'Pune',34);
insert into Employeex(id,name,salary,location,age)values(7,'Chris',67000,'Mumbai',33);
insert into Employeex(id,name,salary,location,age)values(8,'John',34210,'Chennai',21);
insert into Employeex(id,name,salary,location,age)values(9,'Sowrav',65430,'Hyderabad',61);
insert into Employeex(id,name,salary,location,age)values(10,'Manish',89760,'Chennai',39);

select * from Employeex;
/*GROUP BY*/
select count(id), location from Employeex group by location ;

/*HAVING*/

select count(id) as count, location from Employeex GROUP BY location having count(id)>=2 ORDER BY count(id) DESC;
