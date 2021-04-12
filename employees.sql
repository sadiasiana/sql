--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
From employees as e
Inner join salaries as s 
On (e.emp_no = s.emp_no);

--List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
Where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
From departments as d
Inner join dept_manager as dm
On (d.dept_no = dm.dept_no)
Inner join employees as e
On (dm.emp_no = e.emp_no);

--List the department of each employee with the following information: employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name 
From departments as d
Inner join dept_emp as de
On (d.dept_no = de.dept_no)
Inner join employees as e
On (de.emp_no = e.emp_no)
Where dept_name like '%';

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex
From employees 
Where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name 
From departments as d
Inner join dept_emp as de
On (d.dept_no = de.dept_no)
Inner join employees as e
On (de.emp_no = e.emp_no)
Where dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name 
From departments as d
Inner join dept_emp as de
On (d.dept_no = de.dept_no)
Inner join employees as e
On (de.emp_no = e.emp_no)
Where dept_name in ('Sales', 'Development');

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, count(last_name) as lastname_count
From employees
Group By last_name
Order By lastname_count desc;