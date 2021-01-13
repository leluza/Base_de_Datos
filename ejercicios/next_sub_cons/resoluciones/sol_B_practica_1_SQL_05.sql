#Seleccionar los clientes que deben retornar videos



select cu.customer_id, cu.first_name, cu.last_name
from customer cu
join rental r 		using (customer_id)
		WHERE  ( isnull(r.return_date ) )