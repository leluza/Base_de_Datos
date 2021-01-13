# IMPLEMENTAcion del punto 4, agregando "left outer" --> los
#resultados no cambiaron

#como seria graficamente?


select cm.first_name, cm.last_name 
	, a.address, a.address2
	, cy.city
	, cn.country
	, count(*)
	, SUM(p.amount) as total_pagos

	from customer CM #599

	LEFT OUTER 
#	right outer
	join address a #603
	using (address_id)
	#JUNTA TABLA ADRES, en funcion a filas de customers 599f

	join city cy # 600
	using (city_id)

	join country cn # 109
	using (country_id)

	#LEFT OUTER 
	join rental r #16047
	using (customer_id)

	#LEFT OUTER 
	join payment p #16049
	using (rental_id)

	group by cm.customer_id

	order by city, country
	


