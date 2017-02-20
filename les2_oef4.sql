declare
	v_today DATE := sysdate;
	v_tomorrow v_today%TYPE := v_today + 1;
begin
	dbms_output.put_line('Hello world');
	dbms_output.put_line('Today is: '|| to_char(v_today, 'dd Month yyyy'));
	dbms_output.put_line('Tomorrow is: '|| to_char(v_tomorrow, 'dd/mm/yy'));
end;
/
