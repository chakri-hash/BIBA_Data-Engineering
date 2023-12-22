CREATE DATABASE Tech;

USE Tech;

CREATE TABLE people(id INTEGER, name varchar(20), job varchar(20), location varchar(20), gender varchar(20), salary INTEGER);




INSERT INTO people(id, name, job, location, gender, salary)VALUES(101,'Zarina','Fashon Designer','Hyderabad','Female',70000);

INSERT INTO people(id, name, job, location, gender, salary)VALUES(102,'Simba','Police','Nalgonda','Male',50000);

INSERT INTO people(id, name, job, location, gender, salary)VALUES(103, 'Sofi', 'Software Employee', 'Chennai', 'Female',25000);



/*
SEQUENCE EXAMPLE....WE USE AUTO_INCREMENT



CREATE TABLE Insects (  
   Id INT UNSIGNED NOT NULL AUTO_INCREMENT,  
   PRIMARY KEY (id),  
   Name VARCHAR(30) NOT NULL,   
   Type VARCHAR(30) NOT NULL,  
   Origin VARCHAR(30) NOT NULL   
); 
INSERT INTO Insects (Name, Type, Origin) VALUES  
    ('Cockroach', 'Crawling', 'Kitchen'),  
    ('Mosquito', 'Flying', 'Driveway'),  
    ('Spider' ,'Crawling', 'Court yard'),  
    ('Grasshopper', 'Flying', 'Front yard');  
*/


SELECT name FROM people WHERE gender='Female';

SELECT name FROM people WHERE salary=50000;

UPDATE people SET job='Artist' where id=101;

UPDATE people SET location='Pune' where id=103;



select * from people;




ALTER TABLE people ADD age varchar(20);


INSERT into people(id,name,job,location,age,gender,salary)VALUES(104,'Charan','Chef','Vizianagaram','35','Male',40000);

Insert into people(id,name,job,location,age,gender,salary)values(105,'TarakaRam','Lawer','Vizag','36','Male',90000);

UPDATE people set age=30 where name = 'Zarina';

update people set age=29 where name = 'Simba';

update people set age=23 where name = 'Sofi';


select * from people;


select GETDATE();









