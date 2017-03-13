declare
v_new_id number;
begin
select employees_seq.nextval into v_new_id from dual;
end;
/
