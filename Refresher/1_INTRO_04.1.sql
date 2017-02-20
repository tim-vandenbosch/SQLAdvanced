select d.department_name department, count(e.employee_id) "aantal medewerkers"
from departments d join employees e
on d.department_id = e.department_id
where d.location_id = (select location_id from locations where city='Seattle')
group by d.department_name
having count(e.employee_id) >= 5;
/
