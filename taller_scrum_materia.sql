-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: taller_scrum
-- ------------------------------------------------------
-- Server version	5.6.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `cuatrimestre` int(11) NOT NULL,
  `m_1` varchar(45) NOT NULL,
  `m_2` varchar(45) NOT NULL,
  `m_3` varchar(45) NOT NULL,
  `m_4` varchar(45) NOT NULL,
  `m_5` varchar(45) NOT NULL,
  `m_6` varchar(45) NOT NULL,
  `m_7` varchar(45) NOT NULL,
  PRIMARY KEY (`cuatrimestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Ingles I','Valores del ser','Álgebra lineal','Mat. discretas','Electricidad y magnetismo','Algoritmos','Administración'),(2,'Ingles II','Inteligencia emocional','C´lculo ventorial','Probabilidad y estadística','Fundamento de redes','Prog. estructurada','Técnicas de prog'),(3,'Ingles III','Desarrollo interpersonal','Ecuaciones diferenciales','Investigación de op.','Redes','Prog. orientada a objetos','Sistemas digitales'),(4,'Ingles IV','Hab. del pensamiento','Arq. de computadoras','Métodos númericos','Estructuras de datos','Programación visual','Estancia I'),(5,'Ingles V','Habilidades org.','Adm. de proyectos','Sistemas operativos','Est.. de datos avanzadas','Programación web ','Lenguajes y autómatas'),(6,'Ingles VI','Ética profesional','Ing. de software','Análisis de sitemas','Bases de datos','Graficación y multimedia','Compiladores e interpretes'),(7,'Ingles VII','Ing. económica ','Calidad de software','Diseño de sistemas','Base de datos distribuidas','Prog. concurrente','Estancia II'),(8,'Ingles VIII','Inteligencia artificial','Reingeniería','Mtto. de sistemas','D. de sis. cliente/servidor','D. de aplicaciones móviles','Planeación de proyectos'),(9,'Ingles IX','Diseño de sis. inteligentes','Arq. orientadas a servicios','Seguridad informática','Adm. de centros de com. ','Tec. de la info.  comunicaciones','P. de investigación');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-28 14:33:50
