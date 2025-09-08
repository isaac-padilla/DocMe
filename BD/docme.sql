-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2025 a las 17:19:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `docme`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `ID_Usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`ID_Usu`) VALUES
(1),
(27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `ID_Cita` int(11) NOT NULL,
  `FechaCita` datetime NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL,
  `ID_Paciente` int(11) DEFAULT NULL,
  `ID_Med` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`ID_Cita`, `FechaCita`, `Motivo`, `Estado`, `ID_Paciente`, `ID_Med`) VALUES
(1, '2023-11-23 11:16:34', 'Odontologia', 'Reservado', 26, 8),
(2, '0000-00-00 00:00:00', 'Dolor en las muñecas', NULL, NULL, NULL),
(3, '2025-09-10 09:00:00', 'Consulta general', 'Reservado', 26, 2),
(4, '2025-09-11 10:30:00', 'Pediatría', 'Pendiente', 26, 5),
(5, '2025-09-12 14:00:00', 'Odontología', 'Reservado', 26, 8),
(6, '2025-09-13 15:30:00', 'Chequeo general', 'Pendiente', 26, 7),
(7, '2025-09-14 11:00:00', 'Control de rutina', 'Reservado', 26, 10),
(8, '2025-09-15 16:00:00', 'Limpieza dental', 'Pendiente', 26, 24),
(9, '2025-09-16 09:30:00', 'Dolor abdominal', 'Reservado', 26, 2),
(10, '2025-09-17 13:00:00', 'Revisión pediátrica', 'Pendiente', 26, 5),
(11, '2025-09-18 17:00:00', 'Extracción dental', 'Reservado', 26, 8),
(12, '2025-09-19 08:30:00', 'Examen médico', 'Pendiente', 26, 7),
(13, '2025-09-20 09:00:00', 'Consulta general', 'Reservado', 26, 2),
(14, '2025-09-21 11:00:00', 'Chequeo pediátrico', 'Pendiente', 26, 5),
(15, '2025-09-22 14:30:00', 'Control dental', 'Reservado', 26, 8),
(16, '2025-09-23 10:00:00', 'Dolor de cabeza', 'Pendiente', 28, 7),
(17, '2025-09-24 15:00:00', 'Chequeo general', 'Reservado', 28, 2),
(18, '2025-09-25 16:30:00', 'Limpieza dental', 'Pendiente', 28, 24),
(19, '2025-09-26 09:30:00', 'Examen médico anual', 'Reservado', 29, 10),
(20, '2025-09-27 13:00:00', 'Dolor abdominal', 'Pendiente', 29, 2),
(21, '2025-09-28 17:00:00', 'Odontología preventiva', 'Reservado', 29, 8),
(22, '2025-09-29 08:00:00', 'Chequeo pediátrico', 'Pendiente', 30, 5),
(23, '2025-09-30 12:00:00', 'Consulta general', 'Reservado', 30, 7),
(24, '2025-10-01 15:30:00', 'Control odontológico', 'Pendiente', 30, 24),
(25, '2025-10-02 10:30:00', 'Chequeo general', 'Reservado', 31, 2),
(26, '2025-10-03 14:00:00', 'Dolor estomacal', 'Pendiente', 31, 10),
(27, '2025-10-04 16:00:00', 'Revisión dental', 'Reservado', 31, 8),
(28, '2025-10-05 09:00:00', 'Chequeo pediátrico', 'Pendiente', 32, 5),
(29, '2025-10-06 11:30:00', 'Consulta general', 'Reservado', 32, 7),
(30, '2025-10-07 14:45:00', 'Ortodoncia', 'Pendiente', 32, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorios`
--

