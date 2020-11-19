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

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select a.dept_no as "Department Number"
      , b.dept_name as "Department Name"
	  , a.emp_no as "Employee Number"
	  , c.last_name as "Last Name"
	  , c.first_name as "First Name"
from dept_manager a
join departments b on a.dept_no = b.dept_no
join employees c on a.emp_no = c.emp_no 
where c.emp_title_id in (select title_id from titles where title = 'Manager')
order by a.dept_no

