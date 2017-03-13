select department_id from employees where department_id in (select department_id from departments)
/
