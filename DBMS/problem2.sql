use master;

--Create Database
create database university_190609
use university_190609

-- Create Table
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

--To Display all value of Department Table
select * from instructor;

--To alter (add, rename, drop)
alter table instructor add course_no char(20) default 'ICE';
insert into instructor(ID,name,dept_name,salary)  values('104','SUHAN','EEE',100000);
alter table instructor drop column course_no;

--Drop Table
drop table instructor;