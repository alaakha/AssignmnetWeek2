create database assignmentweek2
use assignmentweek2 
--1-Create a table named "Employees" with columns for ID (integer), Name (varchar), and Salary (decimal).
create table Employees(
id int , 
name varchar(30), 
salary decimal(7 , 3)
)
drop table Employees
--2-Add a new column named "Department" to the "Employees" table with data type varchar(50).
alter table Employees
add Department varchar(50)

--3-Remove the "Salary" column from the "Employees" table.
alter table Employees
drop column salary

--4-Rename the "Department" column in the "Employees" table to "DeptName".
exec sp_rename 'employees.Department' , 'DeptName' , 'column'
--5-Create a new table called "Projects" with columns for ProjectID (integer) and ProjectName (varchar).
create table Projects(
ProjectID int  , 
ProjectName varchar(30), 
)
drop table Projects

create table Projects(
ProjectID int primary key, 
ProjectName varchar(30), 
)
--6-Add a primary key constraint to the "Employees" table for the "ID" column.
drop table Employees

create table Employees(
id int primary key , 
name varchar(30), 
salary decimal(7 , 3)
)


--7-Create a foreign key relationship between the "Employees" table (referencing "ID") and the "Projects" table (referencing "ProjectID").
create table Emps_Projects(
id int , 
ProjectID int ,
primary key (id , ProjectID ),

foreign key (id) references Employees(id) , 

foreign key (ProjectID) references Projects(ProjectID)

)
drop table Emps_Projects
--8-Remove the foreign key relationship between "Employees" and "Projects."

--9-Add a unique constraint to the "Name" column in the "Employees" table.
alter table Employees 
add unique(name) ;

/*10-Create a table named "Customers" with columns for CustomerID (integer)
     FirstName (varchar), LastName (varchar), and Email (varchar), and Status (varchar).*/
 create table Customers(
 CustomerID int primary key , 
 FirstName varchar(50),
 LastName varchar(50),
 Email varchar(50),
 Status varchar(50)
 )
 /*11-Add a unique constraint to the combination of "FirstName" and "LastName" columns in the "Customers" table.*/
 alter table Customers 
add unique(FirstName , LastName ) ;

/*12-Add a default value of 'Active' for the "Status" column in the "Customers" table
     where the default value should be applied when a new record is inserted.*/
-- solve ChatGPT
ALTER TABLE Customers
ALTER Column Status  Set Default 'Active';

/*13Create a table named "Orders" with columns for OrderID (integer), CustomerID (integer)
    , OrderDate (datetime), and TotalAmount (decimal).*/
 create table Orders(
 OrderID int primary key , 
 OrderDate datetime2,
 TotalAmount decimal(8 , 2),
 CustomerID int  , 
 foreign key (CustomerID) references Customers(CustomerID)
 )
 /*14-Add a check constraint to the "TotalAmount"
      column in the "Orders" table to ensure that it is greater than zero.*/
alter table  Orders
add check (TotalAmount > 0 )


/*15.	Create a schema named "Sales" and move the "Orders" table into this schema.*/
create schema Sales

alter schema Sales
transfer dbo.Orders

/*16.	Rename the "Orders" table to "SalesOrders."*/
exec sp_rename 'Sales.Orders' , 'SalesOrders' 










































)





















