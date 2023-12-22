create database class6;

use class6;

create table employees (id int, name varchar(20), salary int, city varchar(20));

insert into employees (id,name,salary,city)values(1,'akarsh',20000,'goa');
insert into employees (id,name,salary,city)values(2,'bhagavan',50000,'delhi');
insert into employees (id,name,salary,city)values(3,'chayan',70000,'mumbai');
insert into employees (id,name,salary,city)values(4,'dileep',90000,'hyderabad');


create procedure SelectAllEmployees as select * from employees GO;

exec SelectAllEmployees;

/*procedure with one parameter*/
create procedure SelectAllEmployeess @city nvarchar(30) as select * from employees where city = @city ;

exec SelectAllEmployeess @city='hyderabad';

create procedure us_employee()
begin
select * from customers where city='hyderabad';
end
 
exec us_employee();

/*SUB TOTALS*/


CREATE TABLE
SalesList
(SalesMonth NVARCHAR(20), SalesQuartes  VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY)
GO
INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2019,60)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,50)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'May','Q2',2019,30)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2020,10)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'October','Q4',2019,150)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,180)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2020,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2019,160)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,170)
GO
SELECT  * FROM SalesList

/*ROLL UP*/
select SalesYear,sum(SalesTotal) as SalesTotal from SalesList group by rollup(SalesYear);

select SalesYear, SalesQuartes, sum(SalesTotal) as SalesTotal from SalesList group by rollup(SalesYear,SalesQuartes);

select SalesYear, SalesQuartes,SalesMonth, sum(SalesTotal) as SalesTotal from SalesList group by rollup(SalesYear,SalesQuartes,SalesMonth);


/*GROUPING*/
SELECT SalesYear, SalesQuartes, sum(SalesTotal) as SalesTotal, grouping(SalesQuartes) as SalesQuarterGrp, grouping(SalesYear) as SYearGrp from SalesList group by rollup(SalesYear, SalesQuartes);


select 
case when grouping(SalesQuartes)=1 and grouping(SalesYear)=0
then 'SubTotal'
when grouping(SalesQuartes)=1 and grouping(SalesYear)=1
then 'GrandTotal'
else
cast(SalesYear as varchar(10))
end
as SalesYear,SalesQuartes,sum(SalesTotal) as SalesTotal from SalesList group by rollup(SalesYear,SalesQuartes);

/*Calculate subtotal in SQL query only for one column*/

select SalesMonth,SalesTotal,ROW_NUMBER() OVER(ORDER BY NEWID()) AS RowNumber from SalesList;

WITH CTE AS (SELECT SalesMonth, SalesTotal, ROW_NUMBER() OVER(ORDER BY NEWID()) AS RowNumber from SalesList) SELECT RowNumber,SalesMonth,SUM(SalesTotal) AS SalesTotal from CTE group by rollup(SalesMonth, RowNumber);


WITH CTE AS (
SELECT SalesMonth,SalesTotal , 
ROW_NUMBER() OVER(ORDER BY NEWID())
AS RowNumber FROM SalesList 
)
 
SELECT  
CASE WHEN GROUPING(RowNumber) =1 THEN 'SubTotal'
ELSE
 
    SalesMonth
    END AS SalesMonth,SUM(SalesTotal) AS SalesTotal 
FROM CTE 
GROUP BY ROLLUP(SalesMonth, RowNumber)
HAVING GROUPING(SalesMonth) = 0



SELECT NULL AS SalesQuarter, SalesMonth,
SUM(SalesTotal) AS SalesTotal 
FROM  SalesList
GROUP BY SalesMonth
UNION ALL
    SELECT  SalesQuartes, NULL AS SalesMonth,
SUM(SalesTotal) AS SalesTotal 
FROM  SalesList
GROUP BY SalesQuartes






SELECT  
SalesQuartes,SalesMonth ,
SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY GROUPING SETS(SalesQuartes,SalesMonth)



SELECT 
CASE 
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0
THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1
THEN 
'Grand Total'
ELSE
CAST(SalesYear AS varchar(10))
END 
AS SalesYear,
SalesQuartes,
SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY GROUPING SETS(SalesYear,(SalesYear,SalesQuartes),())



