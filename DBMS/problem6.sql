--Create Database
create database university_190609
use university_190609

-- Create instructor Table
create table instructor(
ID varchar(5),
name varchar(20) not NULL, 
dept_name varchar(20),
salary numeric(8,2), 
primary key(ID));

--Insert Value in Table
insert into instructor values('101','RAHATUL','ICE',90000);
insert into instructor values('102','BAPPY','CSE',20000);
insert into instructor values('103','SUHAN','EEE',100000);

--To Display all value of instructor Table
select * from instructor;

--Aggregate function
select COUNT(ID) as count_ID from instructor;
select MAX(salary) as max_salary from instructor;
select MIN(salary) as min_salary from instructor;
select AVG(salary) as avg_salary from instructor;



