-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 15:08:33
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
-- Base de datos: `bd_transporte_masivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_buses`
--

CREATE TABLE `tb_buses` (
  `id_buses` int(11) NOT NULL,
  `placa` varchar(30) DEFAULT NULL,
  `capacidad` int(40) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_buses`
--

INSERT INTO `tb_buses` (`id_buses`, `placa`, `capacidad`, `modelo`, `estado`) VALUES
(1, 'ABC123', 40, '2020', 'Disponible'),
(2, 'DEF456', 45, '2021', 'En servicio'),
(3, 'GHI789', 50, '2022', 'Disponible'),
(4, 'JKL321', 40, '2019', 'En mantenimiento'),
(5, 'MNO654', 45, '2023', 'En servicio'),
(6, 'PQR987', 50, '2021', 'Disponible'),
(7, 'STU159', 40, '2020', 'En servicio'),
(8, 'VWX753', 45, '2022', 'Disponible'),
(9, 'YZA852', 50, '2023', 'En servicio'),
(10, 'BCD951', 40, '2018', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estacion`
--

CREATE TABLE `tb_estacion` (
  `id_estacion` int(11) NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_estacion`
--

INSERT INTO `tb_estacion` (`id_estacion`, `Nombre`, `ubicacion`, `localidad`) VALUES
(1, 'Portal Norte', 'Autopista Norte', 'Usaquén'),
(2, 'Portal Sur', 'Autopista Sur', 'Bosa'),
(3, 'Portal 80', 'Calle 80', 'Engativá'),
(4, 'Portal Suba', 'Avenida Suba', 'Suba'),
(5, 'Portal Américas', 'Avenida Ciudad de Cali', 'Kennedy'),
(6, 'Portal Tunal', 'Avenida Caracas', 'Tunjuelito'),
(7, 'Estación Ricaurte', 'Avenida NQS', 'Los Mártires'),
(8, 'Estación Calle 100', 'Autopista Norte', 'Chapinero'),
(9, 'Estación Jiménez', 'Avenida Caracas', 'Santa Fe'),
(10, 'Estación San Mateo', 'Autopista Sur', 'Soacha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pasajeros`
--

CREATE TABLE `tb_pasajeros` (
  `id_pasajeros` int(40) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_pasajeros`
--

INSERT INTO `tb_pasajeros` (`id_pasajeros`, `nombre`, `documento`, `telefono`) VALUES
(1, 'Laura Martínez', '1001234567', '3104567890'),
(2, 'Carlos Rodríguez', '1002345678', '3115678901'),
(3, 'Ana Gómez', '1003456789', '3126789012'),
(4, 'Juan Pérez', '1004567890', '3137890123'),
(5, 'María Torres', '1005678901', '3148901234'),
(6, 'Andrés López', '1006789012', '3159012345'),
(7, 'Sofía Ramírez', '1007890123', '3160123456'),
(8, 'David Castro', '1008901234', '3171234567'),
(9, 'Valentina Ruiz', '1009012345', '3182345678'),
(10, 'Sebastián Díaz', '1010123456', '3193456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rutas`
--

CREATE TABLE `tb_rutas` (
  `id_rutas` int(100) NOT NULL,
  `codigo` varchar(70) DEFAULT NULL,
  `origen` varchar(50) DEFAULT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `horario` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_rutas`
--

INSERT INTO `tb_rutas` (`id_rutas`, `codigo`, `origen`, `destino`, `horario`) VALUES
(1, 'R001', 'San Mateo', 'Portal Norte', '05:00 - 22:00'),
(2, 'R002', 'Portal Sur', 'Portal 80', '05:00 - 22:00'),
(3, 'R003', 'Portal Américas', 'Portal Norte', '04:30 - 23:00'),
(4, 'R004', 'Portal Suba', 'Portal Tunal', '05:00 - 22:30'),
(5, 'R005', 'Portal 80', 'Estación Ricaurte', '05:00 - 22:00'),
(6, 'R006', 'San Mateo', 'Portal Américas', '04:30 - 23:00'),
(7, 'R007', 'Portal Norte', 'Estación Jiménez', '05:00 - 22:00'),
(8, 'R008', 'Portal Tunal', 'Portal Suba', '05:00 - 22:00'),
(9, 'R009', 'Estación Ricaurte', 'Portal Sur', '05:00 - 22:30'),
(10, 'R010', 'Portal 80', 'San Mateo', '04:30 - 23:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_viajes`
--

CREATE TABLE `tb_viajes` (
  `id_viaje` int(50) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_pasajeros` int(11) DEFAULT NULL,
  `id_buses` int(11) DEFAULT NULL,
  `id_rutas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_viajes`
--

INSERT INTO `tb_viajes` (`id_viaje`, `fecha`, `hora`, `id_pasajeros`, `id_buses`, `id_rutas`) VALUES
(1, '2026-11-20', '06:00:00', 1, 1, 1),
(2, '2026-11-20', '07:30:00', 2, 2, 2),
(3, '2026-11-20', '08:00:00', 3, 3, 3),
(4, '2026-11-21', '09:15:00', 4, 5, 4),
(5, '2026-11-21', '10:00:00', 5, 6, 5),
(6, '2026-11-21', '11:30:00', 6, 7, 6),
(7, '2026-11-22', '12:00:00', 7, 8, 7),
(8, '2026-11-22', '14:00:00', 8, 9, 8),
(9, '2026-11-22', '16:30:00', 9, 10, 9),
(10, '2026-11-23', '18:00:00', 10, 1, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_buses`
--
ALTER TABLE `tb_buses`
  ADD PRIMARY KEY (`id_buses`);

--
-- Indices de la tabla `tb_estacion`
--
ALTER TABLE `tb_estacion`
  ADD PRIMARY KEY (`id_estacion`);

--
-- Indices de la tabla `tb_pasajeros`
--
ALTER TABLE `tb_pasajeros`
  ADD PRIMARY KEY (`id_pasajeros`);

--
-- Indices de la tabla `tb_rutas`
--
ALTER TABLE `tb_rutas`
  ADD PRIMARY KEY (`id_rutas`);

--
-- Indices de la tabla `tb_viajes`
--
ALTER TABLE `tb_viajes`
  ADD PRIMARY KEY (`id_viaje`),
  ADD KEY `fk_viajes_pasajeros` (`id_pasajeros`),
  ADD KEY `fk_viajes_buses` (`id_buses`),
  ADD KEY `fk_viajes_rutas` (`id_rutas`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_viajes`
--
ALTER TABLE `tb_viajes`
  ADD CONSTRAINT `fk_viajes_buses` FOREIGN KEY (`id_buses`) REFERENCES `tb_buses` (`id_buses`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_viajes_pasajeros` FOREIGN KEY (`id_pasajeros`) REFERENCES `tb_pasajeros` (`id_pasajeros`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_viajes_rutas` FOREIGN KEY (`id_rutas`) REFERENCES `tb_rutas` (`id_rutas`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
