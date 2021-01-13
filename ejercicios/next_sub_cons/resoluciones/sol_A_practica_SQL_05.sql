#MOSTRAR LOS ACTORES QUE ACTUARON EN LA/S PELICULA/S MAS LARGA/S

#sacar duracion maxima  (185)  (select  max(f.length) as record from film f)  
#select  las peliculas cuya duracion este en sub consulta anterior (el param de max long)
#from film f

select 
a.actor_id
,a.first_name
,a.last_name

from film f

join film_actor fa using(film_id)
join actor a 	   using(actor_id)

where (f.length )
in (select  max(f.length) as record from film f)  

group by actor_id 

#son 50 los actores
