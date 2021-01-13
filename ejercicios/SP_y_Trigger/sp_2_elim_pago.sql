#1) Programe un procedimiento almacenado que realice las siguientes tareas sobre la base de datos Sakila:
# Reciba como parámetro el número de id del alquiler cuyo pago se debe dar de baja.
# Verifique que el alquiler existe, caso contrario emita una tabla con un solo registro y un campo ERR y valor -1 y trermine
# Verifique que el alquiler esta pago, caso contrario emita una tabla con un solo registro y un campo ERR y valor -2 y termine
# Elimine el pago de la tabla payments.

#dar de baja un pago, significa borrar el registro de pago ??
# el alquier esta pago, si esta cargado un valor en "last_update()"

delimiter $
create procedure sp_2_elim_pago_1 ( alq_id int)
begin

   declare cant int;
   select count(*) into cant 
   from rental r 
   where  r.rental_id= alq_id;
# Verifique que el alquiler existe, caso contrario emita una tabla con un solo registro y un campo ERR y valor -1 y trermine
   IF cant = 0 then
       select -1 as 'ERR';

   else # Elimine el pago de la tabla payments.
      delete from payment  where rental_id = alq_id;
      select 'ok';
   end if;

	delete from payment where payment.rental_id = alq_id;


end $