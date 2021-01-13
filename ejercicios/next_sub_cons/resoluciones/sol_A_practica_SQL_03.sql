#SELECCIONAR LA/S PELICULA/S EN LA QUE ACTUARON MAS ACTORES

#sacar la cantidad maxima de actores ( eleno maximo) x pelicula
#seleccionar de la lista de peliculas y su elenco, aquellas donde
#el elenco, sea igual al elenco maximo


#sacar la cantidad maxima de actores ( eleno maximo) x pelicula
#select  max(elenco) as elenco from
# (select   f.title as title  , count(*) as elenco
#  from film f
#  left join film_actor fa using (film_id)
#  left join actor 	using (actor_id)
#  group by f.film_id  ) sc1
 


select   sca.title as title 
from (select   f.title as title, count(*) as elenco
	  from film f
	  left join film_actor fa using (film_id)
	  left join actor 	using (actor_id)
	  group by f.film_id
	  ) sca

join 
	(select  max(elenco) as elenco_max from
		 (select   f.title as title  , count(*) as elenco
		  from film f
		  left join film_actor fa using (film_id)
		  left join actor 	using (actor_id)
		  group by f.film_id  ) sc1
	 ) sc2
on sca.elenco = sc2.elenco_max

# unica pelicula LAMB CINCINATTI con 15 participantes
