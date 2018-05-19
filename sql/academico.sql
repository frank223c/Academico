-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-05-2018 a las 23:42:24
-- Versión del servidor: 5.7.21
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Volcando estructura de base de datos para academico
CREATE DATABASE IF NOT EXISTS `academico` /*!40100 DEFAULT CHARACTER SET
latin1 */;
USE `academico`;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL,
  `dni` varchar(15) NOT NULL,
  `paterno` varchar(30) NOT NULL,
  `materno` varchar(30) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idPersona`, `dni`, `paterno`, `materno`, `nombres`, `fechaNacimiento`, `email`, `direccion`) VALUES
(1, '12345678', 'Perez', 'Castillo', 'Juan Carlos', '1985-06-23', '', ''),
(2, '12345679', 'Paredes', 'Quispe', 'José Carlos', '1990-01-08', '', ''),
(3, '12345670', 'Mamani', 'Quispe', 'Juana María', '1998-05-12', '', ''),
(4, '42564835', 'Mamani', 'Quispe', 'Ruth Josefa', '1993-11-18', '', ''),
(5, '41657898', 'Jahuira', 'Paredes', 'Esmeralda', '1992-12-30', '', ''),
(6, '85326564', 'Zavala', 'Quispe', 'Juan Pedro', '1993-10-29', '', ''),
(7, '82326564', 'Mamani', 'Paredes', 'María Elena', '1999-10-29', '', ''),
(8, '84326164', 'Paredes', 'Quispe', 'Eleuterio', '1997-10-21', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `idPersona` int(11) NOT NULL,
  `codigo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`idPersona`, `codigo`) VALUES
(1, '142350'),
(2, '142304'),
(3, '142258'),
(4, '142212'),
(5, '142166'),
(6, '142120'),
(7, '142074'),
(8, '141982');
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`idPersona`,`codigo`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idPersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `FKPersona` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
