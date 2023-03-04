--Create Database
create database university_190609
use university_190609;
 
 
 -- Create Table
create table department(
dept_name varchar(20),
building varchar(15), 
budget numeric(12,2), 
primary key(dept_name));

--Insert Value in Table
insert into department values('ICE','Watson',90000);
insert into department values('CSE','Taulor',100000);
insert into department values('EECE','Packard',50000);

--To Display all value of Department Table
select * from department;

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

--To display all
print('Instructor Table:');
select * from instructor;
select * from department;


--Cartesian Product
select building, department.dept_name,salary from department,instructor where department.dept_name=instructor.dept_name;

--Join Operation
select salary,building from department join instructor on department.dept_name=instructor.dept_name;
select * from department join instructor on department.dept_name=instructor.dept_name;

--left outer join
select * from department left outer join instructor on department.dept_name=instructor.dept_name;

--Right outer join
select * from department right outer join instructor on department.dept_name=instructor.dept_name;

--Full outer join
select * from department full outer join instructor on department.dept_name=instructor.dept_name;