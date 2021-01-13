#Seleccionar los actores (apellido y nombre) 
#cuyas peliculas hayan sido rentadas al menos 
#una vez en el mes de mayo

#armo lista de peliculas-inv-rent, condicionando que sobrevivan, solo aquellas que tienen 
#fecha de alquiler en el mes de mayo, muestro id de la peli

#armo lista de actores , con sus peliculas, y junto con la lista anterior, luego agrupo 
#por actor y muestro su nombre y appel

select  a.first_name, a.last_name
from actor a
 join film_actor fa     using ( actor_id)
 join 
   (select f.film_id
		from film f
		join inventory i 	using(film_id)
		join rental r 		using (inventory_id)
		WHERE  ( month(r.rental_date) = 5 )
		group by film_id) sc11
using (film_id)

group by a.actor_id

# todos los actores??