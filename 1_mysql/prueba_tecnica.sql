-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2026 a las 01:06:30
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
-- Base de datos: `prueba_tecnica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `email`, `ciudad`, `activo`) VALUES
(1, 'Carlos Ramírez', 'carlos@mail.com', 'Bogotá', 1),
(2, 'Laura Pérez', 'laura@mail.com', 'Medellín', 1),
(3, 'Andrés Gómez', 'andres@mail.com', 'Cali', 0),
(4, 'María Torres', 'maria@mail.com', 'Bogotá', 1),
(5, 'Jorge Salinas', 'jorge@mail.com', 'Barranquilla', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `id_producto`, `fecha`, `cantidad`, `estado`) VALUES
(1001, 1, 101, '2024-01-10', 1, 'entregado'),
(1002, 2, 102, '2024-01-15', 2, 'entregado'),
(1003, 1, 104, '2024-02-03', 1, 'pendiente'),
(1004, 4, 105, '2024-02-20', 1, 'entregado'),
(1005, 5, 102, '2024-03-01', 3, 'cancelado'),
(1006, 4, 101, '2024-03-05', 1, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `categoria`, `precio`, `stock`) VALUES
(101, 'Laptop ProBook 15', 'Electrónica', 2500000, 10),
(102, 'Mouse Inalámbrico', 'Accesorios', 85000, 50),
(103, 'Teclado Mecánico RGB', 'Accesorios', 320000, 0),
(104, 'Monitor 27\" 4K', 'Electrónica', 1200000, 8),
(105, 'Silla Ergonómica', 'Mobiliario', 750000, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
