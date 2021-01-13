# 4) Mostrar el listado del pto. anterior agregando una 
# columna con el total de pagos hecho por cada cliente,
# (no tomar en cuenta el atributo "customer_id" de la tabla
# "payments")

select cm.first_name, cm.last_name 
	, a.address, a.address2
	, cy.city
	, cn.country
	, count(*)
	, SUM(p.amount) as total_pagos

	from customer CM
	join address a
	using (address_id)
	#JUNTA TABLA ADRES, en funcion a filas de customers 599f

	join city cy
	using (city_id)

	join country cn
	using (country_id)

	join rental r
	using (customer_id)

	join payment p
	using (rental_id)

	group by cm.customer_id

	order by city, country
	


