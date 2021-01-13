select * from (
select first_name, last_name 
#customer.address_id , address.address_id
, address.address #, address.address2 # address2 es una columna vacia con 4 nulls
#, address.city_id , city.city_id
, city.city
#, city.country_id , country.country_id
, country
, count(*) as cant_alq
#, rental.rental_id
, sum( py.amount) as total_pagos

from customer, address, city, country, rental r ,payment py

#limit 10

where  customer.address_id =  address.address_id 
AND address.city_id = city.city_id 
AND city.country_id = country.country_id 

AND customer.customer_id = r.customer_id
# 16047 alq
# 599 clientes

AND r.rental_id = py.rental_id

AND month(r.rental_date) = 5
# 16049 pagos
group by customer.customer_id

#having total_pagos > 10 

#al hacer junta AND r.rental_id = py.rental_id la cantidad de registros baja
# a 16044, esto quiere decir que hay 3 alquileres sin pagar

order by  country , city 
) as a

where total_pagos > 10

limit 10
