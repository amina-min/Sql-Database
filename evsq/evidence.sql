-- 1 create table 

create table emp(
    eid number(10),
    ename varchar2(30),
    salary number(20),
    hire_date date,
    address varchar2(30)
);

--2 set primary key on eid
alter table emp modify(eid number(10)primary key);


--3 insert five record using substitution variables 

insert into emp values (&eid,'&ename',&salary,'&date','&address');

-- 4 add two coloumn named as phone, job_title

alter table emp add(
    phone number(14),
    job_title varchar2(30)
);




--5 make a query with ename, job_title, salary and salary with 30%
select ename,job_title,salary,salary*1.15 from emp;

--6 make a query with ename,salary, where salary is equal to minimum salaryb of employess
select ename,salary
from emp
where salary = (select MIN(salary) from emp);

--7 update all job_title to manager
update emp
set job_title = 'Manager';
 
 --8 create a view 
 create view worker AS Select eid,ename,salary FROM emp;


--9 create a sequence
create sequence empSalary
    increment by 2000
    start with 20000;


insert into worker values(106,'Abdur Rakib',empSalary.nextVal);


--10 create a index 

create index index1
on emp(salary);


