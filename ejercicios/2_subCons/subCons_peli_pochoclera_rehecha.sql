# muestra el actor, y lo recaudado por todas sus pelis (su trayectoria)
select
a.first_name,
a.last_name,
sum(p.amount) as monto_carrera,
(select f.title from film f where f.film_id = sc2.peli) as pochoclera

from actor a
left join film_actor fa		using (actor_id)
left join film f			using (film_id)
left join inventory	i 		using (film_id)
left join rental r			using (inventory_id)
left join payment p			using (rental_id)	
left join 
		
	(select 
		 sc1.act,
		 sc1.peli
		 ,max(sc1.monto_AF) as mon_peli_taq

		
		from(select
				a.actor_id as act,
				f.film_id as peli,
				sum(p.amount) as monto_AF

				from actor a
				left join film_actor fa		using (actor_id)
				left join film f			using (film_id)
				left join inventory	i 		using (film_id)
				left join rental r			using (inventory_id)
				left join payment p			using (rental_id)

				group by  f.film_id , a.actor_id
			) 
			sc1#sc1 muestra lo recaudado por cada actor en cada peli #5462

		group by sc1.act
	 )
	 sc2#la mayor peli recaudadora  y el monto, de cada actor
     on a.actor_id = sc2.act

group by a.actor_id;