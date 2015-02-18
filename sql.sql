-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2015 a las 01:02:03
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `kumbia_ecomerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE IF NOT EXISTS `articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `precio` varchar(30) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `descripcion` text,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `nombre`, `precio`, `categoria_id`, `descripcion`, `fecha`) VALUES
(3, 'Patineta 1', '30 $', 1, 'Patineta 1', '2015-02-17 20:37:20'),
(4, 'Patineta 2', '30 $', 1, 'Patineta 2', '2015-02-17 21:30:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripcion`, `fecha`) VALUES
(1, 'Patinetas', 'Patinetas varias', '2015-02-17 20:27:23'),
(2, 'Ruedas de Patinetas', 'Ruedas de Patinetas varias', '2015-02-17 20:28:40'),
(3, 'Sweters', 'Sweters varios', '2015-02-17 20:29:30'),
(4, 'Lijas de Patineta', 'Lijas de Patineta', '2015-02-17 20:30:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE IF NOT EXISTS `imagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articulo_id` int(11) NOT NULL,
  `descripcion` text,
  `url` varchar(200) NOT NULL,
  `imagen_inicial` tinyint(1) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url_320x150` varchar(200) DEFAULT NULL,
  `url_800x300` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `articulo_id`, `descripcion`, `url`, `imagen_inicial`, `fecha`, `url_320x150`, `url_800x300`) VALUES
(23, 4, 'esta patineta es linda', 'uploads/2015-02-17_17-14-11_tabla1.jpg', 0, '2015-02-17 22:14:11', 'uploads/_320x150_2015-02-17_17-14-11_tabla1.jpg', 'uploads/_800x300_2015-02-17_17-14-11_tabla1.jpg'),
(24, 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate assumenda voluptas delectus ea dolores ex, a officia dolorum rerum unde. Tempore fugiat quis vero doloremque assumenda id cupiditate. Soluta, esse?', 'uploads/2015-02-17_17-14-11_tabla2.jpg', 0, '2015-02-17 22:14:11', 'uploads/_320x150_2015-02-17_17-14-11_tabla2.jpg', 'uploads/_800x300_2015-02-17_17-14-11_tabla2.jpg'),
(25, 4, NULL, 'uploads/2015-02-17_17-14-11_tabla3.jpg', 1, '2015-02-17 22:14:11', 'uploads/_320x150_2015-02-17_17-14-11_tabla3.jpg', 'uploads/_800x300_2015-02-17_17-14-11_tabla3.jpg'),
(26, 4, NULL, 'uploads/2015-02-17_17-14-11_tabla4.jpg', 0, '2015-02-17 22:14:11', 'uploads/_320x150_2015-02-17_17-14-11_tabla4.jpg', 'uploads/_800x300_2015-02-17_17-14-11_tabla4.jpg'),
(27, 4, NULL, 'uploads/2015-02-17_17-14-11_tabla5.jpg', 0, '2015-02-17 22:14:11', 'uploads/_320x150_2015-02-17_17-14-11_tabla5.jpg', 'uploads/_800x300_2015-02-17_17-14-11_tabla5.jpg'),
(28, 4, NULL, 'uploads/2015-02-17_17-14-11_tabla6.jpg', 0, '2015-02-17 22:14:11', 'uploads/_320x150_2015-02-17_17-14-11_tabla6.jpg', 'uploads/_800x300_2015-02-17_17-14-11_tabla6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE IF NOT EXISTS `sesion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hora_salida` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id`, `user_id`, `fecha`, `hora_salida`) VALUES
(3, 1, '2015-02-15 14:27:19', '09:57:28'),
(4, 1, '2015-02-15 14:27:57', '09:58:06'),
(5, 1, '2015-02-17 01:16:59', NULL),
(6, 1, '2015-02-17 01:18:49', '21:13:31'),
(7, 1, '2015-02-17 01:43:33', '21:47:00'),
(8, 1, '2015-02-17 02:32:25', '22:02:43'),
(9, 1, '2015-02-17 02:33:09', NULL),
(10, 1, '2015-02-17 02:40:26', '14:26:47'),
(11, 1, '2015-02-17 18:56:48', '14:26:58'),
(12, 1, '2015-02-17 18:56:59', NULL),
(13, 1, '2015-02-17 19:11:47', '14:43:05'),
(14, 1, '2015-02-17 19:14:12', '14:45:22'),
(15, 1, '2015-02-17 19:15:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `role`) VALUES
(1, 'jaimeirazabal1@gmail.com', '7d3ff5e583a1727c07bd911d427b514b', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
