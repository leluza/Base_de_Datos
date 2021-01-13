b1) Elaborar una consulta SQL que genere un listado que contenga todos los instaladores con su nombre y apellido y que además muestre cual es el barrio sobre el que mas visitas hizo, fecha última vez que visitó ese barrio y cuantas visitas totales se hicieron en ese barrio (sumados todos los instaladores). Si varios barrios tienen la misma cantidad maxima de visitas poner uno cualquiera de ellos 

NOMBREINSTALADOR APELLIDOINSTALADOR BARRIO  FECHAULT  CANTVISITAS
Select  e.nombre as NOMBREINSTALADOR, e.apellido as APELLIDOINSTALADOR,
 sc12.BARRIO_mas_visitado_nombre as BARRIO
	, sc2.FECHA_ULT , sc3.CANTVISITAS
  #,e.dni
from empleado e
 join

(	select sc1.dni1 as dni2,   sc1.barrio as BARRIO_mas_visitado,sc1.barrioNombre as BARRIO_mas_visitado_nombre  #,  sc1.frecuencia,
	 from (
		select e.dni as dni1, b.id as barrio,b.nombre as barrioNombre,count(*) as frecuencia 
			
		from empleado e
		join visita v on v.empleadoDni= e.dni
		join pedido p on p.id = v.pedidoId
		join cliente c on p.clienteDNI = c.dni
		join domicilio d on c.domicilioId = d.id
		join calle ca on ca.id = d.calleId
		join barrio b on ca.barrioId = b.Id

		where e.cargoId=1
		group by e.dni ,b.Id  
		order by frecuencia desc ) sc1   
	group by sc1.dni1 )sc12
on  e.dni = sc12.dni2

join
(	select b.Id as barrio, e.dni as instalador  
	#	, datediff( now(), v.fecha) as diferencia
		,  v.fecha as FECHA_ULT
		, count(*)
		, p.id

	from barrio b
	join calle ca on ca.barrioId= b.Id
	join domicilio d on d.calleId = ca.id
	join cliente c on c.domicilioId = d.id
	join pedido p on p.clienteDNI = c.dni
	join visita v on v.pedidoId = p.id
	join empleado e on v.empleadoDni = e.dni

	where e.cargoId=1
	 group by b.Id, e.dni
	having max(FECHA_ULT)
	order by FECHA_ULT desc) sc2
on  sc12.BARRIO_mas_visitado = sc2.barrio

join 
(	select b.Id as barrio, e.dni as instalador  
		, count( v.fecha) as CANTVISITAS

	from barrio b
	join calle ca on ca.barrioId= b.Id
	join domicilio d on d.calleId = ca.id
	join cliente c on c.domicilioId = d.id
	join pedido p on p.clienteDNI = c.dni
	join visita v on v.pedidoId = p.id
	join empleado e on v.empleadoDni = e.dni

	where e.cargoId=1
	 group by b.Id	)sc3
on sc12.BARRIO_mas_visitado = sc3.barrio

group by e.dni


b2)


#Elaborar una consulta SQL que genere un listado que contenga todas las combinaciones empresaOperadora-TipodeServicio
# indicando cuantas vistas de esa operadora se hicieron de ese tipo de servicio, 
#si no tiene ninguna visita poner 0 (cero) ordenar por Operadora y cantidad de reclamos.
#NOMBREOPERADORA TIPOSERVICIO  CANTVISITAS

SELECT o.razonSocial,ts.descripcion,count(v.pedidoId),count(re.pedidoId) FROM cable.pedido pe
join operadora o on o.cuit=pe.operadoraCuit 
left join tipoServicio ts on ts.id=pe.tipoServicioId
left join visita v on v.pedidoId=pe.id
left join reclamo re on re.pedidoId=pe.id
group by o.cuit,ts.descripcion
order by o.cuit,count(re.pedidoId) asc
;



b3) Emitir un listado con la historia de los instaladores que han realizado instalaciones en mas de 5 barrios diferentes y que han recibidos menos de 4 reclamos en total, se deberá listar, cantidad total de visitas, fecha último reclamo.

NOMBREINSTALADOR APELLIDOINSTALADOR CANTVISITAS FECHAULTRECLAMO

select e.dni, e.nombre, e.apellido , sc1.CANTVISITAS , sc2.FECHAULTRECLAMO
from empleado e

join 
	(select e.dni as dni1, e.nombre as nom, e.apellido as apll , 
	count(*) as CANTVISITAS, 
	count( distinct b.Id ) as cant_barrios, 
	b.nombre

	from empleado e
	join visita v on v.empleadoDni= e.dni
	join pedido p on p.id = v.pedidoId
	join cliente c on p.clienteDNI = c.dni
	join domicilio d on c.domicilioId = d.id
	join calle ca on ca.id = d.calleId
	join barrio b on ca.barrioId = b.Id

	where e.cargoId=1
	group by e.dni
	having cant_barrios >=5 ) sc1
on sc1.dni1 = e.dni
join
	(select e.dni as dni2 , e.nombre as nom, e.apellido as apll , 
	count( distinct r.pedidoId && r.fecha ) as cant_reclamos 
	,  r.fecha as FECHAULTRECLAMO  
	from empleado e
	join visita v on v.empleadoDni= e.dni
	join pedido p on p.id = v.pedidoId
	join reclamo r  on p.id = r.pedidoId

	where e.cargoId=1
	group by e.dni
	having cant_reclamos <4
    order by r.fecha desc) sc2
on e.dni = sc2.dni2


order by e.fechaInicio

