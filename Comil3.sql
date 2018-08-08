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

/*Table structure for table `contacincaseofemergency` */

DROP TABLE IF EXISTS `contacincaseofemergency`;

CREATE TABLE `contacincaseofemergency` (
  `id_contacincaseofemergency` int(11) NOT NULL AUTO_INCREMENT,
  `nameandlast` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `phonenumber` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_contacincaseofemergency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `contacincaseofemergency` */

/*Table structure for table `familywithdisabilities` */

DROP TABLE IF EXISTS `familywithdisabilities`;

CREATE TABLE `familywithdisabilities` (
  `id_familywithdisabilities` int(11) NOT NULL AUTO_INCREMENT,
  `nameandlast` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `disability` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_familywithdisabilities`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `familywithdisabilities` */

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*Data for the table `permisos` */

insert  into `permisos`(`id_permiso`,`permiso`,`key`) values (1,'Tareas de administracion','admin_access'),(2,'add news','new_news'),(3,'edit news','edit_news'),(4,'delete news','delete_news');

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

insert  into `permisos_role`(`role`,`permiso`,`valor`) values (1,1,1),(1,2,1),(1,3,1),(1,4,1),(2,2,1),(2,3,1),(2,4,1),(3,2,1),(3,3,1);

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
  `nameandlast` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `placeofbirth` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `identificationcard` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `homeaddress` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `institutionalemail` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `phonenumber` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `dateofadmission` date NOT NULL,
  `spousename` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `numberofchildren` int(11) DEFAULT NULL,
  `bloodtype` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `civilstatus` int(11) DEFAULT NULL,
  `academictitle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_personal`,`nameandlast`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `personal` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `roles` */

insert  into `roles`(`id_role`,`role`) values (1,'Administrador'),(2,'Gestor'),(3,'Editor'),(4,'Usuario');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nombre`,`imagen`,`usuario`,`pass`,`email`,`phone`,`ocupacion`,`role`,`estado`,`fecha`,`codigo`) values (1,'comil3.ed','user.png','admin','5bae17944cfa8bd5587a430e4a48c9ec0ce68219','comil@comil.edu.ec',NULL,NULL,1,1,'2018-08-03',NULL),(2,'comil3.ed','user.png','gestor','5bae17944cfa8bd5587a430e4a48c9ec0ce68219','comil@comil.com',NULL,NULL,2,1,'2018-08-06',NULL),(3,'comil3.ed','user.png','editor','5bae17944cfa8bd5587a430e4a48c9ec0ce68219','comi3l@comil.edu.ec',NULL,NULL,3,1,'2018-08-06',NULL);

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
