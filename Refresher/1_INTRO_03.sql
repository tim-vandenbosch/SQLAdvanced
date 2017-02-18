select e.last_name, e.first_name, e.job_id, j.job_title, e.salary, d.department_name
from employees e join jobs j
ON e.job_id = j.job_id
join departments d on e.department_id = d.department_id
where e.hire_date < to_date('1/1/1992','dd-mm-yyyy')
AND e.salary < 5000
/
