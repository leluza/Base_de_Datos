INSERT INTO `cable`.`cargo` (`nombre`) VALUES ('Instalador');
INSERT INTO `cable`.`cargo` (`nombre`) VALUES ('Telefonico');


INSERT INTO `cable`.`estadoReclamo` (`descripcion`) VALUES ('Solucionado');
INSERT INTO `cable`.`estadoReclamo` (`descripcion`) VALUES ('En proceso');


INSERT INTO `cable`.`resultado` (`nombre`) VALUES ('Terminado');
INSERT INTO `cable`.`resultado` (`nombre`) VALUES ('Pendiente');
INSERT INTO `cable`.`resultado` (`nombre`) VALUES ('Cancelado');


INSERT INTO `cable`.`tipoServicio` (`descripcion`) VALUES ('basico');
INSERT INTO `cable`.`tipoServicio` (`descripcion`) VALUES ('intermedio');
INSERT INTO `cable`.`tipoServicio` (`descripcion`) VALUES ('premium');


INSERT INTO `cable`.`tipoVisita` (`nombre`) VALUES ('Reparacion');
INSERT INTO `cable`.`tipoVisita` (`nombre`) VALUES ('Instalacion');
INSERT INTO `cable`.`tipoVisita` (`nombre`) VALUES ('Recolocacion');
INSERT INTO `cable`.`tipoVisita` (`nombre`) VALUES ('Desinstalacion');


INSERT INTO `cable`.`estado` (`descripcion`) VALUES ('Cancelada');
INSERT INTO `cable`.`estado` (`descripcion`) VALUES ('Completa');
INSERT INTO `cable`.`estado` (`descripcion`) VALUES ('Incompleta');

INSERT INTO `ciudad` VALUES (1,'Cordoba'),(2,'Buenos Aires');


INSERT INTO `barrio` VALUES (1,'Albertdi',1),(2,'Nueva Cordoba',1),(3,'Las Rosas',1),(4,'La Boca',2),(5,'Caballito',2);

INSERT INTO `calle` VALUES (1,'Santo Rosa',1),(2,'Jujuy',1),(3,'9 de Julio',1),(4,'Rondeu',2),(5,'Independencia',2),(6,'Bs As',2),(7,'Los alemanes',3),(8,'La posta',3),(9,'Martinoli',3),(10,'Tevez',4),(11,'Riquelme',4),(12,'Palermo',4),(13,'Tupac',5),(14,'Shegua',5),(15,'Unicornio',5);

INSERT INTO `domicilio` VALUES (1,1,111),(2,1,112),(3,1,113),(4,2,221),(5,2,222),(6,2,223),(7,3,331),(8,3,332),(9,3,333),(10,4,441),(11,4,442),(12,4,443),(13,5,551),(14,5,512),(15,5,563),(16,6,698),(17,6,698),(18,6,687),(19,7,789),(20,7,756),(21,7,723),(22,8,841),(23,8,896),(24,8,832),(25,9,952),(26,9,963),(27,9,941),(28,10,101),(29,10,102),(30,10,103),(31,11,114),(32,11,115),(33,11,116),(34,12,127),(35,12,128),(36,12,129),(37,13,136),(38,13,134),(39,13,135),(40,14,141),(41,14,142),(42,14,143),(43,15,157),(44,15,158),(45,15,159);



INSERT INTO `cliente` VALUES (2363212,'Ofelia','Ganimedez',28,'4512326'),(11111111,'Clark','Kent',14,'7458569653'),(32685249,'Wendel','Crum',15,'85296453'),(36222458,'Miguel','Ohara',37,'524823695'),(45213698,'Harry','Potter',13,'481516234'),(52563645,'Andrea','Varovich',5,'4245856'),(55228635,'Sergio','Juarez',1,'55224466'),(66633366,'Antonio','Manrique',10,'5555444'),(69536884,'Micaela','Lomevari',7,'4754849'),(74185456,'Biath','Ekhem',9,'35169868683'),(74589621,'Luke','Skywalker',11,'3513696869'),(85296375,'Leonard','Nimoy',12,'254265948'),(85666124,'Marcel','Heredia',19,'321652963'),(96586324,'Andrew','Stones',8,'48548492'),(96587532,'Legolas','Greenleaf',10,'3512474847');

INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231546, 'Leonard','McCoy',16,'4545126','2027-01-20',NULL,2,1);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231547, 'Mr','Spock',17,'965856','2030-01-6',NULL,2,1);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231548, 'James','Kirk',18,'1258639','2033-03-22',NULL,2,1);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231549, 'Han','Solo',19,'41526378','1980-07-13',NULL,1,1);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231550, 'Malcom','Reynols',20,'986532856','2005-08-18','2012-04-16',1,0);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231551, 'Jacob','Tam',21,'1548526','2005-04-08','2016-05-28',2,0);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231552, 'Henry','Morgan',22,NULL,'2008-05-27',NULL,1,1);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231553, 'James','Howlett',23,NULL,'2000-06-20',NULL,1,0);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231554, 'Peter','Parker',24,'45124512','2006-02-03',NULL,1,1);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231555, 'Mercy','Graves',25,'96852369','2009-11-22','2012-12-21',2,0);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231556, 'Ignotus','Peverell',26,NULL,NULL,NULL,2,0);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231557, 'Amadeus','Arkham',27,'7534695','2006-03-30','2010-8-19',2,0);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231558, 'Lucius','Fox',28,'1515263','2003-06-10',NULL,2,1);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231559, 'Victor','Frankenstein',29,NULL,'2001-02-22','2009-10-16',1,0);
INSERT INTO `cable`.`empleado` (`dni`,`nombre`,`apellido`,`domicilioId`,`telefono`,`fechaInicio`,`fechaFin`,`cargoId`,`activo`) VALUES (1231560, 'Wyona','Earp',30,'78459658','2009-01-20',NULL,1,1);

INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('001','Claro','158523612',31);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('002','Personal','23156955',32);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('003','Movistar','745863215',33);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('004','Dagobah','9658685',34);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('005','Krypton','7418547',35);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('006','Mitocondria','1516152',36);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('007','Eucalipto','326982',37);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('008','Hawkings','6325663255',38);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('009','Mordekainen','8547458',39);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('010','Zod','9658569',40);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('011','Minerva','36741256',41);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('012','Persefone','48494845',42);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('013','Terremoto','741741741',43);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('014','QETYNLP','745896321',44);
INSERT INTO `cable`.`operadora` (`cuit`,`razonSocial`,`telefono`,`domicilioId`) VALUES ('015','Eleven','321456987',45);


INSERT INTO `pedido` VALUES (1,'2020-06-21 02:25:32','2020-07-03 03:00:00',1,2363212,1),(2,'2020-06-21 02:25:32','2020-06-04 03:00:00',2,2363212,2),(3,'2020-06-21 02:25:32','2020-06-20 03:00:00',3,52563645,3),(4,'2020-06-21 02:25:32','2020-05-20 03:00:00',4,45213698,3),(5,'2020-06-21 02:25:32','2020-06-25 03:00:00',5,52563645,2),(6,'2020-06-21 02:25:32','2020-06-23 03:00:00',4,11111111,1),(7,'2020-06-21 02:25:32','2020-06-24 03:00:00',4,69536884,2),(8,'2020-06-21 02:25:32','2020-06-30 03:00:00',7,74589621,1),(9,'2020-06-21 02:25:32','2020-08-28 03:00:00',6,2363212,3),(10,'2020-06-21 02:25:32','2020-05-01 03:00:00',8,96587532,2),(11,'2020-06-21 02:25:32','2020-07-09 03:00:00',9,74589621,3),(12,'2020-06-21 02:25:32','2020-08-17 03:00:00',12,36222458,1),(13,'2020-06-21 02:25:32','2020-09-21 03:00:00',2,55228635,1),(14,'2020-06-21 02:25:32','2020-06-05 03:00:00',13,74185456,3),(15,'2020-06-21 02:25:32','2020-04-02 03:00:00',14,96586324,2),(20,'2020-06-14 22:27:52','2020-07-02 03:00:00',1,55228635,2),(21,'2020-06-14 22:27:52','2020-07-02 03:00:00',2,66633366,2),(22,'2020-06-14 22:27:52','2020-07-02 03:00:00',3,85666124,3),(23,'2020-06-14 22:27:52','2020-07-02 03:00:00',4,2363212,1),(24,'2020-06-14 22:27:52','2020-07-02 03:00:00',5,36222458,2),(25,'2020-06-14 22:27:52','2020-07-02 03:00:00',6,52563645,3),(26,'2020-06-28 03:00:00','2020-07-14 03:00:00',6,52563645,1);

INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('1', 'uno', '1231549', '1', '1');
INSERT INTO `cable`.`visita` (`pedidoId`, `fecha`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('1', '2020-06-30', 'uno', '1231549', '2', '2');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('2', 'dos', '1231550', '3', '3');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('3', 'tres', '1231550', '1', '4');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('4', 'cuatro', '1231552', '2', '4');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('5', 'cinco', '1231552', '1', '3');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('6', 'seis', '1231553', '2', '2');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('7', 'siete', '1231553', '3', '1');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('8', 'ocho', '1231554', '2', '3');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('9', 'nueve', '1231554', '1', '4');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('10', 'diez', '1231559', '3', '1');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('11', 'once', '1231559', '2', '2');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('12', 'doce', '1231559', '1', '3');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('13', 'trece', '1231560', '2', '1');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('14', 'catorce', '1231560', '3', '2');
INSERT INTO `cable`.`visita` (`pedidoId`, `observacion`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('15', 'quince', '1231560', '3', '3');

INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('1', '2020-06-12 16:34:04', '1231556', 'no funciona');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('2', '2020-06-12 16:34:05', '1231555', 'no funciona');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('3', '2020-06-12 16:34:05', '1231554', 'no funciona');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('4', '2020-06-12 16:34:05', '1231553', 'mala calidad del servicio');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('5', '2020-06-12 16:34:05', '1231552', 'mala calidad del servicio');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('6', '2020-06-12 16:34:05', '1231551', 'mala calidad del servicio');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('7', '2020-06-12 16:34:05', '1231550', 'mala calidad del servicio');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('8', '2020-06-12 16:34:05', '1231549', 'interrupcion constante del servicio');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('9', '2020-06-12 16:34:05', '1231548', 'interrupcion constante del servicio');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('10', '2020-06-12 16:34:05', '1231547', 'interrupcion constante del servicio');
INSERT INTO `cable`.`reclamo` (`pedidoId`, `fecha`, `empleadoDni`, `motivo`) VALUES ('11', '2020-06-12 16:34:05', '1231546', 'interrupcion constante del servicio');

INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('1', '1');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('2', '2');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('3', '3');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('2', '1');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('2', '4');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('3', '5');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('1', '4');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('2', '6');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('3', '7');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('1', '10');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('2', '11');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('3', '12');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('1', '13');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('2', '14');
INSERT INTO `cable`.`estadoPedido` (`estadoId`, `pedidoId`) VALUES ('3', '15');


INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('1', '2020-06-12 16:34:04', '1');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('2', '2020-06-12 16:34:05', '2');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('3', '2020-06-12 16:34:05', '2');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('4', '2020-06-12 16:34:05', '1');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('5', '2020-06-12 16:34:05', '2');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('6', '2020-06-12 16:34:05', '2');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('7', '2020-06-12 16:34:05', '1');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('8', '2020-06-12 16:34:05', '2');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('9', '2020-06-12 16:34:05', '2');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('10', '2020-06-12 16:34:05', '1');
INSERT INTO `cable`.`estadoReclamoReferencia` (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`) VALUES ('11', '2020-06-12 16:34:05', '2');


INSERT INTO `cable`.`barrio` (`Id`, `nombre`, `ciudadId`) VALUES ('6', 'Caracas', '1');
INSERT INTO `cable`.`calle` (`id`, `nombre`, `barrioId`) VALUES ('16', 'Pegaso', '6');
INSERT INTO `cable`.`cliente` (`dni`, `nombre`, `apellido`, `domicilioId`, `telefono`) VALUES ('82514', 'Malcom', 'Merlyn', '16', '4212587');

INSERT INTO `cable`.`domicilio` (`id`, `calleId`, `altura`) VALUES ('46', '16', '526');



INSERT INTO `cable`.`visita` (`pedidoId`, `fecha`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('20', '2020-06-14 19:27:53', '1231552', '1', '1');
INSERT INTO `cable`.`visita` (`pedidoId`, `fecha`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('21', '2020-06-15 19:27:53', '1231552', '2', '2');
INSERT INTO `cable`.`visita` (`pedidoId`, `fecha`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('22', '2020-06-16 19:27:53', '1231552', '3', '3');
INSERT INTO `cable`.`visita` (`pedidoId`, `fecha`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('23', '2020-06-17 19:27:53', '1231552', '1', '1');
INSERT INTO `cable`.`visita` (`pedidoId`, `fecha`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('24', '2020-06-18 19:27:53', '1231552', '2', '2');
INSERT INTO `cable`.`visita` (`pedidoId`, `fecha`, `empleadoDni`, `resultadoId`, `tipoVisitaId`) VALUES ('25', '2020-06-19 19:27:53', '1231552', '3', '3');







