-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:28:26
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `num_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `num_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Sergio Braulio', 'Martinez Felix', '23325061070438', '2008-08-14', 0, 'sergio.martinez23@gmail.com', '6672075250'),
(2, 'Rubi esmeralda ', 'zepeda garcia', '23325061070476', '2007-09-29', 1, 'rubi.zepeda23@cetis107.edu.mx', '6672075299'),
(3, 'Jonathan Horus', 'Zazueta Hernandez', '23325061070488', '2008-04-09', 0, 'jonathan.zazueta23@cetis107.edu.mx', '6672075698'),
(4, 'Hugo Alejandro', 'Rubio Maldonado', '23325061070777', '2008-08-22', 0, 'Hugo.Rubio23@cetis107.edu.mx', '6672075245'),
(5, 'Frida Sofia', 'Sanchez Valenzuela', '23325061070665', '2008-01-10', 1, 'Frida.Sanchez23@cetis107.edu.mx', '6672075221'),
(6, 'Luis Angel', 'Perez Lozano', '23325061070666', '2008-08-09', 0, 'Luis.Perez23@cetis107.edu.mx', '6672075666'),
(7, 'Santiago', 'Lopez Aispuro', '23325061070477', '2008-04-20', 0, 'Santiago.Lopez23@cetis107.edu.mx', '6672075643'),
(8, 'Victor Manuel', 'Dias Gastelum', '23325061070532', '2008-08-16', 0, 'Victor.Dias23@cetis107.edu.mx', '6672075230'),
(9, 'Uriel', 'Rodriguez Rojo', '23325061070355', '2008-06-14', 0, 'uriel.rodriguez23@cetis107.edu.mx', '6674075665'),
(10, 'Bayron Uriel', 'Estrada Camacho', '23325061070985', '2008-12-09', 0, 'Bayron.Estrada23@cetis107.edu.mx', '6672087269'),
(11, 'Angel Guillermo', 'Wong Valenzuela', '23325061070439', '2008-05-26', 0, 'Angel.Wong23@cetis107.edu.mx', '6672098465'),
(12, 'Paolo Nicholas', 'Valdez Vernall', '23325061070652', '2008-11-18', 0, 'Paolo.Valdez23@cetis107.edu.mx', '6673876523'),
(13, 'Fernando ', 'Gamez Calderon', '23325061070231', '2008-06-19', 0, 'fernando.gamez23@cetis107.edu.mx', '6672298345'),
(14, 'Jorge Luis', 'Garcia Figueroa', '23325061070681', '2008-08-13', 0, 'Jorge.Garcia23@cetis107.edu.mx', '6671853228');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(1, 1, 13, 8),
(2, 2, 13, 9),
(3, 3, 13, 6),
(4, 4, 13, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `maestro_id` int(11) NOT NULL,
  `hora` time NOT NULL,
  `Aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `materia_id`, `maestro_id`, `hora`, `Aula`) VALUES
(1, 1, 2, '01:30:00', 'cc2'),
(2, 9, 7, '02:50:00', '14'),
(3, 6, 4, '04:30:00', '14'),
(4, 4, 2, '06:00:00', '14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `Nombre`, `Descripcion`) VALUES
(1, 'PROGRMAACION', 'ES LA MEJOR CARRERA LA VERDAD TODOS LE HACEN LOS MANDADOS, APRENDES LENGUAJES COMO C, JAVA, DART, SQ'),
(2, 'OFIMATICA', 'PAPIK, EN ESTA APRENDES EXCEL Y A NO HACER NADA'),
(3, 'CONSTRUCCION', 'AQUI APRENDEN A SER ALBAÑILES Y A HACER SUS PROPIAS CASAS A MANO'),
(4, 'CONTABILIDAD', 'PORFAVOR CARO VUELVE DEJHAME VER A LOS NIÑOS '),
(5, 'DISEÑO GRAFICO', 'HUELE MACHIN A VICTORIA SECRET DE VAINILLA EN PLENO CALOR 0/10 OJALA LO ELIMINEN'),
(6, 'ELECTRONICA', 'AQUI APRENDES A PRENDER FOCOS, LA MAYORIA ESSTA AHI PORQUE REPROBO\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
(1, 'Jose Francisco Rochin', 'rochin667@gmail.com', 0, '1997-05-21'),
(2, 'Jorge Ibarra', 'papik@gmail.com', 0, '1987-05-21'),
(3, 'Luis Alfonso', 'Alfonsoluis♠33@gmail.com', 0, '1999-02-11'),
(4, 'Teresa Mayle', 'TeressaMail@hotmail.com', 1, '1998-06-02'),
(5, 'Luis Carlos', 'Illili@gmail.com', 0, '1993-02-25'),
(6, 'Papik Millan', 'papikMamberroi@gmail.com', 0, '1999-08-09'),
(7, 'Flordayn', 'LainFlores@hotmail.com', 1, '1998-06-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `Nombre`, `Semestre`) VALUES
(1, 'BD NO RELACIONALES', 4),
(2, 'BD  RELACIONALES', 4),
(3, 'iNGLES', 4),
(4, 'HISTORIA', 4),
(5, 'QUIMICA', 4),
(6, 'TEMAS MATEMATICOS', 4),
(7, 'Ciencias Sociales', 4),
(8, 'Recursos Socioemocionales', 4),
(9, 'Tutoria', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Foreing_Key` (`materia_id`),
  ADD KEY `Foreing Key` (`maestro_id`),
  ADD KEY `hora` (`hora`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`);

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
