
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY emp_no
;
--300,024

--List the first name, last name, and hire date for the employees who were hired in 1986.

Select first_name
    , last_name
    , hire_date
from employees
where hire_date > "1986"
;
-- 36,150

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dept_manager.dept_no, 
    ,departments.dept_name,
    ,dept_manager.emp_no,
    ,employees.last_name, 
    ,employees.first_name,
FROM dept_manager
LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no
ORDER BY emp_no
;
--24

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT dept_emp.dept_no
    ,employees.emp_no,
    ,employees.last_name,
    ,employees.first_name,
    ,departments.dept_name
FROM dept_emp
INNER JOIN employees ON
    dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
    dept_emp.dept_no = departments.dept_no;
order by emp_no
;
-- 331,603 

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select first_name
    , last_name
    , sex
from employees
where first_name = "hercules" and last_name like 'B%'
;
-- 20

--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT employees.emp_no
    , employees.last_name
    , employees.first_name
FROM employees
INNER JOIN dept_emp ON
    employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
    departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
;
-- 52,245 

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, 
    ,employees.last_name, 
    ,employees.first_name,
    ,dept_emp.dept_no
FROM employees 
LEFT JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
WHERE departments.dept_name in ('Sales', 'Development')
;
--137,952

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name
    , count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;
--1,638 
