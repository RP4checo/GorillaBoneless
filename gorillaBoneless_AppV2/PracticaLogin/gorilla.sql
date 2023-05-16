-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2023 a las 11:13:28
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gorilla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `apellido_cliente` varchar(100) DEFAULT NULL,
  `direccion1` varchar(100) DEFAULT NULL,
  `direccion2` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `productos` varchar(500) DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `nombre`, `correo`, `nombre_cliente`, `apellido_cliente`, `direccion1`, `direccion2`, `fecha`, `total`, `productos`, `metodo_pago`) VALUES
(1, 'asd', 'asdasasdd@gmail.com', 'asd', 'MORAN OROPEZA', 'AV.Hidalgo77, col.Guerrero', 'Guerrero', '2023-05-16', '110.98', 'LARRYBURGER, MONTANA\'S BURGER, Gato Insano Heroico', 'efectivo'),
(2, 'asdasd', 'asdasd@gmail.com', 'asdasd', 'asdasd', 'asda', 'asdasd', '2023-05-16', '11.00', 'Gato Insano Heroico', 'transferencia'),
(3, 'asdasd', 'asdasassaddd@gmail.com', 'asdasd', 'MORAN OROPEZA', 'AV.Hidalgo77, col.Guerrero', 'Guerrero', '2023-05-16', '11.00', 'Gato Insano Heroico', 'efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_producto`
--

CREATE TABLE `pedido_producto` (
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `precioProducto` float NOT NULL,
  `cantidadProducto` int(11) NOT NULL,
  `id_pedido_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `img_producto` varchar(255) NOT NULL,
  `precio` float NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `img_producto`, `precio`, `categoria`) VALUES
(5, 'MONTANA\'S BURGER', 'img/menu-1.jpg', 79.99, 1),
(6, 'LARRYBURGER', 'img/menu-2.jpg', 86.99, 1),
(7, 'MR. GORILLA\'Z', 'img/menu-3.jpg', 56.99, 1),
(8, 'MANCHEESTER', 'img/menu-4.jpg', 86.99, 1),
(9, 'BIG BANG', 'img/menu-5.jpg', 99.99, 1),
(10, 'CHICKER BURGER', 'img/menu-6.jpg', 79.99, 1),
(17, 'Te chai en las rocas', 'img/Te chai.jpg', 56, 2),
(18, 'Cafe en las rocas', 'img/cafe.jpg', 46, 2),
(19, 'Gelatinas', 'img/gelatinas.jpg', 25, 3),
(20, 'Pastel de Galleta', 'img/PastelGalleta.jpg', 34, 3),
(21, 'Flan', 'img/flan.jpg', 28, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `pass`) VALUES
(1, 'aldo', '123'),
(2, 'miguel', '123'),
(3, 'Roberto', '123'),
(4, 'kike', 'nope'),
(5, 'meli', '123'),
(6, 'jica', '123'),
(7, 'bebe', '123'),
(8, 'hector', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD PRIMARY KEY (`id_pedido_producto`),
  ADD KEY `pedidos_id_pedido_pedido_producto` (`id_pedido`),
  ADD KEY `productos_id_producto_pedido_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id_pedido_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  ADD CONSTRAINT `pedidos_id_pedido_pedido_producto` FOREIGN KEY (`id_pedido`) REFERENCES `pedidosssss` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `productos_id_producto_pedido_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
