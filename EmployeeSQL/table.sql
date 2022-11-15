-- List the employee number, last name, first name, sex, and salary of each employee.

select e.emp_no , e.last_name,e.first_name, e.sex, s.salary
from  employees as e inner join salaries as s on e.emp_no = s.emp_no

-- 2.List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date 
FROM employees
WHERE extract(year from hire_date) = 1986

-- 3.List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name 
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

-- 4.List the department number for each employee along with that employee’s 
-- employee number,last name, first name, and department name.

select * from employees
select * from dept_emp
select * from departments

select dept_emp.emp_no, dept_emp.dept_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp 
inner join departments on dept_emp.dept_no=departments.dept_no
inner join employees on dept_emp.emp_no=employees.emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and
-- whose last name begins with the letter B.

select first_name , last_name , sex from employees
where first_name = 'Hercules' 
and last_name like 'B%'

-- 6.List all employees in the Sales department, including their employee number,
-- last name, first name, and department name.

select* from employees
select* from departments
select * from dept_emp


select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from dept_emp
inner join departments on  departments.dept_no=dept_emp.dept_no
inner join employees on employees.emp_no= dept_emp.emp_no
where dept_name='Sales';

-- 7. List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from dept_emp
inner join departments on  departments.dept_no=dept_emp.dept_no
inner join employees on employees.emp_no= dept_emp.emp_no
where dept_name='Sales' or dept_name='Development';

-- 8. List the frequency counts, in descending order, of all the employee last names
-- (that is, how many employees share each last name).

select last_name ,count(last_name) as count from  employees group by last_name  order by count desc



