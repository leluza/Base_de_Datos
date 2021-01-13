#3) Mostrar el listado del punto anterior agregando una columna 
# con la cantidad de alquileres (rental) por cliente.

	select cm.first_name, cm.last_name 
	, a.address, a.address2
	, cy.city
	, cn.country
	, count(*)

	from customer CM
	join address a
	using (address_id)
	#JUNTA TABLA ADRES, en funcion a filas de customers 599f

	join city cy
	using (city_id)

	join country cn
	using (country_id)

	join rental r
	using(customer_id)

	group by customer_id

	order by city, country
	


