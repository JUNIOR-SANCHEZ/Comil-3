/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.33-MariaDB : Database - comil3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`comil3` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `comil3`;

/*Table structure for table `cargos_funciones_personal` */

DROP TABLE IF EXISTS `cargos_funciones_personal`;

CREATE TABLE `cargos_funciones_personal` (
  `id_cargos_funciones_personal` int(11) NOT NULL AUTO_INCREMENT,
  `cargo_funcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_cargos_funciones_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `cargos_funciones_personal` */

insert  into `cargos_funciones_personal`(`id_cargos_funciones_personal`,`cargo_funcion`) values (1,'Cargo 1'),(2,'Cargo 2'),(3,'cargo 3');

/*Table structure for table `dependencias` */

DROP TABLE IF EXISTS `dependencias`;

CREATE TABLE `dependencias` (
  `id_dependencias` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_dependencias`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `dependencias` */

insert  into `dependencias`(`id_dependencias`,`nombre`) values (1,'laboratorio de ingles bachillerato');

/*Table structure for table `estados_civiles` */

DROP TABLE IF EXISTS `estados_civiles`;

CREATE TABLE `estados_civiles` (
  `id_estados_civiles` int(11) NOT NULL AUTO_INCREMENT,
  `estado_civil` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_estados_civiles`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `estados_civiles` */

insert  into `estados_civiles`(`id_estados_civiles`,`estado_civil`) values (1,'soltero'),(2,'casado'),(3,'divorciado'),(4,'union/libre');

/*Table structure for table `fecha_permisos` */

DROP TABLE IF EXISTS `fecha_permisos`;

CREATE TABLE `fecha_permisos` (
  `id_fecha_permisos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `numero` int(11) NOT NULL,
  `solicitud_permiso` int(11) NOT NULL,
  PRIMARY KEY (`id_fecha_permisos`),
  KEY `s_p_f` (`solicitud_permiso`),
  CONSTRAINT `s_p_f` FOREIGN KEY (`solicitud_permiso`) REFERENCES `solicitud_permisos` (`id_solicitud_permisos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `fecha_permisos` */

insert  into `fecha_permisos`(`id_fecha_permisos`,`fecha`,`numero`,`solicitud_permiso`) values (1,'2018-08-31',3,13),(2,'2018-09-04',0,15),(3,'2018-09-05',3,16);

/*Table structure for table `generos` */

DROP TABLE IF EXISTS `generos`;

CREATE TABLE `generos` (
  `id_generos` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_generos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `generos` */

insert  into `generos`(`id_generos`,`genero`) values (1,'masculino'),(2,'femenino');

/*Table structure for table `hoja_vida_equipos` */

DROP TABLE IF EXISTS `hoja_vida_equipos`;

CREATE TABLE `hoja_vida_equipos` (
  `id_hoja_vida_equipos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_emision` datetime NOT NULL,
  `codigo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `responsable_f` int(11) NOT NULL,
  `cargo_funcion_f` int(11) NOT NULL,
  `dependencia_f` int(50) NOT NULL,
  PRIMARY KEY (`id_hoja_vida_equipos`),
  KEY `cargos_funciones` (`cargo_funcion_f`),
  KEY `dependencias` (`dependencia_f`),
  KEY `responsable` (`responsable_f`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `hoja_vida_equipos` */

/*Table structure for table `horas_permiso` */

DROP TABLE IF EXISTS `horas_permiso`;

CREATE TABLE `horas_permiso` (
  `id_horas_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora_salida` time NOT NULL,
  `hora_entrada` time NOT NULL,
  `solicitud_permiso` int(11) NOT NULL,
  PRIMARY KEY (`id_horas_permiso`),
  KEY `s_p_h` (`solicitud_permiso`),
  CONSTRAINT `s_p_h` FOREIGN KEY (`solicitud_permiso`) REFERENCES `solicitud_permisos` (`id_solicitud_permisos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `horas_permiso` */

insert  into `horas_permiso`(`id_horas_permiso`,`fecha`,`hora_salida`,`hora_entrada`,`solicitud_permiso`) values (1,'2018-09-04','07:30:00','09:00:00',14),(2,'0000-00-00','07:50:00','10:00:00',17),(3,'2018-08-31','12:00:00','14:00:00',18);

/*Table structure for table `marcas_equipos` */

DROP TABLE IF EXISTS `marcas_equipos`;

CREATE TABLE `marcas_equipos` (
  `id_marca_cp` int(11) NOT NULL AUTO_INCREMENT,
  `marca_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_marca_cp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `marcas_equipos` */

insert  into `marcas_equipos`(`id_marca_cp`,`marca_nombre`) values (1,'HP');

/*Table structure for table `motivo_permisos` */

DROP TABLE IF EXISTS `motivo_permisos`;

CREATE TABLE `motivo_permisos` (
  `id_motivo_permisos` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(25) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_motivo_permisos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `motivo_permisos` */

insert  into `motivo_permisos`(`id_motivo_permisos`,`motivo`) values (1,'asuntos personales'),(2,'enfermedad'),(3,'calamidad domestica'),(4,'capacitacion');

/*Table structure for table `permisos` */

DROP TABLE IF EXISTS `permisos`;

CREATE TABLE `permisos` (
  `id_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `key` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `permisos` */

insert  into `permisos`(`id_permiso`,`permiso`,`key`) values (1,'Tareas de administracion','admin_access'),(2,'add news','new_news'),(3,'edit news','edit_news'),(4,'delete news','delete_news'),(5,'Dpto. de Talento Humano','admin_dptoTalHum'),(6,'Dpto. de Centro de Computo','admin_dptoCenCom');

/*Table structure for table `permisos_role` */

DROP TABLE IF EXISTS `permisos_role`;

CREATE TABLE `permisos_role` (
  `role` int(11) NOT NULL,
  `permiso` int(11) NOT NULL,
  `valor` tinyint(4) NOT NULL,
  PRIMARY KEY (`role`,`permiso`),
  KEY `role` (`role`),
  KEY `permiso` (`permiso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `permisos_role` */

insert  into `permisos_role`(`role`,`permiso`,`valor`) values (1,1,1),(1,2,1),(1,3,1),(1,4,1),(2,2,1),(2,3,1),(2,4,1),(2,5,1),(3,6,1);

/*Table structure for table `permisos_usuario` */

DROP TABLE IF EXISTS `permisos_usuario`;

CREATE TABLE `permisos_usuario` (
  `usuario` int(11) NOT NULL,
  `permiso` int(11) NOT NULL,
  `valor` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`usuario`,`permiso`),
  KEY `permiso` (`permiso`),
  KEY `permisos_usuario_ibfk_2` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `permisos_usuario` */

/*Table structure for table `personal` */

DROP TABLE IF EXISTS `personal`;

CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `correo_institucional` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `tipo_sangre` int(11) NOT NULL,
  `genero` int(11) NOT NULL,
  `estado_civil` int(11) NOT NULL,
  `estado_laboral` int(1) NOT NULL,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `personal` */

insert  into `personal`(`id_personal`,`nombres`,`apellidos`,`cedula`,`direccion`,`email`,`correo_institucional`,`telefono`,`fecha_nacimiento`,`tipo_sangre`,`genero`,`estado_civil`,`estado_laboral`) values (1,'moran pineda lourde beatriz','','0702681016','arenillas calle leonor roldan y 11 de noviembre','dlulymp@hotmail.com','mplbeatriz','0998359208','1973-04-15',1,0,0,0),(5,'Juan Diego','Leon Aguirre','070666666','direccion','email@email.com','correo@correo.com','258741','2018-08-23',4,1,1,1),(6,'Diego Armando','Mera hidalgo','0708888888','Direccion','email@email.com','Correo@correo.com','23355','2018-08-17',4,1,2,1);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

insert  into `roles`(`id_role`,`role`) values (1,'Administrador'),(2,'TalentoHumano'),(3,'CentroDeComputo'),(4,'Usuario');

/*Table structure for table `solicitud_permisos` */

DROP TABLE IF EXISTS `solicitud_permisos`;

CREATE TABLE `solicitud_permisos` (
  `id_solicitud_permisos` int(11) NOT NULL AUTO_INCREMENT,
  `persona` int(11) NOT NULL,
  `motivo` int(11) NOT NULL,
  `tipo_permiso` int(11) NOT NULL,
  PRIMARY KEY (`id_solicitud_permisos`),
  KEY `s_p_m` (`motivo`),
  KEY `s_p_t` (`tipo_permiso`),
  CONSTRAINT `s_p_m` FOREIGN KEY (`motivo`) REFERENCES `motivo_permisos` (`id_motivo_permisos`),
  CONSTRAINT `s_p_t` FOREIGN KEY (`tipo_permiso`) REFERENCES `tipo_permisos` (`id_tipo_permisos`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `solicitud_permisos` */

insert  into `solicitud_permisos`(`id_solicitud_permisos`,`persona`,`motivo`,`tipo_permiso`) values (13,6,1,1),(14,1,3,2),(15,1,3,2),(16,1,4,1),(17,1,4,2),(18,1,2,1);

/*Table structure for table `tipo_permisos` */

DROP TABLE IF EXISTS `tipo_permisos`;

CREATE TABLE `tipo_permisos` (
  `id_tipo_permisos` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_permiso` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_tipo_permisos`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `tipo_permisos` */

insert  into `tipo_permisos`(`id_tipo_permisos`,`tipo_permiso`) values (1,'inputable'),(2,'no imputable');

/*Table structure for table `tipos_sangre` */

DROP TABLE IF EXISTS `tipos_sangre`;

CREATE TABLE `tipos_sangre` (
  `id_tipos_sangre` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_sangre` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_tipos_sangre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `tipos_sangre` */

insert  into `tipos_sangre`(`id_tipos_sangre`,`tipo_sangre`) values (1,'A-'),(2,'A+'),(3,'B-'),(4,'B+'),(5,'AB-'),(6,'AB+'),(7,'O+'),(8,'O-');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ocupacion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `fecha` date NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombre`,`imagen`,`usuario`,`pass`,`email`,`phone`,`ocupacion`,`role`,`estado`,`fecha`,`codigo`) values (1,NULL,'user.png','SrtoLeon','5bae17944cfa8bd5587a430e4a48c9ec0ce68219','leon@leon.com',NULL,NULL,2,1,'2018-08-09',NULL),(2,NULL,'user.png','SartoSanchez','5bae17944cfa8bd5587a430e4a48c9ec0ce68219','sanchez@sanchez.com',NULL,NULL,3,1,'2018-08-09',NULL);

/* Procedure structure for procedure `addPersonal` */

/*!50003 DROP PROCEDURE IF EXISTS  `addPersonal` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addPersonal`(
    nombres_personal varchar(50),
    apellidos_personal varchar(50),
    cedula_personal varchar(11),
    direccion_personal varchar(150),
    email_personal varchar(50),
    correo_institucional_personal varchar(50),
    telefono_personal varchar(11),
    fecha_nacimiento_personal VARCHAR(20),
    tipo_sangre_personal int,
    genero_personal int,
    estado_civil_personal int,
    estado_laboral_personal int   
    )
BEGIN
    
    insert into personal 
    (nombres,apellidos,cedula,direccion,
     email,correo_institucional,telefono,
     fecha_nacimiento,tipo_sangre,genero,
     estado_civil,estado_laboral)
     values
     (nombres_personal,apellidos_personal,
     cedula_personal,direccion_personal,
     email_personal,correo_institucional_personal,
     telefono_personal,fecha_nacimiento_personal,
     tipo_sangre_personal,genero_personal,
     estado_civil_personal,estado_laboral_personal
     );
    END */$$
DELIMITER ;

/* Procedure structure for procedure `addSolicitudPermisoFecha` */

/*!50003 DROP PROCEDURE IF EXISTS  `addSolicitudPermisoFecha` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addSolicitudPermisoFecha`(
	persona_permiso int,
	motivo_permiso int,
	tipo_permiso_permiso tinyint,
	fecha_p varchar(25),
	numero int
)
BEGIN
	declare id_a int;
	declare id_d int;
	SELECT id_solicitud_permisos INTO id_a FROM solicitud_permisos ORDER BY id_solicitud_permisos DESC LIMIT 1;
	insert into solicitud_permisos 
	values 
	(null,persona_permiso,motivo_permiso,
	 tipo_permiso_permiso);
	 
	select id_solicitud_permisos into id_d from solicitud_permisos ORDER BY id_solicitud_permisos DESC LIMIT 1;
	
	if id_d > id_a then
	insert into fecha_permisos values (null,fecha_p,numero,id_d);
	end if;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `addSolicitudPermisoHora` */

/*!50003 DROP PROCEDURE IF EXISTS  `addSolicitudPermisoHora` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addSolicitudPermisoHora`(
	persona_permiso INT,
	motivo_permiso INT,
	tipo_permiso_permiso TINYINT,
	fecha_p VARCHAR(25),
	hora_salida_p varchar(25),
	hora_entrada_p varchar(25)
    )
BEGIN
    
    
	DECLARE id_a INT DEFAULT 0;
	DECLARE id_d INT DEFAULT 0;
	SELECT id_solicitud_permisos INTO id_a FROM solicitud_permisos ORDER BY id_solicitud_permisos DESC LIMIT 1;
	INSERT INTO solicitud_permisos 
	VALUES 
	(NULL,persona_permiso,motivo_permiso,
	 tipo_permiso_permiso);
	 
	SELECT id_solicitud_permisos INTO id_d FROM solicitud_permisos ORDER BY id_solicitud_permisos DESC LIMIT 1;
	
	IF id_d > id_a THEN
	INSERT INTO horas_permiso VALUES (NULL,fecha_p,hora_salida_p,hora_entrada_p,id_d);
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `addUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `addUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addUser`(
    user_u varchar(15),
    email_u varchar(50),
    pass_u varchar(50),
    image_u varchar(100)
    )
BEGIN
    
    insert into usuarios 
    (usuarios.`usuario`,usuarios.`email`,usuarios.`pass`,usuarios.`fecha`,usuarios.`role`,usuarios.`imagen`,usuarios.`estado`)
     values (user_u,email_u,pass_u,now(),1,image_u,1);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getPersonalDatosBasicos` */

/*!50003 DROP PROCEDURE IF EXISTS  `getPersonalDatosBasicos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getPersonalDatosBasicos`(
dato varchar(50)
)
BEGIN
	SELECT p.id_personal as id,CONCAT(p.nombres,' ',p.apellidos) AS nombres, p.direccion,p.`cedula`,p.`email`,p.`correo_institucional` 
	FROM personal p
	where CONCAT(p.nombres,' ',p.apellidos) like concat('%',dato,'%')
	or p.cedula LIKE CONCAT('%',dato,'%');
    END */$$
DELIMITER ;

/* Procedure structure for procedure `solicitudesIngresadas` */

/*!50003 DROP PROCEDURE IF EXISTS  `solicitudesIngresadas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `solicitudesIngresadas`()
BEGIN
	select 
	s.`id_solicitud_permisos` as id, p.`id_personal` as id_p ,concat(p.`nombres`,' ',p.`apellidos`) as nombres,
	m.`motivo`,p.`cedula`
	from solicitud_permisos s, personal p, motivo_permisos m
	where s.`persona`= p.`id_personal`
	group by p.nombres;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `solicitudesIngresadasIdFecha` */

/*!50003 DROP PROCEDURE IF EXISTS  `solicitudesIngresadasIdFecha` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `solicitudesIngresadasIdFecha`(
    id_personal_v int
    )
BEGIN
    
    SELECT 
	CONCAT(p.`apellidos`,' ',p.`nombres`) AS nombres,
	m.`motivo`,t.`tipo_permiso`,f.`fecha`,f.`numero`
	FROM solicitud_permisos s, personal p, motivo_permisos m,tipo_permisos t,fecha_permisos f
	WHERE s.`persona`= p.`id_personal`
	AND s.`motivo`=m.`id_motivo_permisos`
	and s.`tipo_permiso` = t.`id_tipo_permisos`
	and f.`solicitud_permiso` = s.`id_solicitud_permisos`
	and p.id_personal = id_personal_v;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `solicitudesIngresadasIdHora` */

/*!50003 DROP PROCEDURE IF EXISTS  `solicitudesIngresadasIdHora` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `solicitudesIngresadasIdHora`(
    id_personal_v int
    )
BEGIN
    
    SELECT 
	CONCAT(p.`apellidos`,' ',p.`nombres`) AS nombres,
	m.`motivo`,t.`tipo_permiso`,h.`fecha`,h.`hora_salida`,h.`hora_entrada`
	FROM solicitud_permisos s, personal p, motivo_permisos m,tipo_permisos t,horas_permiso h
	WHERE s.`persona`= p.`id_personal`
	AND s.`motivo`=m.`id_motivo_permisos`
	and s.`tipo_permiso` = t.`id_tipo_permisos`
	and h.`solicitud_permiso` = s.`id_solicitud_permisos`
	and p.id_personal = id_personal_v;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `userlogin` */

/*!50003 DROP PROCEDURE IF EXISTS  `userlogin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `userlogin`(
	user_login varchar(50),
	pass_login varchar(50) 
    
    )
BEGIN
    SELECT u.`role`,u.`id`,u.`usuario`, r.role AS nombre_role FROM usuarios u,roles r 
WHERE u.role = r.id_role
AND usuario = user_login
AND pass = pass_login;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
