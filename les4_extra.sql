declare
	v_verlaging := 0,1;
begin
	update salary*v_verlaging
	from employees
	where employee_id = 
	(
		select department_id
		from employees
		where department_id in
		(
			select department_id
			from departments
		)
	)
end;
/

update salary from employees where employee_id=x; ## update salary for employee
select department_id from departments; ## get all the departments
select count(employee_id) from employees where department_id=x; ## count employees for a department

select department_id
from employees
where department_id in
(
	select department_id
	from departments
);

############################################# solution of exercise
begin
	update employees
	set salary = salary * 0.9
	where employee_id in 
	(
		select manager_id
		from departments
		where department_id in
		(
			select department_id
			from departments join employees
			using (department_id)
			group by department_id
			having count(*) <= 5
		)
	);
DBMS_OUTPUT.PUT_LINE('aantal salarisverlagingen: '||SQL%ROWCOUNT);
END;
/