declare
v_fname varchar(20);
v_lname varchar(15) default 'fernandez';
begin
dbms_output.put_line(v_fname || ' '||v_lname);
end;
/
