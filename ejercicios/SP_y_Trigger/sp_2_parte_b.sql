
#2) Sobre la base de datos Sakila programar un Stored Procedure que dé de baja un film de 
#la tabla film. El store recibirá como parámetro el idFilm a eliminar.
#El Sp deberá controlar que el idFilm en la tabla film exista caso contrario deberá emitir
# una tabla de una sola fila y columna con valor "FILM INEXISTENTE".
#El Sp deberá controlar que no exista ningún alquiler de copias de ese film caso contrario 
#deberá emitir una tabla de una sola fila y columna con valor "FILM CON ALQUILERES".
#El Sp deberá realizar las eliminaciones que correspondan para no dejar inconsistencias por
# ejemplo de los actores de ese film.
#El Sp deberá remover el film de la tabla film sin producir error de consistencia.

CREATE DEFINER=`root`@`%` PROCEDURE `chaufilm`(idfilm int)
BEGIN
	declare cant int;
	select count(*) into cant from
	film where film_id = idfilm;
	if cant = 0 then
		select "FILM INEXISTENTE";
	else
		select count(*) into cant from
		rental join inventory on
		rental.inventory_id = inventory.inventory_id
		where inventory.film_id = idfilm;
		if cant > 0 then
			select "FILM CON ALQUILERES";
		else
			delete from film_actor where film_id = idfilm;
			delete from film_category where film_id = idfilm;
			delete from inventory where film_id = idfilm;
			delete from film_text where film_id = id_film;
			delete from film where film_id = idfilm;

		end if;
	end if;
END