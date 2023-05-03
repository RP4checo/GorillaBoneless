-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2023 a las 04:40:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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
  `id_pedido` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
(1, 'Coca', 'images/coca.jpg', 19.5, 0),
(2, 'Fanta', 'images/fanta.jpg', 18.5, 0),
(3, 'Sprite', 'images/sprite.jpg', 18.5, 0),
(5, 'MONTANA\'S BURGER', 'img/menu-1.jpg', 49.99, 1),
(6, 'LARRYBURGER', 'img/menu-2.jpg', 49.99, 1),
(7, 'MR. GORILLA\'Z', 'img/menu-3.jpg', 49.99, 1),
(8, 'MANCHEESTER', 'img/menu-4.jpg', 49.99, 1),
(9, 'BIG BANG', 'img/menu-5.jpg', 49.99, 1),
(10, 'CHICKER BURGER', 'img/menu-6.jpg', 49.99, 1);

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
  ADD PRIMARY KEY (`id_pedido`);

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
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_producto`
--
ALTER TABLE `pedido_producto`
  MODIFY `id_pedido_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `pedidos_id_pedido_pedido_producto` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `productos_id_producto_pedido_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
