
delimiter $
#CREATE DEFINER=`root`@`%` PROCEDURE `AltaInventory`(vfilm_id int,vstore_id int)
CREATE PROCEDURE AltaInventory2 (vfilm_id int,vstore_id int)

BEGIN

   declare cant int;

   select count(*) into cant 

   from film 

   where film_id = vfilm_id;

   IF cant = 0 then

      select 'ERROR';

   else 

      insert into inventory (film_id,store_id) 

      values (vfilm_id,vstore_id);

      select 'ok';

   end if;

END $

#faltaban DELIMITER $
#comente lo del root