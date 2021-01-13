#Seleccionar el/los actor/es que participo en peliculas 
#de todos las categorias

 select  a.first_name as fn, a.last_name as ln
	from actor a
	 join (

		select a.actor_id, count( distinct fc.category_id ) AS cant_cat
		from actor a
		join film_actor fa     using ( actor_id)
		join film_category fc  using ( film_id)
		group by a.actor_id 
		having cant_cat = (select count(*) from category)
	 )sc1

using (actor_id)