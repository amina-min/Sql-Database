--lesson 1
--concate
select last_name || 'is a'||job_id as "employee details"
        from employees;

--own quotation 'alternative quota'
select department_name || q'[department's manager id:]'|| manager_id as "departs and manager"
     from departments;

-- desc(describe)
desc employees;

  --between      
   select last_name ,salary
   FROM employees
   WHERE salary BETWEEN 25000 AND 30000;
      
   --in
    select last_name ,salary
   FROM employees
   WHERE salary in (2000,2500);
   
   --like
   
 select last_name 
   FROM employees
   WHERE last_name LIKE '%s';   --s er age kicu ace bujhabe
   
   select last_name, hire_date
   FROM employees
   WHERE hire_date LIKE '%02';
   
   select last_name 
   FROM employees
   WHERE last_name LIKE '_a%';
   
   escape
   
   
SELECT location_id, department_name "Department",TO_CHAR(NULL) "Warehouse location"
FROM departments
UNION
SELECT location_id, TO_CHAR(NULL) "Department",state_province
FROM locations;
   
   
   
   