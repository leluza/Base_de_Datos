#Seleccionar todos los clientes (apellido y nombre) 
#cuyo pagos promedios historicos 
#sean mayores que los pagos promedios de todos 
#los clientes


#hago lista del consumo de cada uno de los clientes
#599 cli	alquileres 16.047    pagados 16044
#select cu.customer_id , sum(py.amount)
#from customer cu
#join rental r using (customer_id)
#join payment py using(rental_id)
#group by cu.customer_id

#saco el promedio de esta == para metro


#select avg(sca.pagos) as promedio #, sum(pagos)/count(*)
#from (select cu.customer_id , sum(py.amount) as pagos
#	from customer cu
#	join rental r using (customer_id)
#	join payment py using(rental_id)
#	group by cu.customer_id) sca

#hago lista delos clientes y sus consumos,  condicionando la supervivencia 
#de los que tiene consumo mayor al parametro, y solo muestro su nomb y app

select cu.first_name as name, cu.last_name as app ,  cu.customer_id , sum(py.amount) as consumo
from customer cu
join rental r using (customer_id)
join payment py using(rental_id)

group by customer_id

having ( consumo > (  select avg(sca.pagos) as promedio #, sum(pagos)/count(*)
							  from (select cu.customer_id , sum(py.amount) as pagos
									from customer cu
									join rental r using (customer_id)
									join payment py using(rental_id)
									group by cu.customer_id) sca
						) )