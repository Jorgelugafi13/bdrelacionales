-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:13:40
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
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Yuriel', 'Torres Landeros', '23325061070614', '2004-04-08', 1, 'ever.torres23@cetis107.edu.mx', '6677309261'),
(2, 'Luis Mario', 'Carrillo Vega', '23325061070678', '2008-10-09', 1, 'luis.carrillo23@cetis107.edu.mx', '6971130887'),
(3, 'Isaac', 'Salomon Rendon', '23325061070610', '2008-06-08', 1, 'isaac.salomon23@cetis107.edu.mx', '6677910586'),
(4, 'Ramon Esteban', 'Valenzuela Zavala', '23325061070716', '2008-06-09', 1, 'esteban.valenzuela@icloud.com', '6678407236'),
(5, 'Juan Alberto', 'Trejo Alvarado', '23325061070715', '2008-08-22', 1, 'juan.trejo23@cetis107.edu.mx', '667746267353'),
(6, 'Lizeth Abigail', 'Salcido Ramirez', '23325061070721', '2008-03-13', 0, 'lizeth.salcido23@cetis107.edu.mx', '6676547893'),
(7, 'Emiliano ', 'Ojeda Quintero', '23325061070702', '2008-04-28', 1, 'emiliano.ojeda23@cetis107.edu.mx', '6678278874'),
(8, 'Mateo', 'Ibarra Gastelum', '23325061070484', '2008-06-21', 1, 'mateo.ibar09@gmail.com', '6678619006'),
(9, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-03-12', 1, 'ivan.torres@gmail.com', '6679913009'),
(10, 'Hector Aaron ', 'Ortiz Serrano', '23325060870750', '2008-08-15', 1, 'hector.ortiz23@cetis107.edu.mx', '6673583222'),
(11, 'Hugo Alejandro', 'Rubio Maldonado', '23325061070557', '2008-08-27', 1, 'metaspike@gmail.com', '6674567842'),
(12, 'Sergio Braulio', 'Martines Felix', '23325061070466', '2008-08-14', 1, 'unapersonna@gmail.com', '6677354275');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidade`
--

CREATE TABLE `especialidade` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidade`
--

INSERT INTO `especialidade` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Progamacion', 'La formación que ofrece la carrera de Técnico en Programación permite al egresado, a través de la articulación de saberes de diversos campos,\r\nrealizar actividades dirigidas al desarrollo de software de aplicación en plataformas de escritorio, Web y móviles,utilizando los paradigmas de\r\nprogramación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'BD NO RELACIONALES', 4),
(2, 'Ingles 4', 4),
(3, 'Temas Mates 1', 4),
(4, 'RS 4', 4),
(5, 'BD Relacionales', 4),
(6, 'Reacciones Quimicas', 4),
(7, 'Ciencias Sociales 3', 4),
(8, 'Historia 1', 4),
(9, 'Tutorias', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidade`
--
ALTER TABLE `especialidade`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
