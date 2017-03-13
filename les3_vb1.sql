declare
v_new_id number;
begin
v_new_id := employees_seq.nextval;
dbms_output.put_line('Volgende nummer voor employee_d is '||v_new_id);
end;

/
