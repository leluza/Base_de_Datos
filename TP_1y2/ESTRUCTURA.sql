DROP DATABASE IF EXISTS cable;
CREATE DATABASE cable;
USE cable;


CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);



CREATE  TABLE `cable`.`barrio` (
  `Id` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(255) NULL ,
  `ciudadId` INT NULL ,
  PRIMARY KEY (`Id`) ,
  INDEX `barrioCiudad_idx` (`ciudadId` ASC) ,
  CONSTRAINT `barrioCiudad`
    FOREIGN KEY (`ciudadId` )
    REFERENCES `cable`.`ciudad` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE  TABLE `cable`.`calle` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(255) NULL ,
  `barrioId` INT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `calleBarrio_idx` (`barrioId` ASC) ,
  CONSTRAINT `calleBarrio`
    FOREIGN KEY (`barrioId` )
    REFERENCES `cable`.`barrio` (`Id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



CREATE  TABLE `cable`.`domicilio` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `calleId` INT NULL ,
  `altura` INT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `domicilioCalle_idx` (`calleId` ASC) ,
  CONSTRAINT `domicilioCalle`
    FOREIGN KEY (`calleId` )
    REFERENCES `cable`.`calle` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);





CREATE TABLE `cliente` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `domicilioId` int(11) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `clienteDomicilio_idx` (`domicilioId`),
  CONSTRAINT `clienteDomicilio` FOREIGN KEY (`domicilioId`) REFERENCES `domicilio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);


CREATE TABLE `cable`.`tipoServicio` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `cable`.`estado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `cable`.`resultado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));


CREATE TABLE `cable`.`tipoVisita` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `cable`.`estadoReclamo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `cable`.`cargo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `operadora` (
  `cuit` int(11) NOT NULL,
  `razonSocial` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `domicilioId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cuit`),
  KEY `operadoraDomicilio_idx` (`domicilioId`),
  CONSTRAINT `operadoraDomicilio` FOREIGN KEY (`domicilioId`) REFERENCES `domicilio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;


CREATE TABLE `cable`.`pedido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fechaSolicitud` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `fechaCompromiso` TIMESTAMP NULL,
  `operadoraCuit` INT NOT NULL,
  `clienteDNI` INT NOT NULL,
  `tipoServicioId` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `operadora_idx` (`operadoraCuit` ASC),
  INDEX `clientedni_idx` (`clienteDNI` ASC),
  INDEX `tiposervicio_idx` (`tipoServicioId` ASC),
  CONSTRAINT `operadora`
    FOREIGN KEY (`operadoraCuit`)
    REFERENCES `cable`.`operadora` (`cuit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `clientedni`
    FOREIGN KEY (`clienteDNI`)
    REFERENCES `cable`.`cliente` (`dni`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tiposervicio`
    FOREIGN KEY (`tipoServicioId`)
    REFERENCES `cable`.`tipoServicio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


CREATE TABLE `cable`.`estadoPedido` (
  `estadoId` INT NOT NULL,
  `fecha` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `pedidoId` INT NOT NULL,
  PRIMARY KEY (`estadoId`, `pedidoId`),
  INDEX `pedido_idx` (`pedidoId` ASC),
  CONSTRAINT `estado`
    FOREIGN KEY (`estadoId`)
    REFERENCES `cable`.`estado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `pedido`
    FOREIGN KEY (`pedidoId`)
    REFERENCES `cable`.`pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);




CREATE TABLE `empleado` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `fechaInicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaFin` timestamp NULL DEFAULT NULL,
  `cargoId` int(11) DEFAULT NULL,
  `activo` bit(1) DEFAULT NULL,
  `domicilioId` int(11) DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `cargo_idx` (`cargoId`),
  KEY `empleadoDomicilio_idx` (`domicilioId`),
  CONSTRAINT `cargo` FOREIGN KEY (`cargoId`) REFERENCES `cargo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `empleadoDomicilio` FOREIGN KEY (`domicilioId`) REFERENCES `domicilio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;




CREATE TABLE `cable`.`visita` (
  `pedidoId` INT NOT NULL,
  `fecha` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `observacion` VARCHAR(255) NULL,
  `empleadoDni` INT NOT NULL,
  `resultadoId` INT NOT NULL,
  `tipoVisitaId` INT NOT NULL,
  PRIMARY KEY (`pedidoId`, `fecha`),
  INDEX `empleado_idx` (`empleadoDni` ASC),
  INDEX `resultado_idx` (`resultadoId` ASC),
  INDEX `tipoVisita_idx` (`tipoVisitaId` ASC),
  CONSTRAINT `pedidoVisita`
    FOREIGN KEY (`pedidoId`)
    REFERENCES `cable`.`pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `empleadoVisita`
    FOREIGN KEY (`empleadoDni`)
    REFERENCES `cable`.`empleado` (`dni`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `resultadoVIsita`
    FOREIGN KEY (`resultadoId`)
    REFERENCES `cable`.`resultado` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tipoVisita`
    FOREIGN KEY (`tipoVisitaId`)
    REFERENCES `cable`.`tipoVisita` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



CREATE TABLE `cable`.`reclamo` (
  `pedidoId` INT NOT NULL,
  `fecha` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empleadoDni` INT NOT NULL,
  `motivo` VARCHAR(255) NULL,
  PRIMARY KEY (`pedidoId`, `fecha`),
  INDEX `empleadoReclamo_idx` (`empleadoDni` ASC),
  CONSTRAINT `empleadoReclamo`
    FOREIGN KEY (`empleadoDni`)
    REFERENCES `cable`.`empleado` (`dni`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



CREATE TABLE `cable`.`estadoReclamoReferencia` (
  `reclamoPedidoId` INT NOT NULL,
  `ReclamoFecha` TIMESTAMP NOT NULL,
  `estadoReclamoId` INT NOT NULL,
  `fecha` TIMESTAMP  DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reclamoPedidoId`, `ReclamoFecha`, `estadoReclamoId`),
  INDEX `estadoReclamoId_idx` (`estadoReclamoId` ASC),
  CONSTRAINT `reclamoPedidoERR`
    FOREIGN KEY (`reclamoPedidoId` , `ReclamoFecha`)
    REFERENCES `cable`.`reclamo` (`pedidoId` , `fecha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `estadoReclamoId`
    FOREIGN KEY (`estadoReclamoId`)
    REFERENCES `cable`.`estadoReclamo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

