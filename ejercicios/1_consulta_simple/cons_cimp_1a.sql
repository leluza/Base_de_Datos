#1) Realizar una consulta donde se listen todos los clientes 
#(customer) con su nombre y apellido, y sus direcciones, 
#las direcciones deberan mostrar los campos "address" y "address",
# el nombre de la ciudad y el pais.

select cm.first_name, cm.last_name 
#599 clientes
from customer cm
join address a
on cm.address_id
# ARROJA 361197 FILAS
# 599 cm x 603 a = 361197
#realizo e producto cartesiano