-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary 
select a.emp_no as "Employee Number"
      , last_name as "Last Name"
	  , first_name as "First Name"
	  , sex as "Sex"
	  , salaries as "Salary"
from employees a
join salaries b on b.emp_no = a.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where extract(year from hire_date) = 1986; 

