-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2022 a las 17:53:04
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tickets`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equiposolucion`
--

CREATE TABLE `equiposolucion` (
  `idEquipoSolucion` int(11) NOT NULL,
  `nombreEquipoSolucion` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `equiposolucion`
--

INSERT INTO `equiposolucion` (`idEquipoSolucion`, `nombreEquipoSolucion`) VALUES
(1, 'soporte'),
(2, 'desarrollo'),
(3, 'Atn Clientes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoticket`
--

CREATE TABLE `estadoticket` (
  `idEstadoTicket` int(11) NOT NULL,
  `nombreEstadoTicket` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `estadoticket`
--

INSERT INTO `estadoticket` (`idEstadoTicket`, `nombreEstadoTicket`) VALUES
(1, 'Archivado'),
(2, 'Nuevo'),
(3, 'En Proceso'),
(4, 'Atendido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gravedadincidencia`
--

CREATE TABLE `gravedadincidencia` (
  `idGravedadIncidencia` int(11) NOT NULL,
  `nombreGravedadIncidencia` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `gravedadincidencia`
--

INSERT INTO `gravedadincidencia` (`idGravedadIncidencia`, `nombreGravedadIncidencia`) VALUES
(1, 'High'),
(2, 'Medium'),
(3, 'Low');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacionusuarioticket`
--

CREATE TABLE `relacionusuarioticket` (
  `idRelacionUsuarioTicket` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idTicket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `idTicket` int(11) NOT NULL,
  `tituloTicket` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fechaAlta` datetime NOT NULL DEFAULT current_timestamp(),
  `idUsuarioResponsable` int(11) DEFAULT NULL,
  `idTipoIncidencia` int(11) NOT NULL,
  `idGravedadIncidencia` int(11) NOT NULL,
  `versionSoftware` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcionProblema` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `idEstadoTicket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`idTicket`, `tituloTicket`, `fechaAlta`, `idUsuarioResponsable`, `idTipoIncidencia`, `idGravedadIncidencia`, `versionSoftware`, `descripcionProblema`, `idEstadoTicket`) VALUES
(1, 'Ticket 1', '2022-10-27 08:47:13', 1, 1, 2, 'v1.0', 'Primer ticket de prueba', 1),
(2, 'Ticket 2', '2022-10-27 08:47:13', 2, 2, 2, 'v1.0', 'Primer ticket de prueba 2', 2),
(3, 'Ticket 3', '2022-10-27 08:47:13', 1, 1, 2, 'v1.0', 'Primer ticket de prueba #3', 3),
(4, 'Ticket 4', '2022-10-27 08:47:13', 1, 2, 2, 'v1.0', 'Primer ticket de prueba 4', 2),
(5, 'Ticket 5', '2022-10-27 08:47:13', 2, 2, 2, 'v1.0', 'Primer ticket de prueba 5', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoincidencia`
--

CREATE TABLE `tipoincidencia` (
  `idTipoIncidencia` int(11) NOT NULL,
  `nombreTipoIncidencia` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tipoincidencia`
--

INSERT INTO `tipoincidencia` (`idTipoIncidencia`, `nombreTipoIncidencia`) VALUES
(1, 'Bug'),
(2, 'Feature');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `idEquipoSolucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `idEquipoSolucion`) VALUES
(1, 'Eduardo', 1),
(2, 'Citlalli', 2),
(3, 'Roman', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equiposolucion`
--
ALTER TABLE `equiposolucion`
  ADD PRIMARY KEY (`idEquipoSolucion`);

--
-- Indices de la tabla `estadoticket`
--
ALTER TABLE `estadoticket`
  ADD PRIMARY KEY (`idEstadoTicket`);

--
-- Indices de la tabla `gravedadincidencia`
--
ALTER TABLE `gravedadincidencia`
  ADD PRIMARY KEY (`idGravedadIncidencia`);

--
-- Indices de la tabla `relacionusuarioticket`
--
ALTER TABLE `relacionusuarioticket`
  ADD PRIMARY KEY (`idRelacionUsuarioTicket`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`idTicket`);

--
-- Indices de la tabla `tipoincidencia`
--
ALTER TABLE `tipoincidencia`
  ADD PRIMARY KEY (`idTipoIncidencia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equiposolucion`
--
ALTER TABLE `equiposolucion`
  MODIFY `idEquipoSolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estadoticket`
--
ALTER TABLE `estadoticket`
  MODIFY `idEstadoTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `gravedadincidencia`
--
ALTER TABLE `gravedadincidencia`
  MODIFY `idGravedadIncidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `relacionusuarioticket`
--
ALTER TABLE `relacionusuarioticket`
  MODIFY `idRelacionUsuarioTicket` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `idTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipoincidencia`
--
ALTER TABLE `tipoincidencia`
  MODIFY `idTipoIncidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
