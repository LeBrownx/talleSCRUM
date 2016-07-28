-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2016 a las 20:16:25
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taller_scrum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `idPTC` int(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `lista` varchar(50) NOT NULL,
  `puntuacion` varchar(15) NOT NULL,
  `corte` int(15) NOT NULL,
  `asignatura` varchar(50) NOT NULL,
  `cuatri` int(15) NOT NULL,
  `grupo` varchar(15) NOT NULL,
  `fecha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`idPTC`, `titulo`, `descripcion`, `lista`, `puntuacion`, `corte`, `asignatura`, `cuatri`, `grupo`, `fecha`) VALUES
(0, 'Hola', 'jekje', '', '', 0, '', 0, '', ''),
(0, 'Hola', 'jekje', '', '', 0, '', 0, '', ''),
(0, 'hmk,lVGBHNJMK,', 'THVBKLM', '', '', 0, '', 0, '', ''),
(0, 'Hola', 'Gracias Kevin :# xD', 'Primer lista', '', 1, 'Asignatura', 0, 'Grupo', '2016-07-06'),
(0, 'ytghjkl,Ã±', 'rtfhlÃ±,', 'Primer lista', '1', 1, 'Asignatura', 0, 'Grupo', '2016-07-19');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
