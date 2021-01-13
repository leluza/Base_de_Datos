SELECT last_name, first_name, SUM(amount), p.title 
FROM actor a
LEFT JOIN film_actor fa ON fa.actor_id = a.actor_id
LEFT JOIN inventory inv ON inv.film_id = fa.film_id
LEFT JOIN rental re 	ON re.inventory_id = inv.inventory_id
LEFT JOIN payment pa 	ON pa.rental_id = re.rental_id
LEFT JOIN (SELECT d.actor_id, d.title  #  P-------------------------------------------ON
			FROM (SELECT a.actor_id,fi.title,SUM(amount) monto #d---------------------ON
					FROM actor a
					JOIN film_actor fa ON fa.actor_id = a.actor_id
					JOIN inventory inv ON inv.film_id = fa.film_id
					JOIN film fi ON fi.film_id = fa.film_id
					JOIN rental re ON re.inventory_id = inv.inventory_id
					JOIN payment pa ON pa.rental_id = re.rental_id
					GROUP BY fi.film_id, a.actor_id) d  #d----------------------------OFF
			WHERE (d.actor_id, monto) 
			IN  (SELECT b.actor_id,MAX(monto)  # In  ---------------------------------ON
				 FROM (SELECT a.actor_id,SUM(amount) monto # B------------------------ON
						FROM actor a
						JOIN film_actor fa ON fa.actor_id = a.actor_id
						JOIN inventory inv ON inv.film_id = fa.film_id
						JOIN film fi ON fi.film_id = fa.film_id
						JOIN rental re ON re.inventory_id = inv.inventory_id
						JOIN payment pa ON pa.rental_id = re.rental_id
						GROUP BY fi.film_id, a.actor_id) b # B------------------------OFF
			    GROUP BY b.actor_id)  # In  ----------------------------------------- OFF
			) p  #  P-----------------------------------------------------------------OFF			
ON p.actor_id = a.actor_id
GROUP BY a.actor_id, last_name, first_name, p.title