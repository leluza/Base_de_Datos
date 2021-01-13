#SELECCIONAR LOS 5 ACTORES QUE MAS TIEMPO ACTUARON SUMANDO LA 
#DURACION DE TODAS SUS PELICULAS

#actor & sus peliculas --> sum( duracion) agrupando x actor

select sum(f.length) as performance , a.actor_id, a.first_name, a.last_name
from actor a
#left --> incluye a los actores que no rodaron peliculas
 join film_actor fa using (actor_id)
# left --> no tiene sentido, porque si existe par fa, existe f
# q no es lo mismo que si existe f, existe fa
 join film f	using (film_id)
group by actor_id 
order by performance desc
limit 5
