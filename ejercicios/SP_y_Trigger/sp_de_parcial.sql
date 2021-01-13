b) (40pts) Implemente un Store Procedure (SP) que registre la entrega de un préstamo a la fecha de hoy y simultáneamente registre el pago al precio del alquiler estándar del film. El SP recibirá como parámetros: 
- el nombre y apellido del cliente (si hay mas de uno con ese nombre y apellido devolverá una tabla con una columna con los ID de los clientes del mismo nombre y titulo de la columna “CUST_IDS”); 
- Id del store; 
- Id del film, deberá buscar en el inventario una copia disponible de ese film en ese store, si no hay copia disponible devolverá una tabla de una fila y un columna con la celda completada con el texto “NO DISPONIBLE” y el título “ERR”;
- Staff Id.

Si el alta es exitosa devolverá una tabla de una fila y una columna con la celda con el valor del rental_id que se ha dado de alta y título “OK”. El monto se debe calcular en base a los campos rental_duration y rental_rate del film.


# (40pts) Implemente un Store Procedure (SP) que registre la entrega de un préstamo a la fecha de hoy y simultáneamente registre el pago al precio del alquiler estándar del film. El SP recibirá como parámetros: 
-
#el nombre y apellido del cliente (si hay mas de uno con ese nombre y apellido devolverá una tabla con una columna con los ID de los clientes del mismo nombre y titulo de la columna “CUST_IDS”); 
#Id del store; 
# Id del film, deberá buscar en el inventario una copia disponible de ese film en ese store, si no hay copia disponible devolverá una tabla de una fila y un columna con la celda completada con el 
#texto “NO DISPONIBLE” y el título “ERR”;
# Staff Id.

#Si el alta es exitosa devolverá una tabla de una fila y una columna con la celda con el valor del rental_id que se ha dado de alta y título “OK”. El monto se debe calcular en base a los campos #rental_duration y rental_rate del film.


# 2020_reg_pag_e_inv ( nombre, apll , id_store  if_film, staff_if)

#  control de que no exista mas de 1 cliente con ese ( n y ap)
		# (si existe + de 1) muestra lista de ids que corresponder a dichos n y app
        # poner bandera en alto
        
#cargar variable con id_clente, con una subconsulta donde        
        
#contol de que existe copia en inventory y guardo id_copia en una variable 
	#(si no existe copia) muesta texto “NO DISPONIBLE” y el título “ERR”;
    # poner bandera en alto


# controla que la bandera este en bajo
#		inster inventori ( now())  --> prestamo, no alquiler
# 		insert payment( now(), precio_std( rental_duration y rental_rate del film) )
#		MOSTRAr col "rental_id-colocado" relleno "0k"

DELIMITER $$

CREATE PROCEDURE recepcion_prestamos_y_monto
(  nombre varchar(45),  apellido varchar(45),  id_tienda int, id_pelicula int,  id_empleado int)
BEGIN
	
    declare cant_c int default 0;
    declare var_cli_id int default 0;
    declare listo int default 0;
    declare cant_i int default 0;
    declare var_i_id int default 0;
    declare monto int default 0;
    declare alq_id int default 0;
    
	select count(*) into cant_c
    from customer where first_name = nombre and last_name = apellido;

	if cant_c > 1 then	
		select customer_id  as CUST_IDS from customer 
    	where first_name = nombre and last_name = apellido;
     end if;
     
     if cant_c = 1 then
         set var_cli_id = ( select customer_id   from customer 	where first_name = nombre and last_name = apellido );
         set listo = 1;
     end if;

	select count(*) into cant_i
    from inventory 	where id_pelicula = film_id and store_id = id_tienda;
    
    
	if cant_i = 0 then	
        select 'NO DISPONIBLE' as 'ERR';
	end if;


	if cant_i > 0 then
        set listo = 1;
        set var_i_id = (select inventory_id from inventory where id_pelicula = film_id and store_id = id_tienda ) ;
    end if;


    if listo = 1 then
        select rental_rate * rental_duration into monto from film where film_id = id_pelicula ;
        update inventory 
        set last_update = now() 
        where film_id = id_pelicula and store_id = id_tienda and inventory_id = car_i_id;

		select rental_id into alq_id from rental where inventory_id = id_copia;

        insert into payment (amount, costumer_id, last_update , payment_date,  rental_id , staff_id )
        values (monto , id_cliente,   now(),  now(),    alq_id, id_empleado);

    end if;    

END;$$
