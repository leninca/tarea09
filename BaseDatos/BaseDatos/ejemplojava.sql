-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2025 a las 19:44:28
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
-- Base de datos: `ejemplojava`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(64) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `apellido` varchar(64) NOT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `direccion` varchar(64) NOT NULL,
  `correo` varchar(64) NOT NULL,
  `fecha_creado` datetime NOT NULL DEFAULT current_timestamp(),
  `telefono` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `apellido`, `dni`, `direccion`, `correo`, `fecha_creado`, `telefono`) VALUES
(1, 'lenin', 'campos ', '71779483', 'jr. jorge peralta', 'lenin123@gmail.com', '2025-05-28 10:42:28', '929238141'),
(2, 'silver', 'salazar', '71653498', 'membrillo', 'silver12@gmail.com', '2025-05-28 10:44:56', '983455678'),
(3, 'stacy', 'cammpos', '7163678', '', 'stacy1234@gmail.com', '2025-05-28 12:08:31', '987123564'),
(4, 'stacy', 'cammpos', '7163678', '', 'stacy1234@gmail.com', '2025-05-28 12:08:33', '987123564'),
(5, 'stacy', 'cammpos', '7163678', '', 'stacy1234@gmail.com', '2025-05-28 12:09:34', '987123564'),
(6, 'stacy', 'cammpos', '7163678', '', 'stacy1234@gmail.com', '2025-05-28 12:16:24', '987123564');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
