create database aggreg;
use aggreg;
CREATE TABLE employee(name varchar(20) NOT NULL, job varchar(20) NOT NULL,WorkHours int);

INSERT INTO employee VALUES('Bumrah', 'lawer',14);
INSERT INTO employee VALUES('sowrav', 'engineer',17);
INSERT INTO employee VALUES('gowtham', 'police',10);
INSERT INTO employee VALUES('linga', 'teacher',9);
INSERT INTO employee VALUES('shiva', 'plumber',6);
INSERT INTO employee VALUES('adhira', 'SecurityGuard',15);
INSERT INTO employee VALUES('Ram', 'teacher',9);

select distinct* from employee;

SELECT SUM(WorkHours) AS "Total working hours" FROM employee;    

SELECT AVG(WorkHours) AS "Average working hours" FROM employee;    

SELECT MIN(WorkHours) AS Minimum_working_hours FROM employee;    

SELECT MAX(WorkHours) AS Maximum_working_hours FROM employee;    
