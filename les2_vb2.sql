begin
	select salary	into :b_emp_salary
	from employees
	where employee_id=178;
end;
/
