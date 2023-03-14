--QUESTION 1
SELECT UPPER(last_name)||''||LOWER(last_name) full_name,
ROUND((sysdate-hire_date)/365)period_in_years,
LEN(first_name||''||last_name) length_of_fullName,
manager_id
FROM
employees;

--QUESTION 2
SELECT first_name, last_name,
ROUND((sysdate-hire_date)/365)period_in_years,
salary
FROM
employees
WHERE
ROUND((sysdate-hire_date)/365) != 16;

--QUESTION 3
SELECT job_id,UPPER(first_name),employee_id,
UPPER(SUBSTR(first_name,1,2))||''||employee_id username
FROM employees WHERE job_id LIKE '%MAN' OR job_id LIKE '%MGR';

--QUESTION 4
SELECT first_name,last_name,hire_date,salary,
ROUND((sysdate-hire_date)/365,1)period_in_years,
ROUND((sysdate-hire_date),2)*salary total_compensation
FROM employees
ORDER BY salary DESC;

--QUESTION 5
SELECT employee_id,first_name,hire_date
FROM employees
WHERE hire_date <='30-DEC-05'
ORDER BY hire_date, first_name||' '||'last_name' DESC;

--QUESTION ONE
SELECT first_name||' '||last_name full_name, job_id,round((sysdate-hire_date)/365) period FROM employees;

--QUESTION 2
SELECT DISTINCT Manager_id,department_id,job_id FROM employees;

--QUESTION 3
SELECT first_name||' '||last_name full_name,round((sysdate-hire_date)/365) period, salary+nvl(salary*commission_pct,0) total_compensation FROM employees;

--QUESTION 4
SELECT first_name||' '||last_name||' has been with SQL Inc for '||round((sysdate-hire_date)/365) ||' years and has earned '||concat('$',salary+nvl(salary*commission_pct,0))|| 'compensation thus far' earned_experience FROM employees;


