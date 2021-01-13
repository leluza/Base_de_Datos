#1) Realizar una consulta donde se listen todos los clientes 
#(customer) con su nombre y apellido, y sus direcciones, 
#las direcciones deberan mostrar los campos "address" y "address",
# el nombre de la ciudad y el pais.

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
