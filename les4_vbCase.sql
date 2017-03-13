select salary, case salary when 10000 then 'Te Hoog' when 5000 then 'Ruim' else 'Goed' end as commentaar
from employees
/
