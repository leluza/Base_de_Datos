#GENERAR UN LISTADO DE TODOS LOS ACTORES, CANTIDAD DE PELICULAS QUE ACTUARON, 
#CANTIDAD DE CATEGORIAS, MONTO RECAUDADO (INCLUIR TODOS LOS ACTORES) --> LEFT

select sc1.fn, sc1.ln, sc1.cant_pelis, sc2.cant_cat , sc3.recaudado

from (select a.actor_id as act, a.first_name as fn, a.last_name as ln, count(*) as cant_pelis
	from actor a
	left join film_actor fa using ( actor_id)
	left join film f	using (film_id)
	group by a.actor_id ) sc1

join

(select a.actor_id as act, a.first_name, a.last_name, count(*) as cant_cat
from actor a
left join film_actor fa     using ( actor_id)
left join film f		    using (film_id)
left join film_category fc  using (film_id)
group by a.actor_id )sc2

using (act)
join

(select a.actor_id as act, a.first_name, a.last_name, sum( p.amount) as recaudado
from actor a
left join film_actor fa using ( actor_id)
left join inventory i	using (film_id)
left join rental r 	using (inventory_id)
left join payment p 	using ( rental_id)
group by a.actor_id ) sc3

using (act)

# rta 200 actores, la cantidad de pelis son 1000
# la cantidad de pelis-categorias tmb son 1000
# ninguna pelocula esta clasificada en dos categorias