CREATE TABLE `consultorios` (
  `ID_Con` int(11) NOT NULL,
  `Codigo` varchar(10) DEFAULT NULL,
  `Desc_Con` varchar(100) DEFAULT NULL,
  `Disponibilidad` varchar(20) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consultorios`
--

INSERT INTO `consultorios` (`ID_Con`, `Codigo`, `Desc_Con`, `Disponibilidad`) VALUES
(3, '7896', 'Consultorio de medicina general', 'Activo'),
(4, '2345', 'Consultorio de atención pediátrica', 'Activo'),
(5, '5642', 'Consultorio de odontología', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `ID_Esp` int(11) NOT NULL,
  `Codigo_Esp` varchar(10) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`ID_Esp`, `Codigo_Esp`, `Descripcion`) VALUES
(1, '5674', 'Medicina general'),
(2, '5456', 'Pediatria'),
(3, '5447', 'Odontología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `ID_Usu` int(11) NOT NULL,
  `ID_Esp` int(11) NOT NULL,
  `ID_Con` int(11) NOT NULL,
  `Estado` varchar(20) DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`ID_Usu`, `ID_Esp`, `ID_Con`, `Estado`) VALUES
(2, 1, 3, 'Activo'),
(5, 2, 4, 'Activo'),
(7, 1, 3, 'Activo'),
(8, 3, 5, 'Activo'),
(10, 2, 4, 'Activo'),
(24, 3, 5, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `ID_Usu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`ID_Usu`) VALUES
(26),
(27),
(28),
(29),
(30),
(31),
(32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `ID_Rol` int(11) NOT NULL,
  `Rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`ID_Rol`, `Rol`) VALUES
(1, 'Administrador'),
(2, 'Paciente'),
(3, 'Medico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usu` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `User_Name` varchar(30) NOT NULL,
  `FechaNac` date DEFAULT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Identificacion` varchar(15) NOT NULL,
  `token_recovery_pass` varchar(45) DEFAULT NULL,
  `Estado` varchar(15) NOT NULL DEFAULT 'Activo',
  `ID_Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usu`, `Nombre`, `Apellido`, `Correo`, `Password`, `User_Name`, `FechaNac`, `Telefono`, `Identificacion`, `token_recovery_pass`, `Estado`, `ID_Rol`) VALUES
(1, 'Isaac', 'Padilla', 'kevinjp821@gmail.com', 'isaacpadilla28', 'isaacpadilla28', '2003-08-21', '302412534', '1424215215', NULL, 'Activo', 1),
(2, 'Miguel', 'Jose', 'juan@gmail.com', 'juan12', 'Juan24', '1998-11-12', '324234234', '43423423', NULL, 'Activo', 3),
(5, 'Fernando', 'Gimenez', 'fer@gmail.com', 'fernando12', 'Fernando12', '1992-11-13', '301242142', '214124124', NULL, 'Activo', 3),
(7, 'Jose', 'Miguel', 'jose@gmail.com', 'Josemiguel', 'Jose.Miguel', '1989-06-07', '124124214', '124215125', NULL, 'Activo', 3),
(8, 'Luis', 'Mendoza', 'luis@gmail.com', 'luis12', 'LuisMendoza', '1997-02-04', '4124124214', '214211525', NULL, 'Activo', 3),
(10, 'Juan', 'Gomez', 'juan23@gmail.com', 'juan12', 'Juan_G23', '2023-11-08', '24214214', '421125215', NULL, 'Activo', 3),
(24, 'Alfredo', 'Garcia', 'alfredo@gmail.com', 'alfredo12', 'Alfredo_90', '1994-06-08', '302955442', '5345366443', NULL, 'Activo', 3),
(26, 'Dario', 'Hernandez', 'dario.hernane@gmail.com', 'duvan12', 'Dario54', '2023-11-23', '214124214', '124214214', NULL, 'Activo', 2),
(27, 'Isaac', 'Padilla', 'isaacpadillla@example.com', 'isaacpadillla', 'isaacpadillla', '1995-01-01', '3000000000', '1000000000', NULL, 'Activo', 1),
(28, 'Ana', 'Martinez', 'ana.martinez@example.com', 'ana123', 'AnaMtz', '1990-03-15', '3001112222', '20000001', NULL, 'Activo', 2),
(29, 'Carlos', 'Perez', 'carlos.perez@example.com', 'carlos123', 'CarlosPz', '1985-07-20', '3001113333', '20000002', NULL, 'Activo', 2),
(30, 'Laura', 'Gomez', 'laura.gomez@example.com', 'laura123', 'LauraGmz', '1992-11-25', '3001114444', '20000003', NULL, 'Activo', 2),
(31, 'Mateo', 'Rodriguez', 'mateo.rodriguez@example.com', 'mateo123', 'MateoRod', '2000-09-10', '3001115555', '20000004', NULL, 'Activo', 2),
(32, 'Valentina', 'Lopez', 'valentina.lopez@example.com', 'valen123', 'ValenLp', '1998-01-05', '3001116666', '20000005', NULL, 'Activo', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`ID_Usu`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`ID_Cita`),
  ADD KEY `ID_Paciente` (`ID_Paciente`),
  ADD KEY `ID_Med` (`ID_Med`);

--
-- Indices de la tabla `consultorios`
--
ALTER TABLE `consultorios`
  ADD PRIMARY KEY (`ID_Con`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`ID_Esp`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD KEY `ID_Usu` (`ID_Usu`),
  ADD KEY `ID_Esp` (`ID_Esp`),
  ADD KEY `ID_Con` (`ID_Con`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`ID_Usu`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usu`),
  ADD KEY `ID_Rol` (`ID_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `ID_Cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `consultorios`
--
ALTER TABLE `consultorios`
  MODIFY `ID_Con` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `ID_Esp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `ID_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `administradores_ibfk_1` FOREIGN KEY (`ID_Usu`) REFERENCES `usuarios` (`ID_Usu`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`ID_Paciente`) REFERENCES `usuarios` (`ID_Usu`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`ID_Med`) REFERENCES `usuarios` (`ID_Usu`);

--
-- Filtros para la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD CONSTRAINT `medicos_ibfk_1` FOREIGN KEY (`ID_Usu`) REFERENCES `usuarios` (`ID_Usu`),
  ADD CONSTRAINT `medicos_ibfk_2` FOREIGN KEY (`ID_Esp`) REFERENCES `especialidad` (`ID_Esp`),
  ADD CONSTRAINT `medicos_ibfk_3` FOREIGN KEY (`ID_Con`) REFERENCES `consultorios` (`ID_Con`);

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_ibfk_1` FOREIGN KEY (`ID_Usu`) REFERENCES `usuarios` (`ID_Usu`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`ID_Rol`) REFERENCES `roles` (`ID_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
