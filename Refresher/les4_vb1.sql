declare 
vaantal
vlnaam
vlk
begin
select count(*) into vaantal from countries;
select min(country_id) into vkleintste from countries;
for i in 1..vaantal loop
	selecht country_name into v_lnaam from countries
	where country_id = v_kleinste;
dbms_output.Put_line(v_lnaam);
select min(country_id) into v_kleinste from countries
where country_id > v_kleinste;
end loop;
end;
/