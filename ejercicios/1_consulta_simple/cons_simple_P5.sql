# 5) Mostrar el listado del punto anterior dejando solo aquellos
# registros que correspondan a alquileres realizados durante el 
# mes de mayo.

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

	join ( select * from rental r where month(r.rental_date) = 5) T1
	using (customer_id)

	join payment p
	using (rental_id)

	group by cm.customer_id

	order by city, country
	 ;


