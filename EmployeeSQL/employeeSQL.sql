-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary 
select a.emp_no as "Employee Number"
      , a.last_name as "Last Name"
	  , a.first_name as "First Name"
	  , a.sex as "Sex"
	  , b.salaries as "Salary"
from employees a
join salaries b 
    on b.emp_no = a.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where extract(year from hire_date) = 1986; 

--3. List the manager of each department with the following information: 
--   department number, department name, the manager's employee number, last name, first name.
select a.dept_no as "Department Number"
      , b.dept_name as "Department Name"
	  , c.emp_no as "Managers Employee Number"
	  , c.last_name as "Last Name"
	  , c.first_name as "First Name"
from dept_manager a
join departments b 
   on a.dept_no = b.dept_no
join employees c 
   on a.emp_no = c.emp_no 
where c.emp_title_id in (select title_id from titles where title = 'Manager')
order by a.dept_no;

-- 4. List the department of each employee with the following information: 
--    employee number, last name, first name, and department name.
select b.emp_no
      , b.last_name
	  , b.first_name
	  , c.dept_name
from dept_emp a
join employees b 
   on b.emp_no = a.emp_no
join departments c
   on c.dept_no = a.dept_no;

-- 5. List first name, last name, and sex for employees whose 
--    first name is "Hercules" and last names begin with "B."
select first_name
      , last_name
	  , sex
from employees
where first_name = 'Hercules' 
  and last_name like 'B%';

-- 6. List all employees in the Sales department, including their 
--    employee number, last name, first name, and department name.
select b.emp_no
      , b.last_name
	  , b.first_name
	  , c.dept_name as "Department Name"
from dept_emp a
join employees b 
   on b.emp_no = a.emp_no
join departments c
   on c.dept_no = a.dept_no
where c.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, 
--    including their employee number, last name, first name, and department name.
select b.emp_no
      , b.last_name
	  , b.first_name
	  , c.dept_name as "Department Name"
from dept_emp a
join employees b 
   on b.emp_no = a.emp_no
join departments c
   on c.dept_no = a.dept_no
where c.dept_name in ('Sales', 'Development');

-- 8. In descending order, list the frequency count of employee last names, 
--    i.e., how many employees share each last name.
select last_name
      , count(last_name) as lastname_count
from employees
group by last_name
order by lastname_count desc;
