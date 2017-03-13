declare
	v_employee_id 	job_history.employee_id%TYPE 	:= &employeeid;				
	v_start_date 	job_history.start_date%TYPE 	:= to_date(&startdate,'dd/mm/yyyy'); 	
	v_end_date 	job_history.end_date%TYPE 	:= to_date(&enddate,'dd-mm-yyyy');	
	v_job_id 	job_history.job_id%TYPE 	:= &job_id;				
	v_department_id job_history.department_id%TYPE 	:= &deparment_id;			
begin

	insert into job_history
		(employee_id, 	start_date, 	end_date, 	job_id, 	deparment_id)
	values
		(v_employee_id,	v_start_date,	v_end_date,	v_job_id,	v_department_id);
	
	dbms_output.put_line('Employee '||v_employee_id||' is gestart op '||v_start_date||' in het departement '||v_departement_id);

end;
/