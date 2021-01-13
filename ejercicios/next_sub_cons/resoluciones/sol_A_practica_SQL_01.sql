# SELECCIONAR LOS ACTORES QUE ACTUARON AL MENOS EN UNA PELICULA QUE DURE MENOS DE 70 min

# lista de peli con duracion < 70, join con los actores que estuvieron en ellas

# select * from film f where ( f.length < 70 ) #166 / 1k

select   a.actor_id, a.first_name, a.last_name

from (select * from film f where ( f.length < 70 ) ) sc1

#left --> sin join, para no conciderar cortos sin actores
join film_actor fa using (film_id) 
# 
join actor a using (actor_id)

group by a.actor_id
# soin 198 los actores de cortos