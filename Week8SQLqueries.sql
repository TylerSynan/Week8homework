-- Homework for week8 --

select titles.title, count(*) as employee_count from titles
inner join employees emp on titles.emp_no = emp.emp_no
where emp.birth_date > '1965-01-01' group by title
order by employee_count asc;

select titles.title, avg( sal.salary) as average_salary
from titles inner join salaries sal on titles.emp_no = sal.emp_no
group by title order by average_salary asc;

select d.dept_name, sum(s.salary) as Salary
from departments d inner join dept_emp de on de.dept_no = d.dept_no
inner join salaries s on s.emp_no = de.emp_no
where d.dept_no = 'd001' and (s.from_date between '1990-01-01' and '1992-12-31') and
(s.to_date between '1990-01-01' and '1992-12-31') group by d.dept_name;