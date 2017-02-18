select last_name, first_name, job_id, salary
from employees
where hire_date < to_date('1/1/1992','dd-mm-yyyy')
AND salary < 5000
/
