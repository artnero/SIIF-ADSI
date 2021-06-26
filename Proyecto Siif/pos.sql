-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2021 a las 22:55:29
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(7, 'Analgésicos', '2021-03-04 22:33:48'),
(8, 'Antialérgicos', '2021-03-04 22:33:59'),
(9, 'Antiinflamatorios', '2021-03-04 22:34:09'),
(10, 'Antipiréticos', '2021-03-04 22:34:16'),
(11, 'antihistamínicos', '2021-03-04 22:36:32'),
(12, 'antivirales', '2021-03-04 23:09:36'),
(14, 'abv', '2021-06-12 19:39:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(13, 'Jeisson', 123456789, 'Jeisson@siif.com', '(300) 000-0000', 'calle falsa 123 siempre viva', '1952-02-12', 39, '2021-05-23 09:32:13', '2021-05-23 14:32:13'),
(14, 'Usuario generico', 111111111, 'usuarioGenerico@gmail.com', '(300) 000-0000', 'calle 123 # 8b -10', '1999-01-01', 11, '2021-06-12 12:48:01', '2021-06-12 17:48:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(61, 11, '704', 'Loratadina', 'vistas/img/productos/1101/346.jpg', 106, 700, 1204, 1, '2021-06-12 03:35:56'),
(62, 7, '701', 'Tylenol', 'vistas/img/productos/701/670.jpg', 144, 1500, 2250, 7, '2021-06-12 17:48:01'),
(63, 7, '702', 'ibuprofeno', 'vistas/img/productos/702/387.jpg', 64, 2500, 3750, 18, '2021-06-12 17:48:01'),
(64, 7, '703', 'Dolex', 'vistas/img/productos/703/477.png', 48, 5000, 7500, 24, '2021-06-12 17:48:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(62, 'administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auNBBLc8w/FuEcdLaSXey2HXNycgpVW3G', 'Administrador', 'vistas/img/usuarios/admin/624.jpg', 1, '2021-06-12 13:32:32', '2021-06-12 18:32:32'),
(70, 'tecnico', 'tecnico', '$2a$07$asxx54ahjppf45sd87a5auXQsXfDR34Jh4dk6m13FJ4qTZs4N4j1G', 'Tecnico', 'vistas/img/usuarios/tecnico/229.jpg', 1, '2021-06-12 11:46:56', '2021-06-12 18:27:12'),
(71, 'auxiliar', 'AuxiliarPrueba', '$2a$07$asxx54ahjppf45sd87a5auXQsXfDR34Jh4dk6m13FJ4qTZs4N4j1G', 'Auxiliar', 'vistas/img/usuarios/AuxiliarPrueba/537.jpg', 1, '2021-06-12 13:27:37', '2021-06-12 18:27:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(46, 10005, 13, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"51\",\"precio\":\"7500\",\"total\":\"7500\"}]', 75, 7500, 7575, 'Efectivo', '2021-03-21 01:28:45'),
(47, 10006, 13, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"50\",\"precio\":\"7500\",\"total\":\"7500\"}]', 75, 7500, 7575, 'Efectivo', '2021-03-21 01:29:33'),
(48, 10007, 13, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"67\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"79\",\"precio\":\"3750\",\"total\":\"3750\"}]', 0, 11250, 11250, 'Efectivo', '2021-04-22 22:20:57'),
(49, 10008, 13, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"66\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"78\",\"precio\":\"3750\",\"total\":\"3750\"}]', 0, 11250, 11250, 'Efectivo', '2021-04-22 22:26:30'),
(50, 10009, 13, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"65\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"77\",\"precio\":\"3750\",\"total\":\"3750\"},{\"id\":\"62\",\"descripcion\":\"Tylenol\",\"cantidad\":\"1\",\"stock\":\"149\",\"precio\":\"2250\",\"total\":\"2250\"}]', 0, 13500, 13500, 'Efectivo', '2021-04-22 22:37:05'),
(51, 10009, 13, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"65\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"77\",\"precio\":\"3750\",\"total\":\"3750\"},{\"id\":\"62\",\"descripcion\":\"Tylenol\",\"cantidad\":\"1\",\"stock\":\"149\",\"precio\":\"2250\",\"total\":\"2250\"}]', 0, 13500, 13500, 'Efectivo', '2021-04-22 22:37:10'),
(52, 10010, 13, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"63\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"75\",\"precio\":\"3750\",\"total\":\"3750\"}]', 0, 11250, 11250, 'Efectivo', '2021-04-22 22:41:16'),
(53, 10011, 13, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"6\",\"stock\":\"57\",\"precio\":\"7500\",\"total\":\"45000\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"6\",\"stock\":\"69\",\"precio\":\"3750\",\"total\":\"22500\"}]', 0, 67500, 67500, 'Efectivo', '2021-04-23 01:50:22'),
(54, 10012, 13, 71, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"56\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"68\",\"precio\":\"3750\",\"total\":\"3750\"},{\"id\":\"62\",\"descripcion\":\"Tylenol\",\"cantidad\":\"1\",\"stock\":\"148\",\"precio\":\"2250\",\"total\":\"2250\"}]', 0, 13500, 13500, 'TD-56541321', '2021-05-21 23:47:02'),
(55, 10013, 13, 71, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"55\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"67\",\"precio\":\"3750\",\"total\":\"3750\"},{\"id\":\"62\",\"descripcion\":\"Tylenol\",\"cantidad\":\"1\",\"stock\":\"147\",\"precio\":\"2250\",\"total\":\"2250\"}]', 0, 13500, 13500, 'Efectivo', '2021-05-21 23:51:35'),
(56, 10014, 13, 71, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"54\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"66\",\"precio\":\"3750\",\"total\":\"3750\"},{\"id\":\"62\",\"descripcion\":\"Tylenol\",\"cantidad\":\"1\",\"stock\":\"146\",\"precio\":\"2250\",\"total\":\"2250\"}]', 0, 13500, 13500, 'Efectivo', '2021-05-23 14:32:13'),
(57, 10015, 14, 62, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"1\",\"stock\":\"53\",\"precio\":\"7500\",\"total\":\"7500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"65\",\"precio\":\"3750\",\"total\":\"3750\"},{\"id\":\"62\",\"descripcion\":\"Tylenol\",\"cantidad\":\"1\",\"stock\":\"145\",\"precio\":\"2250\",\"total\":\"2250\"},{\"id\":\"61\",\"descripcion\":\"Loratadina\",\"cantidad\":\"1\",\"stock\":\"106\",\"precio\":\"1204\",\"total\":\"1204\"}]', 0, 14704, 14704, 'Efectivo', '2021-06-12 03:35:56'),
(58, 10016, 14, 71, '[{\"id\":\"64\",\"descripcion\":\"Dolex\",\"cantidad\":\"5\",\"stock\":\"48\",\"precio\":\"7500\",\"total\":\"37500\"},{\"id\":\"63\",\"descripcion\":\"ibuprofeno\",\"cantidad\":\"1\",\"stock\":\"64\",\"precio\":\"3750\",\"total\":\"3750\"},{\"id\":\"62\",\"descripcion\":\"Tylenol\",\"cantidad\":\"1\",\"stock\":\"144\",\"precio\":\"2250\",\"total\":\"2250\"}]', 0, 43500, 43500, 'Efectivo', '2021-06-12 17:48:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
