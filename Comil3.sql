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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`comil3` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;

USE `comil3`;

/*Table structure for table `cargos_funciones` */

DROP TABLE IF EXISTS `cargos_funciones`;

CREATE TABLE `cargos_funciones` (
  `id_cargos_funciones` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_cargos_funciones`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `cargos_funciones` */

insert  into `cargos_funciones`(`id_cargos_funciones`,`nombre`) values (1,'responsable de laboratorio de ingles');

/*Table structure for table `dependencias` */

DROP TABLE IF EXISTS `dependencias`;

CREATE TABLE `dependencias` (
  `id_dependencias` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_dependencias`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `dependencias` */

insert  into `dependencias`(`id_dependencias`,`nombre`) values (1,'laboratorio de ingles bachillerato');

/*Table structure for table `estados_civiles_persona` */

DROP TABLE IF EXISTS `estados_civiles_persona`;

CREATE TABLE `estados_civiles_persona` (
  `id_estados_civiles_persona` int(11) NOT NULL AUTO_INCREMENT,
  `estado_vivil` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_estados_civiles_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `estados_civiles_persona` */

insert  into `estados_civiles_persona`(`id_estados_civiles_persona`,`estado_vivil`) values (1,'soltero'),(2,'casado'),(3,'divorciado'),(4,'union/libre');

/*Table structure for table `galeria` */

DROP TABLE IF EXISTS `galeria`;

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tema` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `galeria` */

insert  into `galeria`(`id`,`tema`,`descripcion`,`imagen`,`usuario`) values (19,'nmvc',' ,vcxmn,..x','upl_5acda54e93804.jpg',13);

/*Table structure for table `generos` */

DROP TABLE IF EXISTS `generos`;

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `generos` */

insert  into `generos`(`id_genero`,`genero`) values (1,'masculino'),(2,'femenino');

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

/*Table structure for table `marcas_equipos` */

DROP TABLE IF EXISTS `marcas_equipos`;

CREATE TABLE `marcas_equipos` (
  `id_marca_cp` int(11) NOT NULL AUTO_INCREMENT,
  `marca_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_marca_cp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `marcas_equipos` */

insert  into `marcas_equipos`(`id_marca_cp`,`marca_nombre`) values (1,'HP');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id_n` int(11) NOT NULL AUTO_INCREMENT,
  `theme_n` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `body_n` blob NOT NULL,
  `image_n` int(11) NOT NULL,
  `date_n` datetime NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_n`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `news` */

insert  into `news`(`id_n`,`theme_n`,`body_n`,`image_n`,`date_n`,`id_user`) values (6,'Manualidades','Destrezas manuales en nuestros usuarios Adultos Mayores de la unidad de atención “El Placer-La Loma” #FundacionSanJuanBautista #MiesMachala #ElGuabo.',0,'2018-03-24 14:14:27',1),(7,'Actividades Recreativas','Actividades Recreativas y Bailoterapia con los Adultos Mayores usuarios de la unidad de atención “18 de Octubre” de la ciudad de Machala. #FundacionSanJuanBautista #MiesMachala\r\n',0,'2018-03-25 10:52:12',1),(8,'Huertos','Plantando semillas para realizar Huertos Familiares en la unidad de atención “Tendales-La Maravilla” y realizando minga de limpieza en la sede 10 de Agosto. #FundacionSanJuanBautista #MiesMachala #ElGuabo ',0,'2018-03-25 10:58:32',1);

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
  `cedula` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `correo_institucional` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `tipo_sangre` int(11) NOT NULL,
  `genero` int(11) NOT NULL,
  `estado_civil` int(11) NOT NULL,
  `etado_laboral` int(1) NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id_personal`,`nombres`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `personal` */

insert  into `personal`(`id_personal`,`nombres`,`cedula`,`direccion`,`email`,`correo_institucional`,`telefono`,`fecha_nacimiento`,`tipo_sangre`,`genero`,`estado_civil`,`etado_laboral`,`apellidos`) values (1,'moran pineda lourde beatriz','0702681016','arenillas calle leonor roldan y 11 de noviembre','dlulymp@hotmail.com','mplbeatriz','0998359208','1973-04-15',1,0,0,0,NULL);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

insert  into `roles`(`id_role`,`role`) values (1,'Administrador'),(2,'TalentoHumano'),(3,'CentroDeComputo'),(4,'Usuario');

/*Table structure for table `tipos_sangre` */

DROP TABLE IF EXISTS `tipos_sangre`;

CREATE TABLE `tipos_sangre` (
  `id_tipos_sangre` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_sangres` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_tipos_sangre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `tipos_sangre` */

insert  into `tipos_sangre`(`id_tipos_sangre`,`tipo_sangres`) values (1,'A-'),(2,'A+'),(3,'B-'),(4,'B+'),(5,'AB-'),(6,'AB+'),(7,'O+'),(8,'O-');

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

/* Trigger structure for table `news` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `eliminarNoticia` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `eliminarNoticia` BEFORE DELETE ON `news` FOR EACH ROW BEGIN
    
	delete from comentarios where `comentarios`.`noticia` = old.id;
	
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
