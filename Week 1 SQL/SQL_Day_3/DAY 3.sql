create database flask;

use flask;

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



select count(emp_id) as count,city from employee GROUP BY city having count(emp_id)>=2 ORDER BY count(emp_id) DESC;

begin tran;

DELETE FROM employee where city='NewYork';

commit;

SELECT * FROM employee;

begin tran

DELETE FROM employee where city='Delhi';

rollback;

insert into employee (emp_id, emp_fullname, emp_salary, city)VALUES(11,'TomCruise',45000,'Mechigan');

save transaction s1;

delete from employee where emp_fullname ='kamalHassan';

save transaction s2;

insert into employee (emp_id, emp_fullname, emp_salary, city)VALUES(12,'ChrisEvans',65000,'Washington');

save transaction s3;


begin tran;

rollback transaction s2;

