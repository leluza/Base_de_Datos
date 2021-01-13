#2) Mostrar el listado del punto 1 ordenado por ciudad y pais


select cm.first_name, cm.last_name 
, a.address, a.address2
, cy.city
, cn.country

from customer CM
join address a
using (address_id)
#JUNTA TABLA ADRES, en funcion a filas de customers 599f

join city cy
using (city_id)

join country cn
using (country_id)

order by city #, country
;
