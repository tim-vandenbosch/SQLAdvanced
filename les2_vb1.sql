declare
	v_first_name varchar2(20);
begin
	select first_name
	into v_first_name
	from employees
	where employee_id = 100;
end;
/
