-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-12-2015 a las 22:18:07
-- Versión del servidor: 5.5.46-0ubuntu0.14.04.2
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `AcademyProcBD`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Actividad`
--

CREATE TABLE IF NOT EXISTS `Actividad` (
  `IdActividad` int(5) NOT NULL,
  `IdPTC` int(5) DEFAULT NULL,
  `Titulo` varchar(20) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Lista` varchar(40) DEFAULT NULL,
  `Puntuacion` int(3) DEFAULT NULL,
  `IdMateria` int(5) DEFAULT NULL,
  `Ncuatrimestre` int(2) DEFAULT NULL,
  `Grupo` varchar(1) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`IdActividad`),
  KEY `fk_IdMateria_Act_idx` (`IdMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Alumno`
--

CREATE TABLE IF NOT EXISTS `Alumno` (
  `IdAlumno` int(5) NOT NULL,
  `Matricula` int(6) DEFAULT NULL,
  `Cuatrimestre` int(2) DEFAULT NULL,
  PRIMARY KEY (`IdAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Calif_Evidencia`
--

CREATE TABLE IF NOT EXISTS `Calif_Evidencia` (
  `IdEvidencia` int(5) DEFAULT NULL,
  `NombreEvidencia` varchar(20) DEFAULT NULL,
  `CalifiEvi` int(3) DEFAULT NULL,
  KEY `fk_idEvidencia_cE_idx` (`IdEvidencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DirectorC`
--

CREATE TABLE IF NOT EXISTS `DirectorC` (
  `IdDC` int(5) NOT NULL,
  `Clave` int(4) NOT NULL,
  `Mimpartidas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdDC`,`Clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Evidencias`
--

CREATE TABLE IF NOT EXISTS `Evidencias` (
  `IdAlumno` int(5) DEFAULT NULL,
  `IdActividad` int(5) DEFAULT NULL,
  `PathEvidencia` varchar(40) DEFAULT NULL,
  `NombreEvidencia` varchar(20) DEFAULT NULL,
  `Matricula` int(6) DEFAULT NULL,
  `Grupo` varchar(1) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Asignatura` varchar(20) DEFAULT NULL,
  `Cuatrimestre` int(2) DEFAULT NULL,
  `Corte` int(1) DEFAULT NULL,
  KEY `fk_IdActividad_Evd_idx` (`IdActividad`),
  KEY `fk_IdAlumno_Evd` (`IdAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Horas`
--

CREATE TABLE IF NOT EXISTS `Horas` (
  `idMateria` int(5) NOT NULL,
  `Hora` int(5) NOT NULL,
  `Dia` int(2) NOT NULL,
  KEY `fk_Materia_idx` (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Lista`
--

CREATE TABLE IF NOT EXISTS `Lista` (
  `IdLista` int(5) NOT NULL,
  `IdPTC` int(5) DEFAULT NULL,
  `URL` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IdLista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Materias`
--

CREATE TABLE IF NOT EXISTS `Materias` (
  `IdMateria` int(11) NOT NULL,
  `Materia` varchar(30) DEFAULT NULL,
  `Cuatrimestre` int(2) DEFAULT NULL,
  `Duracion` int(3) DEFAULT NULL,
  `idProfesor` int(5) DEFAULT NULL,
  PRIMARY KEY (`IdMateria`),
  KEY `fk_Materias_1_idx` (`idProfesor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Materias_Seriadas`
--

CREATE TABLE IF NOT EXISTS `Materias_Seriadas` (
  `idMateria` int(5) NOT NULL,
  `Materia_Seriada` varchar(20) DEFAULT NULL,
  `Cuatrimestre` int(2) DEFAULT NULL,
  KEY `fk_MateriasSeriadas_1_idx` (`idMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Politicas`
--

CREATE TABLE IF NOT EXISTS `Politicas` (
  `IdPolitica` int(5) NOT NULL,
  `IdMateria` int(5) DEFAULT NULL,
  `IdPTC` int(5) DEFAULT NULL,
  `NCuatrimestre` int(2) DEFAULT NULL,
  `FontStyle` varchar(15) DEFAULT NULL,
  `FontSize` int(3) DEFAULT NULL,
  `Politicas` text,
  PRIMARY KEY (`IdPolitica`),
  KEY `fk_idMateria_Polit_idx` (`IdMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PTC`
--

CREATE TABLE IF NOT EXISTS `PTC` (
  `IdPTC` int(5) NOT NULL,
  `ClaveU` int(4) NOT NULL,
  `Mimpartidas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdPTC`,`ClaveU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Resultados`
--

CREATE TABLE IF NOT EXISTS `Resultados` (
  `calificacion` int(3) DEFAULT NULL,
  `comentarios` varchar(140) DEFAULT NULL,
  `idAlumno` int(5) DEFAULT NULL,
  `NombreAlumno` varchar(40) DEFAULT NULL,
  `Matricula` int(6) DEFAULT NULL,
  `Corte` int(2) DEFAULT NULL,
  `Asignatura` varchar(20) DEFAULT NULL,
  `Grupo` varchar(1) DEFAULT NULL,
  `Cuatrimestre` int(2) DEFAULT NULL,
  KEY `fk_idAlumno_Result_idx` (`idAlumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE IF NOT EXISTS `Usuario` (
  `Nombre` varchar(40) DEFAULT NULL,
  `ApellidoP` varchar(20) DEFAULT NULL,
  `ApellidoM` varchar(20) DEFAULT NULL,
  `Contrasena` varchar(16) DEFAULT NULL,
  `Correo` varchar(30) DEFAULT NULL,
  `Clave` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ver_Politicas`
--

CREATE TABLE IF NOT EXISTS `Ver_Politicas` (
  `idAlumno` int(5) DEFAULT NULL,
  `IdPolitica` int(5) DEFAULT NULL,
  `Respuesta` bit(1) DEFAULT NULL,
  `Votos` int(5) DEFAULT NULL,
  KEY `fk_idAlumno_verP_idx` (`idAlumno`),
  KEY `fk_idPolitica_verP_idx` (`IdPolitica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Actividad`
--
ALTER TABLE `Actividad`
  ADD CONSTRAINT `fk_IdMateria_Act` FOREIGN KEY (`IdMateria`) REFERENCES `Materias` (`idMateria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Calif_Evidencia`
--
ALTER TABLE `Calif_Evidencia`
  ADD CONSTRAINT `fk_idEvidencia_cE` FOREIGN KEY (`IdEvidencia`) REFERENCES `Evidencias` (`IdActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Evidencias`
--
ALTER TABLE `Evidencias`
  ADD CONSTRAINT `fk_IdActividad_Evd` FOREIGN KEY (`IdActividad`) REFERENCES `Actividad` (`IdActividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_IdAlumno_Evd` FOREIGN KEY (`IdAlumno`) REFERENCES `Alumno` (`IdAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Horas`
--
ALTER TABLE `Horas`
  ADD CONSTRAINT `fk_IdMateria_horas` FOREIGN KEY (`idMateria`) REFERENCES `Materias` (`idMateria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Materias`
--
ALTER TABLE `Materias`
  ADD CONSTRAINT `FK_IdPTC_Materias` FOREIGN KEY (`idProfesor`) REFERENCES `PTC` (`IdPTC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Materias_Seriadas`
--
ALTER TABLE `Materias_Seriadas`
  ADD CONSTRAINT `fk_IdMateria_MatS` FOREIGN KEY (`idMateria`) REFERENCES `Materias` (`IdMateria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Politicas`
--
ALTER TABLE `Politicas`
  ADD CONSTRAINT `fk_idMateria_Polit` FOREIGN KEY (`IdMateria`) REFERENCES `Materias` (`IdMateria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Resultados`
--
ALTER TABLE `Resultados`
  ADD CONSTRAINT `fk_idAlumno_Result` FOREIGN KEY (`idAlumno`) REFERENCES `Alumno` (`IdAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Ver_Politicas`
--
ALTER TABLE `Ver_Politicas`
  ADD CONSTRAINT `fk_idAlumno_verP` FOREIGN KEY (`idAlumno`) REFERENCES `Alumno` (`IdAlumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_idPolitica_verP` FOREIGN KEY (`IdPolitica`) REFERENCES `Politicas` (`IdPolitica`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
