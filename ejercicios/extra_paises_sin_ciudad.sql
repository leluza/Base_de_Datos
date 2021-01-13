# 4079 ciudades

# 239 paises

# 984 lenguajes

#SELECT sum( cdad_pais) FROM (

SELECT country.Name , ta.Pais FROM (

select   co.Name as Pais, co.Code as cod, ci.CountryCode, ci.Name AS Ciudad , COUNT(*) as cdad_pais

from country co
# en esta fondiguracion
# country (LEFT)	||  	city (RIGHT)

join city ci on co.Code = ci.CountryCode
#left join 4086
#RIGHT join 4079
 group by co.Code
#) t1

# arroja 232 filas. Esto implica que existen paises sin ciudadeS?
#PARECIERA QUE SI, PORQUE AL AGRUPAR POR PAISES, EN LA TABLA DE CIUDADES
# OBTENGO 323  --> 5 PAISES SIN CIUDADES

) TA

RIGHT OUTER join country  on TA.cod = country.Code

WHERE ta.Pais IS NULL
