-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2016 a las 21:40:17
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comentarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `comentario` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_video`, `id_usuario`, `comentario`, `fecha`) VALUES
(1, 1, 1, 'Elegante el video!!!', '2016-06-02 16:49:56'),
(2, 1, 2, 'Este en un video epico', '2016-06-02 16:51:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idusuario` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(100) DEFAULT '',
  `usuario` varchar(100) DEFAULT NULL,
  `clave` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `fecha_tiempo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idusuario`, `nombre`, `usuario`, `clave`, `email`, `fecha`, `fecha_tiempo`) VALUES
(1, 'Miguel Angel Gonzalez', 'mig2793', '$2a$10$3utlxcr2i2zZU.JLYdQE1.u7q/xubs20LBuMtzlQcwgkakdfRbgM6', 'miguel.angel.gonzalez.pinto@hotmail.com', NULL, NULL),
(2, 'Ivan Dario Benavides', 'ivan', '$2a$10$L6ACLcFX479cTpzdOfdn7O1pWpV.q0CfyAf3yGLHf/l9vES8aQQL2', 'ivan@mail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `url_video` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `url_imagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `descripcion`, `url_video`, `url_imagen`) VALUES
(1, 'Don ramón vende globos y confeti', 'https://www.youtube.com/embed/PEhuS0MeQbI', 'img/chavo1.jpg'),
(2, 'Jugado a la casita', 'https://www.youtube.com/embed/G1YXm1v5YGQ', 'img/chavo2.jpg'),
(3, 'La muerte del señor barriga', 'https://www.youtube.com/embed/kSV4azcUNkY', 'img/chavo3.jpg'),
(4, 'Juegan a los atropellados', 'https://www.youtube.com/embed/9nX8lNh5LRQ', 'img/chavo4.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`,`id_video`,`id_usuario`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idusuario` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
