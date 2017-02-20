declare
	v_first_name varchar2(20);
begin
	select first_name
	into v_first_name
	from employees
	where employee_id = 100;
	dbms_output.put_line('The firstname of employee with id 100: ' || v_first_name);
end;
/
