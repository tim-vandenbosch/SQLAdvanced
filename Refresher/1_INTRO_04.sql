select d.department_name department, count(e.employee_id) "aantal medewerkers"
from departments d join employees e
on d.department_id = e.department_id
join locations l on d.location_id = l.location_id
where l.city = 'seattle'
group by d.department_name
having count(e.employee_id) >= 5;
/