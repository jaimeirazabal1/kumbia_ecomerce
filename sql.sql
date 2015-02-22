-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2015 a las 15:15:52
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
-- Estructura de tabla para la tabla `acerca`
--

CREATE TABLE IF NOT EXISTS `acerca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `acerca`
--

INSERT INTO `acerca` (`id`, `html`) VALUES
(1, '<h2>Contexto hist&oacute;rico y sociocultural</h2>\r\n\r\n<p><a href="http://commons.wikimedia.org/wiki/File:Tokugawa_Ieyasu2.JPG"><img alt="" src="http://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Tokugawa_Ieyasu2.JPG/220px-Tokugawa_Ieyasu2.JPG" style="height:293px; width:220px" /></a></p>\r\n\r\n<p>El&nbsp;<a href="http://es.wikipedia.org/wiki/Sh%C5%8Dgun">sog&uacute;n</a>&nbsp;<a href="http://es.wikipedia.org/wiki/Tokugawa_Ieyasu">Tokugawa Ieyasu</a>&nbsp;(?? ??<a href="http://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s"><strong>?</strong></a>&nbsp;<a href="http://es.wikipedia.org/wiki/1543">1543</a>&nbsp;&ndash;&nbsp;<a href="http://es.wikipedia.org/wiki/1616">1616</a>), fundador del<a href="http://es.wikipedia.org/wiki/Shogunato_Tokugawa">sogunato Tokugawa</a>.</p>\r\n\r\n<p>Art&iacute;culo principal:&nbsp;<a href="http://es.wikipedia.org/wiki/Shogunato_Tokugawa">Sogunato Tokugawa</a></p>\r\n\r\n<p>El&nbsp;<a href="http://es.wikipedia.org/wiki/Shogunato_Tokugawa">sogunato Tokugawa</a>&nbsp;adopt&oacute; una pol&iacute;tica que centraliz&oacute; el poder alrededor de su sede en&nbsp;<a href="http://es.wikipedia.org/wiki/Edo">Edo</a>. El mapa feudal de los daimios se reorden&oacute; dr&aacute;sticamente, con una serie de casas colaterales (<em><a href="http://es.wikipedia.org/wiki/Shinpan">shinpan</a></em>) capitaneadas por las &laquo;Tres Casas&raquo; (<em>Sanke</em>) que descend&iacute;an del fundador del&nbsp;<a href="http://es.wikipedia.org/wiki/Clan_Tokugawa">clan Tokugawa</a>,&nbsp;<a href="http://es.wikipedia.org/wiki/Tokugawa_Ieyasu">Ieyasu</a>, y ten&iacute;an el privilegio de proporcionar los sucesores al sogunato si la l&iacute;nea hereditaria principal se extingu&iacute;a;<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-Whitney_Hall_152-159-4">4</a>&nbsp;el grupo m&aacute;s numeroso, de lealtad absoluta y con&nbsp;<a href="http://es.wikipedia.org/wiki/Han_(Jap%C3%B3n)">feudos</a>&nbsp;de peque&ntilde;o tama&ntilde;o, eran los daimios afines al sog&uacute;n (<em><a href="http://es.wikipedia.org/wiki/Fudai">fudai</a></em>),<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-Whitney_Hall_152-159-4">4</a>&nbsp;que eran los que hab&iacute;an apoyado a&nbsp;<a href="http://es.wikipedia.org/wiki/Tokugawa_Ieyasu">Tokugawa Ieyasu</a>&nbsp;despu&eacute;s de la muerte de&nbsp;<a href="http://es.wikipedia.org/wiki/Toyotomi_Hideyoshi">Toyotomi Hideyoshi</a>, sobre todo durante la&nbsp;<a href="http://es.wikipedia.org/wiki/Batalla_de_Sekigahara">Batalla de Sekigahara</a>; por &uacute;ltimo, estaban los &laquo;se&ntilde;ores externos&raquo; (<em><a href="http://es.wikipedia.org/wiki/Tozama">tozama</a></em>), daimios que hab&iacute;an apoyado al bando de los Toyotomi y que se rindieron frente al sogunato despu&eacute;s de Sekigahara o la&nbsp;<a href="http://es.wikipedia.org/wiki/Asedio_de_Osaka">ca&iacute;da de Osaka</a>.<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-5">5</a>&nbsp;Para 1651 el sogunato hab&iacute;a desarrollado una serie de reglamentaciones que garantizaban su autoridad sobre el emperador y su corte, los daimios y las &oacute;rdenes religiosas.<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-Whitney_Hall_152-159-4">4</a></p>\r\n\r\n<p>Una de las medidas de control que tuvo consecuencias de mayor alcance fue el<em><a href="http://es.wikipedia.org/wiki/Sankin_k%C5%8Dtai">sankin k?tai</a></em>: los daimios estaban obligados a mantener una residencia en Edo, donde ten&iacute;an a sus mujeres e hijos y un s&eacute;quito adecuado en la que resid&iacute;an alternadamente.<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-6">6</a>&nbsp;Edo se convirti&oacute; en el n&uacute;cleo de la administraci&oacute;n sogunal y la ciudad, que se form&oacute; alrededor del amplio conjunto de las residencias de los daimios y los distritos samur&aacute;is, creci&oacute; hasta ser la mayor del pa&iacute;s, generando al tiempo una red nacional de carreteras y canales navegables que comunicaban con las distantes ciudades-castillo de los daimios.<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-Whitney_Hall_152-159-4">4</a>Esto condujo al desarrollo de una nueva clase burguesa, los&nbsp;<em><a href="http://es.wikipedia.org/wiki/Ch%C5%8Dnin">ch?nin</a></em>, formada por artesanos y comerciantes que atend&iacute;an las necesidades de daimios y samur&aacute;is en las ciudades.<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-Whitney_Hall_182-7">7</a>&nbsp;Los samur&aacute;is desarrollaron una cultura enfocada en la filosof&iacute;a y el saber cl&aacute;sico, incorporando los valores militares del&nbsp;<em>bushi</em>, dando como resultado el&nbsp;<em><a href="http://es.wikipedia.org/wiki/Bushid%C5%8D">bushid?</a></em>, el &laquo;camino del guerrero&raquo;. Por su lado, la nueva clase burguesa desarroll&oacute; una rica cultura del entretenimiento referida principalmente a cuestiones sentimentales,<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-Whitney_Hall_196-8">8</a>&nbsp;cuyo ideal lleg&oacute; a ser el &laquo;mundo flotante&raquo; (<em><a href="http://es.wikipedia.org/wiki/Ukiyo">ukiyo</a></em>), el mundo de la elegancia y la diversi&oacute;n popular. Por otro lado, a imitaci&oacute;n de los samur&aacute;is, los&nbsp;<em>ch?nin</em>&nbsp;aspiraban a alcanzar en la pr&aacute;ctica del comercio las cualidades de diligencia, honestidad, honor, lealtad y frugalidad del bushid?, en lo que se ha dado en llamar el&nbsp;<em>ch?nind?</em>, el &laquo;camino del&nbsp;<em>ch?nin</em>&raquo;.<a href="http://es.wikipedia.org/wiki/Ihara_Saikaku#cite_note-Whitney_Hall_206-207-9">9</a></p>\r\n');

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
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `direccion` (`direccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `descripcion`, `direccion`, `fecha`) VALUES
(1, 'El email del administrador', 'jaimeirazabal1@gmail.com', '2015-02-22 13:28:55'),
(3, 'Número telefónico del administrador', '04143299925', '2015-02-22 13:31:47');

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
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `html`) VALUES
(1, '<h1>Comercio electr&oacute;nico</h1>\r\n\r\n<p>El&nbsp;<strong>comercio electr&oacute;nico</strong>, tambi&eacute;n conocido como&nbsp;<em><strong>e-commerce</strong></em>&nbsp;(<em>electronic commerce</em>&nbsp;en&nbsp;<a href="http://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s">ingl&eacute;s</a>), consiste en la compra y venta de&nbsp;<a href="http://es.wikipedia.org/wiki/Producto_(marketing)">productos</a>&nbsp;o de&nbsp;<a href="http://es.wikipedia.org/wiki/Servicio_(econom%C3%ADa)">servicios</a>&nbsp;a trav&eacute;s de medios electr&oacute;nicos, tales como&nbsp;<a href="http://es.wikipedia.org/wiki/Internet">Internet</a>&nbsp;y otras&nbsp;<a href="http://es.wikipedia.org/wiki/Redes_inform%C3%A1ticas">redes inform&aacute;ticas</a>. Originalmente el t&eacute;rmino se aplicaba a la realizaci&oacute;n de transacciones mediante medios electr&oacute;nicos tales como el&nbsp;<a href="http://es.wikipedia.org/wiki/Intercambio_electr%C3%B3nico_de_datos">Intercambio electr&oacute;nico de datos</a>, sin embargo con el advenimiento de la&nbsp;<a href="http://es.wikipedia.org/wiki/Internet">Internet</a>&nbsp;y la&nbsp;<a href="http://es.wikipedia.org/wiki/World_Wide_Web">World Wide Web</a>&nbsp;a mediados de los a&ntilde;os 90 comenz&oacute; a referirse principalmente a la venta de bienes y servicios a trav&eacute;s de Internet, usando como forma de pago medios electr&oacute;nicos, tales como las&nbsp;<a href="http://es.wikipedia.org/wiki/Tarjeta_de_cr%C3%A9dito">tarjetas de cr&eacute;dito</a>.</p>\r\n\r\n<p>La cantidad de comercio llevada a cabo electr&oacute;nicamente ha crecido de manera extraordinaria debido a Internet. Una gran variedad de comercio se realiza de esta manera, estimulando la creaci&oacute;n y utilizaci&oacute;n de innovaciones como la<a href="http://es.wikipedia.org/w/index.php?title=Transferencia_de_fondos_electr%C3%B3nica&amp;action=edit&amp;redlink=1">transferencia de fondos electr&oacute;nica</a>, la&nbsp;<a href="http://es.wikipedia.org/wiki/Administraci%C3%B3n_de_la_cadena_de_suministro">administraci&oacute;n de cadenas de suministro</a>, el&nbsp;<a href="http://es.wikipedia.org/wiki/Marketing_en_Internet">marketing en Internet</a>, el&nbsp;<a href="http://es.wikipedia.org/wiki/OLTP">procesamiento de transacciones en l&iacute;nea</a>&nbsp;(OLTP), el&nbsp;<a href="http://es.wikipedia.org/wiki/Intercambio_electr%C3%B3nico_de_datos">intercambio electr&oacute;nico de datos</a>&nbsp;(EDI), los sistemas de administraci&oacute;n del&nbsp;<a href="http://es.wikipedia.org/wiki/Inventario">inventario</a>&nbsp;y los sistem<span style="line-height:1.6">as automatizados de recolecci&oacute;n de datos.</span></p>\r\n\r\n<p><a href="http://commons.wikimedia.org/wiki/File:%D0%9F%D0%BE-%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D1%83.jpg" style="line-height: 23.1111106872559px;"><img alt="??-???????.jpg" src="http://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/%D0%9F%D0%BE-%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D1%83.jpg/250px-%D0%9F%D0%BE-%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81%D1%83.jpg" style="height:172px; width:250px" /></a></p>\r\n\r\n<p>La mayor parte del comercio electr&oacute;nico consiste en la compra y venta de productos o servicios entre personas y empresas, sin embargo un porcentaje considerable del comercio electr&oacute;nico consiste en la adquisic<span style="line-height:1.6">i&oacute;n de art&iacute;culos virtuales (software y derivados en su mayor&iacute;a), tales como el acceso a contenido &quot;premium&quot; de un sitio web.</span></p>\r\n');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

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
(15, 1, '2015-02-17 19:15:24', '19:02:52'),
(16, 1, '2015-02-17 23:34:56', NULL),
(17, 1, '2015-02-22 12:42:04', '08:34:16'),
(18, 1, '2015-02-22 13:04:39', '08:35:06'),
(19, 1, '2015-02-22 13:07:35', '08:59:16'),
(20, 1, '2015-02-22 13:31:15', '09:13:30'),
(21, 1, '2015-02-22 13:45:17', NULL);

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
