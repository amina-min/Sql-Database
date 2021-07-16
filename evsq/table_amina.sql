CREATE TABLE emp (
eid  NUMBER(5) ,
ename VARCHAR2 (20),
salary number (5),
hire_date    DATE,
address VARCHAR2 (10)
);

ALTER TABLE emp
ADD PRIMARY KEY (eid);

INSERT INTO emp VALUES('&eid','&ename','&salary' ,'&hire_date', '&address');

select * from emp;

alter TABLE emp ADD(
phone number(14),
job_title varchar2(20)
);
INSERT INTO emp VALUES('&eid','&ename','&salary' ,'&hire_date', '&address','&phone','&job_title');


select ename, job_title, salary ,salary+(salary*.30) as "salary+bonus"
FROM emp;

select ename, salary
from emp
where salary=(select min(salary) from emp );

update  emp
set job_title ='manager';

update  emp
set phone=null;

CREATE VIEW emp_view
as select ename,hire_date,job_title
from emp;

select * from emp_view;

create SEQUENCE emp_seq
     INCREMENT by 5
     start with 100
     MAXVALUE 100
     NOCACHE;
    
insert into 

create index emp_indx
on emp(salary);