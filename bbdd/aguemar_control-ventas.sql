-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2025 a las 12:48:35
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
-- Base de datos: `aguemar_control-ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `nombre` varchar(100) NOT NULL,
  `email` int(254) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`nombre`, `email`, `telefono`) VALUES
('Bubblebox', 0, '682-511-5369'),
('Dabfeed', 0, '513-372-9745'),
('Devcast', 0, '110-854-3382'),
('Flashdog', 0, '902-124-3545'),
('Jetpulse', 0, '440-777-6513'),
('Kwinu', 0, '403-803-0760'),
('LiveZ', 0, '196-603-0331'),
('Muxo', 0, '581-734-6694'),
('Oodoo', 0, '925-227-4282'),
('Photojam', 0, '543-428-8088'),
('Quimba', 0, '624-105-0032'),
('Quinu', 0, '123-364-0261'),
('Rhybox', 0, '390-441-8937'),
('Skaboo', 0, '163-700-2531'),
('Tagchat', 0, '932-283-2135'),
('Tavu', 0, '563-959-6055'),
('Thoughtmix', 0, '701-804-0193'),
('Yacero', 0, '507-676-9595'),
('Yadel', 0, '494-595-1073'),
('Youbridge', 0, '207-565-6399');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `email` varchar(254) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`email`, `password`) VALUES
('alafaye1@nsw.gov.au', '502-965-0061'),
('bfoye1@unicef.org', '211-488-9256'),
('cetienne9@fc2.com', '574-530-1589'),
('fmccree2@geocities.jp', '855-590-3921'),
('ivittel3@storify.com', '158-515-0746'),
('klimbrick6@tiny.cc', '412-205-4063'),
('lwinstone0@sphinn.com', '389-614-6839'),
('mcurle8@netscape.com', '416-597-1499'),
('mgoult4@creativecommons.org', '642-818-7816'),
('nerlam7@sun.com', '448-374-7564'),
('pbabbidge2@businesswire.com', '416-410-9530'),
('rdennistoun0@gravatar.com', '689-464-9493'),
('ubradforth5@google.fr', '602-852-4100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestores`
--

CREATE TABLE `gestores` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestores`
--

INSERT INTO `gestores` (`id`, `email`, `nombre`, `apellidos`, `telefono`) VALUES
(1, 'lwinstone0@sphinn.com', 'Lombard', 'Winstone', '389-614-6839'),
(2, 'alafaye1@nsw.gov.au', 'Alie', 'Lafaye', '502-965-0061'),
(3, 'pbabbidge2@businesswire.com', 'Philipa', 'Babbidge', '416-410-9530');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menciones_clientes`
--

CREATE TABLE `menciones_clientes` (
  `nota` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menciones_clientes`
--

INSERT INTO `menciones_clientes` (`nota`, `cliente`) VALUES
(1, 'Tavu'),
(1, 'Yacero'),
(5, 'LiveZ'),
(8, 'Skaboo'),
(8, 'Thoughtmix'),
(9, 'Thoughtmix'),
(11, 'Jetpulse');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menciones_vendedores`
--

CREATE TABLE `menciones_vendedores` (
  `nota` int(11) NOT NULL,
  `vendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menciones_vendedores`
--

INSERT INTO `menciones_vendedores` (`nota`, `vendedor`) VALUES
(2, 8),
(5, 2),
(6, 7),
(7, 1),
(9, 5),
(14, 8),
(14, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menciones_ventas`
--

CREATE TABLE `menciones_ventas` (
  `nota` int(11) NOT NULL,
  `venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menciones_ventas`
--

INSERT INTO `menciones_ventas` (`nota`, `venta`) VALUES
(1, 819),
(2, 413),
(6, 907),
(8, 946),
(11, 310),
(11, 666),
(12, 41),
(13, 473),
(14, 766),
(15, 738);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `autor` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text DEFAULT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `autor`, `titulo`, `contenido`, `fecha`) VALUES
(1, 1, 'rutrum nulla nunc purus phasellus in felis donec semper sapien', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.', '2024-11-08'),
(2, 2, 'blandit nam nulla integer pede', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\n\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2024-12-13'),
(3, 2, 'mauris morbi non', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2024-07-06'),
(4, 1, 'dui nec nisi volutpat eleifend donec ut dolor', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2024-06-12'),
(5, 2, 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', 'Nam congue, quam pede lobortis ligula, risus semper porta volutpat, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Sed sagittis.', '2024-11-14'),
(6, 2, 'tempus vel pede morbi porttitor lorem id', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\n\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2024-10-20'),
(7, 3, 'et eros vestibulum ac est lacinia nisi', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\n\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2025-01-23'),
(8, 2, 'mollis molestie lorem', 'Cadena de menos de 100 caracteres', '2025-01-19'),
(9, 3, 'tincidunt lacus at velit vivamus vel nulla eget', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\n\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\n\nIn congue. Etiam justo. Etiam pretium iaculis justo.', '2024-04-04'),
(10, 3, 'porta volutpat erat quisque erat eros viverra eget congue', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\n\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\n\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '2024-04-22'),
(11, 3, 'aliquet ultrices erat tortor sollicitudin mi', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\n\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2024-06-02'),
(12, 3, 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2024-06-03'),
(13, 1, 'risus dapibus augue vel accumsan tellus nisi eu', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\n\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\n\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', '2024-04-10'),
(14, 1, 'erat id mauris vulputate elementum', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\n\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2024-07-04'),
(15, 1, 'augue luctus tincidunt', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\n\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\n\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2024-07-22');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `notas_menciones`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `notas_menciones` (
`id` int(11)
,`autor` int(11)
,`titulo` varchar(255)
,`contenido` text
,`fecha` date
,`vendedor` int(11)
,`cliente` varchar(100)
,`venta` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `usuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `usuarios` (
`id` int(11)
,`email` varchar(254)
,`nombre` varchar(50)
,`apellidos` varchar(100)
,`telefono` varchar(15)
,`password` varchar(30)
,`rol` varchar(8)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `usuarios_gestores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `usuarios_gestores` (
`id` int(11)
,`email` varchar(254)
,`nombre` varchar(50)
,`apellidos` varchar(100)
,`telefono` varchar(15)
,`password` varchar(30)
,`rol` varchar(6)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `usuarios_vendedores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `usuarios_vendedores` (
`id` int(11)
,`email` varchar(254)
,`nombre` varchar(50)
,`apellidos` varchar(100)
,`telefono` varchar(15)
,`password` varchar(30)
,`rol` varchar(8)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id`, `email`, `nombre`, `apellidos`, `telefono`) VALUES
(1, 'rdennistoun0@gravatar.com', 'Rochelle', 'Dennistoun', '689-464-9493'),
(2, 'bfoye1@unicef.org', 'Barbra', 'Foye', '211-488-9256'),
(3, 'fmccree2@geocities.jp', 'Fay', 'McCree', '855-590-3921'),
(4, 'ivittel3@storify.com', 'Ina', 'Vittel', '158-515-0746'),
(5, 'mgoult4@creativecommons.org', 'Marilee', 'Goult', '642-818-7816'),
(6, 'ubradforth5@google.fr', 'Udell', 'Bradforth', '602-852-4100'),
(7, 'klimbrick6@tiny.cc', 'Krystalle', 'Limbrick', '412-205-4063'),
(8, 'nerlam7@sun.com', 'Nickie', 'Erlam', '448-374-7564'),
(9, 'mcurle8@netscape.com', 'Missie', 'Curle', '416-597-1499'),
(10, 'cetienne9@fc2.com', 'Cordelie', 'Etienne', '574-530-1589');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `vendedor` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `total` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `vendedor`, `cliente`, `fecha`, `total`) VALUES
(1, 7, 'Devcast', '2025-01-29', 7736.45),
(2, 1, 'LiveZ', '2025-03-26', 5855.13),
(3, 7, 'Bubblebox', '2024-09-06', 2748.08),
(4, 8, 'Kwinu', '2025-03-30', 5577.60),
(5, 1, 'Jetpulse', '2025-01-25', 4517.33),
(6, 5, 'Photojam', '2024-11-15', 9882.01),
(7, 9, 'LiveZ', '2025-03-29', 4298.28),
(8, 6, 'Jetpulse', '2024-12-09', 9378.14),
(9, 4, 'Skaboo', '2025-04-13', 4942.84),
(10, 5, 'Dabfeed', '2024-12-19', 7037.32),
(11, 6, 'Skaboo', '2025-01-18', 3256.11),
(12, 3, 'Flashdog', '2025-04-03', 6334.60),
(13, 2, 'Tagchat', '2025-01-27', 6069.04),
(14, 4, 'Flashdog', '2025-02-10', 1944.13),
(15, 8, 'Flashdog', '2024-08-04', 8508.75),
(16, 10, 'Oodoo', '2025-01-30', 5552.08),
(17, 9, 'Flashdog', '2025-05-08', 5016.11),
(18, 4, 'Quinu', '2025-05-20', 7188.29),
(19, 5, 'Quinu', '2024-10-08', 9718.56),
(20, 3, 'Dabfeed', '2025-05-30', 3543.91),
(21, 6, 'Kwinu', '2024-08-28', 6542.65),
(22, 4, 'Skaboo', '2024-10-08', 638.16),
(23, 8, 'Youbridge', '2024-09-24', 4354.69),
(24, 10, 'Tavu', '2025-06-22', 8792.88),
(25, 9, 'Skaboo', '2024-09-01', 9067.21),
(26, 8, 'Rhybox', '2025-02-18', 3917.88),
(27, 2, 'Jetpulse', '2024-10-05', 5920.16),
(28, 5, 'Quimba', '2024-12-24', 1694.57),
(29, 2, 'Flashdog', '2024-08-03', 2892.96),
(30, 9, 'Muxo', '2024-11-03', 2990.48),
(31, 9, 'Thoughtmix', '2025-01-02', 2278.07),
(32, 10, 'Tavu', '2024-09-10', 9069.75),
(33, 8, 'Rhybox', '2024-09-12', 871.42),
(34, 9, 'Flashdog', '2025-03-27', 8570.04),
(35, 3, 'Devcast', '2025-04-01', 3272.98),
(36, 10, 'Skaboo', '2025-01-13', 5446.71),
(37, 6, 'LiveZ', '2025-06-11', 6712.95),
(38, 5, 'Yadel', '2025-08-02', 4364.34),
(39, 2, 'Yacero', '2024-11-18', 7750.72),
(40, 8, 'Photojam', '2025-04-07', 8332.65),
(41, 4, 'Yadel', '2025-07-04', 295.64),
(42, 2, 'Yadel', '2024-08-19', 8896.65),
(43, 8, 'Oodoo', '2025-02-14', 245.52),
(44, 9, 'LiveZ', '2024-12-25', 4920.88),
(45, 6, 'Youbridge', '2025-05-02', 6429.91),
(46, 4, 'Rhybox', '2025-07-11', 9637.80),
(47, 9, 'Quimba', '2025-06-06', 627.49),
(48, 6, 'Photojam', '2024-08-04', 1021.81),
(49, 3, 'Tavu', '2025-02-12', 9239.60),
(50, 2, 'Quimba', '2025-02-16', 5439.09),
(51, 5, 'Tagchat', '2024-12-10', 2812.91),
(52, 8, 'Photojam', '2025-05-03', 9488.68),
(53, 9, 'Tagchat', '2025-04-03', 8993.21),
(54, 6, 'Tagchat', '2024-12-02', 7354.60),
(55, 5, 'LiveZ', '2025-07-23', 8789.52),
(56, 4, 'Jetpulse', '2025-01-27', 7153.02),
(57, 10, 'Thoughtmix', '2025-06-20', 2456.84),
(58, 7, 'Quinu', '2025-03-22', 5086.80),
(59, 4, 'Photojam', '2025-05-13', 6882.84),
(60, 10, 'LiveZ', '2025-07-06', 3230.93),
(61, 10, 'Dabfeed', '2025-03-18', 964.71),
(62, 10, 'Quinu', '2024-08-31', 2454.42),
(63, 7, 'Devcast', '2025-07-17', 2966.25),
(64, 3, 'Bubblebox', '2024-08-15', 6109.03),
(65, 3, 'Rhybox', '2025-05-26', 4385.83),
(66, 6, 'Oodoo', '2025-02-12', 6455.54),
(67, 9, 'Oodoo', '2025-07-11', 4586.69),
(68, 5, 'Youbridge', '2025-04-16', 5479.52),
(69, 6, 'Oodoo', '2025-06-14', 5246.24),
(70, 6, 'Devcast', '2025-04-19', 1745.53),
(71, 10, 'Quinu', '2025-05-11', 7255.97),
(72, 1, 'Yacero', '2025-07-16', 5328.31),
(73, 7, 'Quimba', '2024-10-17', 5220.95),
(74, 10, 'Quinu', '2024-10-18', 330.13),
(75, 9, 'Flashdog', '2024-10-10', 8585.39),
(76, 10, 'Muxo', '2025-05-05', 872.70),
(77, 10, 'LiveZ', '2025-02-24', 7227.46),
(78, 10, 'Tagchat', '2025-02-25', 9175.11),
(79, 6, 'Quimba', '2024-11-30', 6731.65),
(80, 2, 'Yacero', '2024-09-15', 6062.25),
(81, 1, 'Skaboo', '2024-12-17', 2121.87),
(82, 8, 'Youbridge', '2024-09-14', 4552.36),
(83, 8, 'Quimba', '2024-11-16', 2153.74),
(84, 10, 'Jetpulse', '2025-07-30', 9072.02),
(85, 3, 'Tagchat', '2025-03-13', 2891.96),
(86, 5, 'Kwinu', '2024-12-25', 8086.59),
(87, 3, 'Oodoo', '2024-10-28', 8939.77),
(88, 9, 'Rhybox', '2025-06-21', 7549.86),
(89, 10, 'Thoughtmix', '2024-11-02', 9286.96),
(90, 8, 'Skaboo', '2024-12-02', 700.74),
(91, 7, 'Quimba', '2025-08-02', 4811.42),
(92, 3, 'Devcast', '2024-08-11', 8226.87),
(93, 4, 'Thoughtmix', '2024-08-03', 1832.15),
(94, 3, 'Photojam', '2025-04-23', 9977.68),
(95, 3, 'Quinu', '2024-09-23', 8153.08),
(96, 6, 'Bubblebox', '2024-12-16', 2536.83),
(97, 3, 'Youbridge', '2025-01-27', 2193.79),
(98, 7, 'Photojam', '2024-10-16', 4086.98),
(99, 7, 'Skaboo', '2024-08-22', 973.80),
(100, 4, 'Quinu', '2025-03-06', 6574.84),
(101, 8, 'Devcast', '2025-05-15', 4757.17),
(102, 1, 'Quimba', '2025-07-10', 511.52),
(103, 8, 'Thoughtmix', '2024-12-26', 3616.90),
(104, 5, 'Kwinu', '2025-01-08', 6923.89),
(105, 9, 'Youbridge', '2025-05-20', 1804.36),
(106, 8, 'Devcast', '2024-08-28', 7199.76),
(107, 3, 'Photojam', '2025-06-02', 7053.89),
(108, 1, 'Tavu', '2025-02-23', 1610.97),
(109, 5, 'Kwinu', '2024-12-10', 1124.81),
(110, 9, 'Yacero', '2024-10-07', 6548.82),
(111, 7, 'Kwinu', '2025-01-09', 9373.92),
(112, 5, 'Quimba', '2024-09-08', 7376.32),
(113, 9, 'Jetpulse', '2025-03-17', 8807.32),
(114, 9, 'Bubblebox', '2025-06-20', 9129.84),
(115, 5, 'Quinu', '2024-08-26', 8679.96),
(116, 7, 'Tagchat', '2024-08-16', 2172.63),
(117, 2, 'Jetpulse', '2025-03-25', 8150.56),
(118, 8, 'Tagchat', '2024-12-18', 4774.86),
(119, 6, 'Flashdog', '2025-06-09', 5913.17),
(120, 10, 'Yacero', '2025-07-20', 3360.44),
(121, 7, 'Devcast', '2025-04-16', 2397.64),
(122, 5, 'Bubblebox', '2025-04-28', 3472.22),
(123, 4, 'Rhybox', '2025-01-21', 5309.09),
(124, 9, 'Photojam', '2024-11-24', 3585.41),
(125, 9, 'Youbridge', '2025-01-28', 5577.10),
(126, 3, 'Youbridge', '2025-02-24', 5170.17),
(127, 7, 'LiveZ', '2025-06-27', 2952.32),
(128, 5, 'Jetpulse', '2024-10-23', 7533.02),
(129, 5, 'Bubblebox', '2025-07-11', 5982.47),
(130, 7, 'Tavu', '2024-08-05', 7141.76),
(131, 3, 'Photojam', '2024-08-24', 6199.46),
(132, 7, 'Yacero', '2024-10-16', 5537.68),
(133, 2, 'Tagchat', '2024-12-07', 8204.68),
(134, 1, 'Rhybox', '2024-09-25', 3056.81),
(135, 2, 'Yacero', '2025-05-27', 9999.18),
(136, 3, 'Tavu', '2025-01-02', 8330.15),
(137, 4, 'Quimba', '2024-10-28', 6687.63),
(138, 2, 'Tavu', '2025-02-20', 4253.97),
(139, 5, 'Yacero', '2025-08-02', 4335.64),
(140, 2, 'Yadel', '2025-06-24', 1842.11),
(141, 5, 'Bubblebox', '2025-01-11', 3589.15),
(142, 3, 'Flashdog', '2024-08-11', 819.25),
(143, 10, 'Quinu', '2024-10-16', 9787.82),
(144, 6, 'Thoughtmix', '2024-08-06', 4975.71),
(145, 10, 'Devcast', '2025-07-08', 3154.35),
(146, 8, 'Yacero', '2024-12-03', 9368.31),
(147, 10, 'Dabfeed', '2024-08-22', 734.15),
(148, 2, 'Bubblebox', '2025-07-18', 4134.43),
(149, 7, 'Rhybox', '2025-01-04', 9368.33),
(150, 4, 'Bubblebox', '2025-04-02', 5128.62),
(151, 10, 'Flashdog', '2025-07-26', 9083.21),
(152, 2, 'Flashdog', '2025-01-27', 6157.14),
(153, 5, 'Tavu', '2025-01-24', 1083.81),
(154, 6, 'Skaboo', '2025-03-15', 2224.16),
(155, 7, 'Muxo', '2024-09-12', 785.78),
(156, 7, 'Jetpulse', '2025-07-08', 5240.79),
(157, 9, 'Thoughtmix', '2024-11-23', 1772.56),
(158, 5, 'Rhybox', '2025-03-06', 343.15),
(159, 4, 'Photojam', '2024-12-27', 3979.07),
(160, 3, 'Thoughtmix', '2025-03-22', 5072.22),
(161, 2, 'Dabfeed', '2025-04-18', 3918.87),
(162, 2, 'Yadel', '2024-12-06', 3292.42),
(163, 6, 'Devcast', '2024-08-12', 9826.09),
(164, 5, 'Quimba', '2025-05-09', 6300.33),
(165, 2, 'Tavu', '2024-08-08', 3815.20),
(166, 10, 'Skaboo', '2024-12-07', 8967.78),
(167, 2, 'Devcast', '2024-12-14', 9487.10),
(168, 2, 'Rhybox', '2024-09-25', 1023.45),
(169, 9, 'Tagchat', '2025-04-19', 2005.66),
(170, 10, 'Rhybox', '2025-03-21', 455.11),
(171, 6, 'Photojam', '2024-11-24', 3854.61),
(172, 9, 'Skaboo', '2025-02-06', 4988.27),
(173, 6, 'Flashdog', '2025-07-13', 8955.79),
(174, 5, 'Yacero', '2025-06-20', 4765.69),
(175, 8, 'Rhybox', '2024-08-12', 5235.70),
(176, 10, 'Oodoo', '2025-04-27', 4979.08),
(177, 1, 'Tavu', '2024-11-01', 5268.56),
(178, 8, 'Tavu', '2025-01-01', 6200.23),
(179, 3, 'Tagchat', '2024-12-09', 8007.71),
(180, 2, 'Jetpulse', '2024-09-02', 4413.40),
(181, 7, 'Oodoo', '2025-01-27', 2457.15),
(182, 9, 'Tagchat', '2025-05-26', 2849.89),
(183, 6, 'Skaboo', '2024-11-17', 7700.71),
(184, 2, 'Photojam', '2024-12-12', 2190.92),
(185, 3, 'Kwinu', '2025-01-05', 1865.91),
(186, 9, 'Photojam', '2024-11-06', 3597.61),
(187, 5, 'Flashdog', '2024-09-22', 638.93),
(188, 9, 'Tavu', '2025-05-02', 2912.91),
(189, 8, 'Photojam', '2025-01-10', 3008.55),
(190, 10, 'Dabfeed', '2024-09-09', 7441.47),
(191, 7, 'Quinu', '2025-03-02', 1390.82),
(192, 2, 'Quinu', '2025-06-20', 7257.72),
(193, 2, 'Skaboo', '2025-03-05', 8498.94),
(194, 1, 'Yacero', '2025-01-31', 2600.91),
(195, 3, 'Quimba', '2025-06-26', 9149.50),
(196, 1, 'Kwinu', '2025-07-01', 2635.11),
(197, 7, 'Devcast', '2025-02-25', 8882.60),
(198, 6, 'Yacero', '2025-06-17', 1870.49),
(199, 3, 'Tagchat', '2024-09-01', 8743.87),
(200, 6, 'Photojam', '2025-06-26', 2028.44),
(201, 4, 'Tagchat', '2024-12-14', 9028.33),
(202, 8, 'Photojam', '2025-03-03', 1301.89),
(203, 1, 'Dabfeed', '2024-10-20', 2947.72),
(204, 4, 'Quinu', '2025-06-16', 2283.35),
(205, 9, 'Youbridge', '2025-06-18', 9204.40),
(206, 5, 'LiveZ', '2025-06-26', 3827.72),
(207, 7, 'Quinu', '2024-09-03', 9068.83),
(208, 10, 'Tavu', '2025-02-22', 625.95),
(209, 2, 'Flashdog', '2024-12-22', 1692.48),
(210, 3, 'Dabfeed', '2025-02-02', 5161.44),
(211, 3, 'Oodoo', '2024-10-12', 9792.11),
(212, 1, 'Thoughtmix', '2024-08-13', 473.28),
(213, 2, 'Rhybox', '2025-03-25', 6007.89),
(214, 4, 'Quinu', '2025-03-21', 4639.12),
(215, 5, 'Jetpulse', '2025-01-24', 8260.03),
(216, 10, 'Devcast', '2025-01-02', 846.51),
(217, 5, 'Muxo', '2025-06-22', 4543.82),
(218, 6, 'Thoughtmix', '2024-10-19', 1699.04),
(219, 1, 'Oodoo', '2024-10-13', 6105.63),
(220, 8, 'Tagchat', '2024-12-14', 7954.97),
(221, 4, 'Quimba', '2025-06-06', 1856.27),
(222, 4, 'Jetpulse', '2025-07-05', 1058.94),
(223, 3, 'Dabfeed', '2025-01-31', 7498.97),
(224, 5, 'Dabfeed', '2025-02-16', 5820.61),
(225, 5, 'Yadel', '2025-06-16', 9980.29),
(226, 2, 'Quinu', '2024-08-23', 7611.65),
(227, 9, 'Tavu', '2025-02-26', 3307.43),
(228, 2, 'Yacero', '2024-09-08', 4079.09),
(229, 10, 'Photojam', '2025-06-15', 7210.66),
(230, 8, 'Photojam', '2024-09-28', 1828.09),
(231, 3, 'Jetpulse', '2025-06-23', 4387.54),
(232, 7, 'Skaboo', '2025-02-04', 3946.12),
(233, 6, 'Yacero', '2024-11-14', 9048.49),
(234, 6, 'Jetpulse', '2024-09-24', 3291.80),
(235, 6, 'Yacero', '2024-10-10', 8910.47),
(236, 4, 'Quimba', '2025-02-22', 7774.00),
(237, 8, 'Flashdog', '2025-02-23', 218.29),
(238, 4, 'Flashdog', '2025-07-13', 4484.31),
(239, 8, 'Tavu', '2025-05-06', 6830.44),
(240, 9, 'LiveZ', '2024-11-03', 7992.34),
(241, 3, 'Oodoo', '2024-10-15', 5859.44),
(242, 10, 'Oodoo', '2025-07-31', 3435.17),
(243, 6, 'Bubblebox', '2024-10-07', 9053.86),
(244, 3, 'Oodoo', '2024-09-07', 7688.79),
(245, 10, 'Devcast', '2025-01-29', 8034.25),
(246, 9, 'Devcast', '2025-05-30', 5803.11),
(247, 9, 'Bubblebox', '2024-10-10', 3320.15),
(248, 3, 'Thoughtmix', '2025-02-18', 9447.00),
(249, 2, 'Quinu', '2025-03-06', 7876.58),
(250, 8, 'Jetpulse', '2024-11-07', 1365.93),
(251, 10, 'Tagchat', '2024-09-09', 7635.65),
(252, 10, 'Muxo', '2025-06-17', 5023.43),
(253, 10, 'Oodoo', '2025-05-25', 9840.77),
(254, 1, 'Flashdog', '2024-11-15', 4310.69),
(255, 10, 'Muxo', '2024-12-15', 5089.58),
(256, 6, 'Kwinu', '2025-05-03', 4459.01),
(257, 7, 'Dabfeed', '2025-06-10', 4304.04),
(258, 10, 'Yacero', '2024-09-01', 5366.78),
(259, 3, 'Muxo', '2025-07-09', 6145.44),
(260, 8, 'Dabfeed', '2025-06-23', 7961.42),
(261, 7, 'Quimba', '2024-10-12', 5522.90),
(262, 4, 'Skaboo', '2024-12-18', 2707.36),
(263, 9, 'Thoughtmix', '2025-03-26', 6892.06),
(264, 2, 'Bubblebox', '2025-06-08', 5141.81),
(265, 6, 'Youbridge', '2025-06-29', 1109.47),
(266, 9, 'Tagchat', '2024-09-24', 1613.38),
(267, 6, 'Oodoo', '2024-12-15', 8578.45),
(268, 7, 'Thoughtmix', '2024-12-14', 6595.26),
(269, 3, 'Yadel', '2024-08-31', 9491.87),
(270, 10, 'Photojam', '2025-01-11', 3954.99),
(271, 4, 'Quinu', '2025-01-26', 6752.96),
(272, 9, 'Devcast', '2025-05-19', 4902.57),
(273, 10, 'Flashdog', '2024-12-15', 1191.87),
(274, 8, 'Yadel', '2025-04-20', 2245.09),
(275, 9, 'Yadel', '2024-12-18', 4764.90),
(276, 7, 'LiveZ', '2025-05-20', 9144.78),
(277, 7, 'Thoughtmix', '2024-08-22', 6492.24),
(278, 1, 'Jetpulse', '2024-09-29', 8933.15),
(279, 8, 'Tagchat', '2025-02-19', 5296.80),
(280, 6, 'Tavu', '2024-10-07', 8973.24),
(281, 8, 'Thoughtmix', '2024-08-03', 5788.02),
(282, 1, 'Thoughtmix', '2024-12-28', 5230.83),
(283, 5, 'Youbridge', '2025-01-25', 9745.09),
(284, 3, 'Youbridge', '2025-01-13', 2908.58),
(285, 10, 'Muxo', '2025-05-24', 4210.55),
(286, 10, 'Thoughtmix', '2025-04-04', 2659.43),
(287, 3, 'Tavu', '2025-07-30', 5336.68),
(288, 1, 'Rhybox', '2025-05-02', 7616.21),
(289, 4, 'Jetpulse', '2025-06-28', 647.15),
(290, 3, 'Rhybox', '2025-04-11', 3854.84),
(291, 7, 'Dabfeed', '2025-03-19', 9380.79),
(292, 6, 'Yadel', '2025-04-29', 6132.06),
(293, 6, 'Quinu', '2025-06-17', 6151.87),
(294, 10, 'LiveZ', '2025-04-05', 6717.23),
(295, 5, 'Tavu', '2025-06-11', 7324.50),
(296, 4, 'Rhybox', '2025-03-24', 5778.56),
(297, 7, 'Flashdog', '2025-02-20', 3430.17),
(298, 6, 'Youbridge', '2025-07-27', 4409.64),
(299, 2, 'Tagchat', '2025-07-10', 4224.36),
(300, 3, 'Rhybox', '2025-06-19', 6258.21),
(301, 5, 'Tagchat', '2025-03-04', 4137.36),
(302, 8, 'Kwinu', '2025-01-13', 9435.41),
(303, 7, 'Kwinu', '2025-06-15', 8981.12),
(304, 2, 'Devcast', '2024-12-19', 5788.49),
(305, 5, 'Tavu', '2024-11-02', 9213.96),
(306, 7, 'Oodoo', '2024-12-02', 2636.91),
(307, 9, 'Muxo', '2024-12-26', 9206.31),
(308, 3, 'Flashdog', '2025-05-04', 928.16),
(309, 9, 'Yacero', '2025-04-07', 7883.81),
(310, 2, 'Jetpulse', '2024-10-06', 9293.52),
(311, 5, 'Kwinu', '2024-12-15', 4450.61),
(312, 2, 'Yacero', '2025-07-12', 1755.75),
(313, 10, 'Muxo', '2025-03-20', 8215.08),
(314, 5, 'Youbridge', '2024-09-07', 3341.05),
(315, 9, 'Rhybox', '2025-02-07', 1281.71),
(316, 3, 'Jetpulse', '2024-12-04', 8263.25),
(317, 7, 'LiveZ', '2025-04-13', 6068.84),
(318, 9, 'Muxo', '2025-01-02', 3523.17),
(319, 9, 'Tavu', '2025-02-06', 4960.92),
(320, 5, 'Tavu', '2025-04-19', 2333.82),
(321, 2, 'Rhybox', '2024-08-14', 9284.91),
(322, 9, 'Oodoo', '2024-12-21', 5207.16),
(323, 6, 'Oodoo', '2025-03-23', 9007.59),
(324, 10, 'Thoughtmix', '2025-03-05', 6810.04),
(325, 4, 'Quimba', '2024-09-21', 6811.35),
(326, 6, 'Flashdog', '2025-04-02', 5502.76),
(327, 10, 'Oodoo', '2024-08-25', 6358.71),
(328, 3, 'Muxo', '2025-07-04', 9846.08),
(329, 9, 'Tagchat', '2024-10-22', 7082.64),
(330, 7, 'Tagchat', '2025-05-21', 3786.08),
(331, 7, 'Yacero', '2025-04-04', 523.86),
(332, 2, 'Yacero', '2024-11-16', 3454.79),
(333, 6, 'Oodoo', '2024-11-10', 851.70),
(334, 10, 'LiveZ', '2024-11-03', 6523.07),
(335, 1, 'Muxo', '2024-12-09', 9034.48),
(336, 3, 'Jetpulse', '2025-02-22', 869.46),
(337, 5, 'Youbridge', '2025-06-12', 6595.55),
(338, 10, 'Oodoo', '2024-12-01', 4994.88),
(339, 2, 'Rhybox', '2024-12-02', 8824.20),
(340, 6, 'Bubblebox', '2025-06-05', 875.80),
(341, 5, 'Youbridge', '2024-11-25', 1695.12),
(342, 3, 'Bubblebox', '2024-12-30', 9952.67),
(343, 3, 'LiveZ', '2025-04-06', 798.80),
(344, 7, 'Devcast', '2025-06-05', 8445.16),
(345, 1, 'Dabfeed', '2024-11-25', 2938.10),
(346, 8, 'Yadel', '2024-11-14', 3055.00),
(347, 5, 'Thoughtmix', '2024-12-05', 1189.01),
(348, 6, 'LiveZ', '2024-11-22', 3123.73),
(349, 8, 'Yacero', '2025-01-21', 714.25),
(350, 3, 'Youbridge', '2025-01-07', 7254.79),
(351, 1, 'Photojam', '2024-10-13', 3242.75),
(352, 5, 'Tagchat', '2025-01-17', 269.49),
(353, 8, 'Thoughtmix', '2025-05-31', 2717.97),
(354, 3, 'LiveZ', '2025-02-06', 2563.21),
(355, 5, 'Rhybox', '2024-08-14', 2798.16),
(356, 4, 'Yadel', '2024-11-02', 5373.00),
(357, 5, 'Flashdog', '2024-11-21', 8745.94),
(358, 10, 'Quimba', '2025-05-29', 6286.95),
(359, 9, 'Kwinu', '2025-02-12', 585.62),
(360, 9, 'Skaboo', '2025-07-02', 1669.72),
(361, 5, 'Youbridge', '2024-09-27', 2935.60),
(362, 2, 'Dabfeed', '2025-01-03', 1021.26),
(363, 1, 'Tagchat', '2025-03-20', 6109.46),
(364, 6, 'Thoughtmix', '2025-07-09', 4984.60),
(365, 3, 'Jetpulse', '2025-06-10', 457.67),
(366, 7, 'Kwinu', '2024-11-30', 4319.18),
(367, 8, 'Muxo', '2025-05-16', 4503.54),
(368, 9, 'Flashdog', '2024-11-07', 3434.10),
(369, 8, 'Bubblebox', '2024-08-20', 4562.75),
(370, 8, 'LiveZ', '2025-04-21', 4210.01),
(371, 7, 'Quimba', '2025-04-05', 9771.21),
(372, 4, 'LiveZ', '2025-06-05', 3930.39),
(373, 8, 'Muxo', '2024-11-11', 4146.05),
(374, 10, 'Jetpulse', '2024-11-09', 9674.49),
(375, 1, 'Quimba', '2025-05-28', 3704.84),
(376, 8, 'Thoughtmix', '2025-03-12', 4434.88),
(377, 8, 'Bubblebox', '2025-01-26', 5630.41),
(378, 9, 'Flashdog', '2025-07-21', 8179.69),
(379, 6, 'Yacero', '2025-05-14', 5957.37),
(380, 2, 'Oodoo', '2024-08-13', 1800.28),
(381, 1, 'Photojam', '2025-06-13', 691.96),
(382, 10, 'Dabfeed', '2024-10-26', 3082.08),
(383, 10, 'Tagchat', '2024-11-08', 4190.75),
(384, 5, 'Oodoo', '2025-01-01', 2151.76),
(385, 7, 'Flashdog', '2024-08-15', 3406.16),
(386, 3, 'Yacero', '2025-04-16', 5848.00),
(387, 10, 'Photojam', '2025-05-22', 2000.10),
(388, 2, 'Bubblebox', '2024-09-18', 8828.94),
(389, 7, 'Jetpulse', '2024-09-27', 3379.61),
(390, 9, 'Bubblebox', '2025-05-07', 1276.42),
(391, 1, 'Tavu', '2024-09-11', 6448.62),
(392, 1, 'Quimba', '2024-08-07', 250.42),
(393, 7, 'Flashdog', '2025-04-27', 2012.74),
(394, 8, 'Oodoo', '2024-09-18', 1947.72),
(395, 4, 'Photojam', '2025-02-12', 7882.26),
(396, 3, 'Dabfeed', '2025-02-03', 5053.65),
(397, 5, 'Yadel', '2025-06-14', 2759.32),
(398, 3, 'LiveZ', '2025-02-09', 773.04),
(399, 5, 'Devcast', '2024-10-29', 1386.80),
(400, 6, 'Oodoo', '2024-11-06', 8081.49),
(401, 7, 'Oodoo', '2024-09-05', 4335.23),
(402, 3, 'Yadel', '2025-02-16', 2601.62),
(403, 1, 'Muxo', '2025-05-12', 345.51),
(404, 2, 'Quimba', '2024-10-05', 3197.54),
(405, 3, 'Yacero', '2025-01-10', 8468.73),
(406, 10, 'Yacero', '2025-05-21', 6286.80),
(407, 10, 'Photojam', '2024-12-15', 538.22),
(408, 2, 'LiveZ', '2024-11-01', 5903.94),
(409, 5, 'Photojam', '2025-06-02', 9339.31),
(410, 2, 'Photojam', '2024-10-16', 8153.16),
(411, 10, 'Photojam', '2025-06-25', 1115.18),
(412, 5, 'Yacero', '2025-05-24', 4384.37),
(413, 6, 'Bubblebox', '2024-11-18', 4264.95),
(414, 6, 'Yadel', '2025-07-04', 3666.57),
(415, 5, 'Oodoo', '2025-02-10', 4033.73),
(416, 9, 'Bubblebox', '2024-09-16', 5102.49),
(417, 3, 'LiveZ', '2024-10-10', 515.40),
(418, 9, 'Muxo', '2024-12-18', 1850.32),
(419, 10, 'Tavu', '2025-06-18', 7327.05),
(420, 1, 'Rhybox', '2025-03-30', 8962.18),
(421, 6, 'Quinu', '2024-10-30', 8275.13),
(422, 3, 'Yacero', '2024-12-18', 9911.76),
(423, 6, 'Dabfeed', '2025-04-10', 5122.35),
(424, 4, 'Kwinu', '2025-07-13', 9911.06),
(425, 2, 'Youbridge', '2025-02-17', 4010.30),
(426, 4, 'Devcast', '2025-06-04', 7173.84),
(427, 6, 'Quinu', '2025-05-02', 8922.60),
(428, 2, 'Yacero', '2024-09-06', 7935.93),
(429, 9, 'Dabfeed', '2025-04-13', 468.11),
(430, 1, 'Rhybox', '2025-01-16', 5834.39),
(431, 4, 'Quimba', '2024-09-28', 4842.45),
(432, 3, 'Thoughtmix', '2025-06-07', 4774.84),
(433, 9, 'Devcast', '2024-12-12', 3084.56),
(434, 5, 'Devcast', '2025-05-25', 4753.56),
(435, 3, 'Thoughtmix', '2025-07-30', 9435.45),
(436, 10, 'Flashdog', '2024-10-17', 9545.36),
(437, 6, 'LiveZ', '2025-04-07', 2959.31),
(438, 3, 'Yadel', '2025-02-18', 5921.27),
(439, 3, 'Bubblebox', '2025-03-12', 6173.68),
(440, 3, 'Kwinu', '2025-05-31', 632.12),
(441, 5, 'Muxo', '2024-11-21', 8325.87),
(442, 6, 'Thoughtmix', '2025-06-20', 3387.57),
(443, 7, 'Quimba', '2024-10-25', 4806.99),
(444, 6, 'Quinu', '2024-11-28', 9334.00),
(445, 4, 'Devcast', '2025-03-10', 6233.04),
(446, 3, 'Yadel', '2024-08-27', 1927.21),
(447, 1, 'Oodoo', '2024-11-17', 8155.32),
(448, 3, 'Quimba', '2025-03-08', 4114.05),
(449, 8, 'Jetpulse', '2024-09-17', 7136.84),
(450, 4, 'Quimba', '2024-10-24', 4671.42),
(451, 3, 'Yacero', '2025-03-27', 3925.21),
(452, 1, 'Kwinu', '2025-03-13', 5134.51),
(453, 2, 'Tagchat', '2025-07-05', 9636.23),
(454, 3, 'LiveZ', '2025-03-14', 734.07),
(455, 9, 'Jetpulse', '2024-09-19', 3962.50),
(456, 4, 'Rhybox', '2025-06-27', 5744.61),
(457, 10, 'LiveZ', '2025-07-28', 3437.18),
(458, 7, 'Thoughtmix', '2025-06-07', 5544.03),
(459, 3, 'Thoughtmix', '2024-12-27', 8087.92),
(460, 3, 'Photojam', '2025-07-01', 3209.85),
(461, 9, 'Photojam', '2024-08-17', 5365.13),
(462, 9, 'Muxo', '2025-01-01', 5306.47),
(463, 5, 'Yadel', '2025-01-24', 4849.93),
(464, 8, 'LiveZ', '2025-02-07', 255.96),
(465, 8, 'Jetpulse', '2025-07-08', 2818.24),
(466, 8, 'Bubblebox', '2024-10-28', 3420.28),
(467, 3, 'Quinu', '2025-02-19', 4613.59),
(468, 10, 'Jetpulse', '2025-07-01', 310.37),
(469, 5, 'Tagchat', '2024-12-15', 8227.02),
(470, 7, 'Quinu', '2025-07-31', 6594.88),
(471, 7, 'Kwinu', '2025-01-02', 2206.02),
(472, 5, 'Thoughtmix', '2025-07-11', 8293.08),
(473, 9, 'Skaboo', '2024-11-28', 9353.26),
(474, 10, 'Dabfeed', '2025-06-18', 5735.33),
(475, 2, 'Kwinu', '2025-07-11', 3021.09),
(476, 7, 'Jetpulse', '2025-05-05', 8328.14),
(477, 1, 'Kwinu', '2024-12-09', 2354.86),
(478, 4, 'Rhybox', '2025-02-18', 6673.54),
(479, 7, 'Bubblebox', '2024-10-16', 1196.82),
(480, 9, 'Quimba', '2024-12-30', 3086.11),
(481, 5, 'Photojam', '2025-03-30', 8130.51),
(482, 3, 'Dabfeed', '2025-03-16', 7253.16),
(483, 3, 'Skaboo', '2024-08-14', 7463.97),
(484, 4, 'Tavu', '2024-12-04', 7570.52),
(485, 6, 'Quinu', '2025-05-13', 8565.56),
(486, 3, 'Youbridge', '2025-07-11', 7362.24),
(487, 10, 'LiveZ', '2024-09-05', 5542.85),
(488, 1, 'Tavu', '2025-05-03', 8482.83),
(489, 3, 'Kwinu', '2025-03-02', 7637.44),
(490, 4, 'Youbridge', '2024-10-06', 9657.67),
(491, 6, 'Photojam', '2025-05-22', 6143.72),
(492, 6, 'Skaboo', '2025-04-25', 3506.59),
(493, 6, 'Yadel', '2024-12-19', 1061.08),
(494, 4, 'LiveZ', '2024-12-05', 9921.26),
(495, 6, 'Bubblebox', '2024-09-21', 6796.08),
(496, 6, 'Oodoo', '2025-07-31', 5589.27),
(497, 4, 'Tagchat', '2025-03-27', 7952.38),
(498, 7, 'Thoughtmix', '2025-05-02', 4632.72),
(499, 2, 'Bubblebox', '2024-09-15', 3572.83),
(500, 1, 'Kwinu', '2025-03-13', 9166.71),
(501, 7, 'Quimba', '2025-01-17', 6789.72),
(502, 1, 'Photojam', '2024-09-04', 7840.47),
(503, 2, 'Skaboo', '2025-05-04', 8453.04),
(504, 2, 'LiveZ', '2024-11-30', 7432.43),
(505, 4, 'Bubblebox', '2025-01-14', 743.81),
(506, 10, 'Dabfeed', '2025-02-26', 8745.67),
(507, 2, 'Yadel', '2024-09-22', 8674.38),
(508, 9, 'Devcast', '2025-04-13', 1713.79),
(509, 1, 'Skaboo', '2025-04-09', 6701.49),
(510, 8, 'Flashdog', '2024-10-30', 7526.89),
(511, 10, 'Thoughtmix', '2025-03-13', 1903.95),
(512, 8, 'Muxo', '2024-12-18', 4975.84),
(513, 6, 'Jetpulse', '2025-07-05', 8583.40),
(514, 6, 'Rhybox', '2025-01-17', 1430.22),
(515, 10, 'Quimba', '2025-05-22', 3926.52),
(516, 2, 'Yacero', '2024-10-25', 7434.57),
(517, 3, 'LiveZ', '2025-03-24', 3533.15),
(518, 2, 'Dabfeed', '2025-05-10', 3297.19),
(519, 10, 'Quimba', '2024-11-23', 1558.32),
(520, 1, 'Tavu', '2025-04-10', 4995.22),
(521, 1, 'LiveZ', '2024-10-23', 3043.22),
(522, 3, 'Muxo', '2025-02-06', 5792.32),
(523, 3, 'Quimba', '2024-10-20', 3415.46),
(524, 6, 'Devcast', '2025-05-27', 5558.83),
(525, 10, 'Tagchat', '2024-10-23', 302.76),
(526, 8, 'Yadel', '2025-07-28', 5849.49),
(527, 8, 'Quinu', '2025-06-27', 5428.67),
(528, 7, 'Quimba', '2025-01-05', 4917.42),
(529, 3, 'Skaboo', '2025-05-31', 6193.79),
(530, 1, 'Quimba', '2025-01-21', 7826.03),
(531, 8, 'Yacero', '2025-01-30', 2793.34),
(532, 1, 'Rhybox', '2024-11-27', 2167.15),
(533, 10, 'Thoughtmix', '2024-08-08', 9686.05),
(534, 9, 'Bubblebox', '2025-06-03', 3258.74),
(535, 1, 'Photojam', '2025-01-08', 9417.60),
(536, 6, 'LiveZ', '2024-08-05', 6518.03),
(537, 3, 'Oodoo', '2025-05-06', 7817.78),
(538, 2, 'Dabfeed', '2024-12-21', 2135.49),
(539, 7, 'Tavu', '2025-03-25', 8576.76),
(540, 9, 'Tavu', '2025-04-07', 7501.45),
(541, 10, 'Yadel', '2025-03-06', 5621.95),
(542, 9, 'Tagchat', '2025-01-28', 4976.11),
(543, 10, 'Muxo', '2025-05-08', 7224.80),
(544, 10, 'Yacero', '2025-03-19', 3039.60),
(545, 3, 'Quimba', '2025-05-19', 9471.90),
(546, 8, 'Devcast', '2025-02-03', 819.15),
(547, 2, 'LiveZ', '2025-01-18', 8092.72),
(548, 4, 'Rhybox', '2025-07-13', 7279.26),
(549, 4, 'Quimba', '2025-07-06', 5918.45),
(550, 7, 'Rhybox', '2025-04-06', 6131.17),
(551, 3, 'Jetpulse', '2025-04-30', 7925.22),
(552, 10, 'Dabfeed', '2024-10-30', 3629.29),
(553, 6, 'Quimba', '2025-01-05', 1119.67),
(554, 6, 'Youbridge', '2025-06-12', 935.44),
(555, 8, 'LiveZ', '2024-10-19', 1841.31),
(556, 2, 'Skaboo', '2025-07-08', 7163.41),
(557, 1, 'Jetpulse', '2025-06-21', 673.17),
(558, 1, 'Yadel', '2025-05-10', 9645.83),
(559, 9, 'Quinu', '2025-04-05', 5285.27),
(560, 5, 'Muxo', '2024-09-07', 2822.73),
(561, 3, 'Photojam', '2025-07-05', 2362.74),
(562, 4, 'Tavu', '2024-11-07', 4410.33),
(563, 8, 'Tagchat', '2025-02-04', 3430.99),
(564, 7, 'Photojam', '2024-08-31', 5735.50),
(565, 10, 'Yadel', '2025-06-27', 3246.14),
(566, 3, 'Tagchat', '2025-01-16', 607.33),
(567, 8, 'Devcast', '2025-06-12', 8265.68),
(568, 5, 'Yacero', '2024-11-28', 5024.18),
(569, 3, 'Rhybox', '2024-10-15', 4187.34),
(570, 10, 'Kwinu', '2024-09-26', 2808.28),
(571, 1, 'Rhybox', '2024-09-30', 6343.55),
(572, 2, 'Yacero', '2025-08-01', 7970.63),
(573, 9, 'Flashdog', '2024-08-14', 1934.46),
(574, 9, 'Skaboo', '2024-11-23', 6999.91),
(575, 2, 'Rhybox', '2025-07-19', 6910.69),
(576, 8, 'Flashdog', '2025-05-29', 470.49),
(577, 4, 'Kwinu', '2024-08-05', 8131.24),
(578, 9, 'Quimba', '2025-01-28', 5271.83),
(579, 4, 'Kwinu', '2025-05-18', 8034.13),
(580, 7, 'Quimba', '2025-02-10', 5292.13),
(581, 9, 'Rhybox', '2024-09-23', 3976.57),
(582, 8, 'Thoughtmix', '2024-10-30', 7551.68),
(583, 3, 'Oodoo', '2025-02-25', 787.52),
(584, 2, 'Quinu', '2025-01-06', 9587.87),
(585, 9, 'Jetpulse', '2025-06-17', 9759.62),
(586, 10, 'Rhybox', '2024-09-03', 2900.50),
(587, 1, 'Jetpulse', '2025-07-01', 3173.96),
(588, 4, 'Oodoo', '2025-06-02', 8526.89),
(589, 10, 'Quimba', '2024-12-13', 3619.70),
(590, 9, 'Oodoo', '2025-04-21', 4485.87),
(591, 2, 'Yadel', '2024-09-22', 4277.61),
(592, 6, 'Flashdog', '2024-12-10', 6172.86),
(593, 9, 'Tagchat', '2025-01-16', 6505.31),
(594, 9, 'Quimba', '2025-05-23', 1867.81),
(595, 8, 'Kwinu', '2024-09-28', 7665.65),
(596, 8, 'Oodoo', '2024-08-21', 5731.06),
(597, 6, 'Thoughtmix', '2025-04-21', 4343.80),
(598, 9, 'Yacero', '2024-11-28', 9371.46),
(599, 1, 'Youbridge', '2024-12-30', 8666.80),
(600, 5, 'Tagchat', '2024-12-30', 6602.87),
(601, 6, 'Skaboo', '2024-12-12', 9630.77),
(602, 9, 'Skaboo', '2025-03-10', 6916.16),
(603, 4, 'Yacero', '2024-11-11', 4999.20),
(604, 7, 'Quinu', '2025-03-27', 9043.45),
(605, 6, 'Youbridge', '2024-10-26', 6270.01),
(606, 9, 'Yacero', '2025-04-18', 5233.48),
(607, 5, 'Bubblebox', '2025-01-10', 1440.90),
(608, 6, 'Yadel', '2025-02-27', 6062.66),
(609, 3, 'Yadel', '2024-10-13', 9177.32),
(610, 8, 'Thoughtmix', '2024-12-26', 1164.08),
(611, 8, 'Rhybox', '2025-01-19', 849.14),
(612, 10, 'Youbridge', '2024-09-17', 9381.15),
(613, 4, 'Oodoo', '2025-03-16', 1226.97),
(614, 8, 'Tavu', '2024-08-14', 3729.55),
(615, 7, 'Thoughtmix', '2025-06-20', 2752.03),
(616, 1, 'Bubblebox', '2024-10-26', 9878.98),
(617, 8, 'Dabfeed', '2024-09-14', 1755.15),
(618, 9, 'Skaboo', '2024-11-12', 1527.58),
(619, 1, 'Photojam', '2024-08-09', 847.20),
(620, 7, 'Oodoo', '2024-09-05', 5619.06),
(621, 5, 'Dabfeed', '2024-08-03', 7964.44),
(622, 6, 'Devcast', '2025-05-25', 6343.05),
(623, 10, 'Muxo', '2024-11-17', 8598.12),
(624, 9, 'Skaboo', '2025-06-30', 4439.88),
(625, 1, 'Jetpulse', '2025-07-21', 7614.04),
(626, 3, 'Quinu', '2025-04-18', 7985.50),
(627, 5, 'Quinu', '2024-10-14', 9001.27),
(628, 5, 'Tavu', '2025-02-14', 9508.82),
(629, 10, 'Tagchat', '2025-06-06', 6579.47),
(630, 9, 'Devcast', '2025-05-28', 2760.63),
(631, 2, 'LiveZ', '2024-11-15', 7551.78),
(632, 1, 'Rhybox', '2025-05-18', 3051.12),
(633, 4, 'Youbridge', '2025-02-02', 4621.03),
(634, 8, 'Photojam', '2024-12-30', 4913.59),
(635, 6, 'Yacero', '2025-04-14', 7456.63),
(636, 6, 'Photojam', '2024-10-07', 2701.69),
(637, 9, 'Bubblebox', '2024-10-09', 5339.65),
(638, 7, 'Yadel', '2025-07-02', 1906.16),
(639, 1, 'LiveZ', '2024-11-07', 7936.54),
(640, 6, 'Oodoo', '2025-01-22', 1779.91),
(641, 1, 'LiveZ', '2024-11-02', 2577.48),
(642, 9, 'Flashdog', '2024-09-10', 7386.68),
(643, 7, 'Tavu', '2024-10-15', 4961.63),
(644, 9, 'Rhybox', '2025-03-07', 8890.29),
(645, 9, 'Bubblebox', '2024-11-12', 7769.29),
(646, 3, 'Flashdog', '2025-05-15', 4809.93),
(647, 7, 'Quimba', '2025-05-25', 2516.96),
(648, 1, 'Kwinu', '2024-12-22', 4106.92),
(649, 5, 'LiveZ', '2024-10-29', 9551.66),
(650, 4, 'Kwinu', '2025-02-20', 6643.09),
(651, 4, 'Photojam', '2025-03-30', 3512.37),
(652, 10, 'Youbridge', '2024-09-15', 7084.10),
(653, 1, 'Skaboo', '2025-05-05', 5390.99),
(654, 2, 'LiveZ', '2024-10-02', 5773.24),
(655, 7, 'Dabfeed', '2025-05-19', 2244.33),
(656, 10, 'Youbridge', '2024-12-18', 6635.58),
(657, 8, 'Tagchat', '2024-12-22', 7571.51),
(658, 9, 'Dabfeed', '2024-10-14', 3669.22),
(659, 9, 'Devcast', '2025-02-27', 8353.39),
(660, 8, 'Tavu', '2024-10-06', 618.96),
(661, 7, 'Tavu', '2024-08-24', 5180.92),
(662, 5, 'Youbridge', '2024-12-12', 4169.95),
(663, 5, 'Devcast', '2025-06-04', 774.91),
(664, 4, 'Jetpulse', '2024-11-30', 8548.02),
(665, 2, 'Tavu', '2024-12-26', 9686.46),
(666, 9, 'LiveZ', '2025-04-30', 5719.19),
(667, 10, 'Skaboo', '2025-03-19', 8877.53),
(668, 4, 'Rhybox', '2024-08-17', 2960.35),
(669, 3, 'Oodoo', '2025-07-04', 5834.15),
(670, 8, 'LiveZ', '2025-06-14', 9704.63),
(671, 7, 'Flashdog', '2025-06-23', 669.67),
(672, 2, 'LiveZ', '2025-07-19', 8341.70),
(673, 5, 'Photojam', '2025-05-05', 9377.41),
(674, 7, 'Youbridge', '2024-08-20', 3253.82),
(675, 4, 'Quimba', '2025-03-08', 4531.38),
(676, 6, 'Jetpulse', '2025-02-28', 4925.26),
(677, 6, 'Photojam', '2024-12-04', 2064.97),
(678, 9, 'Photojam', '2025-05-02', 7263.53),
(679, 6, 'Thoughtmix', '2024-09-10', 6732.13),
(680, 2, 'Dabfeed', '2025-06-01', 5314.33),
(681, 9, 'Flashdog', '2024-11-09', 703.38),
(682, 3, 'Kwinu', '2025-01-17', 4377.09),
(683, 2, 'Youbridge', '2025-04-08', 2396.61),
(684, 2, 'Devcast', '2025-07-04', 6464.45),
(685, 9, 'Rhybox', '2025-05-25', 7960.61),
(686, 5, 'Tagchat', '2024-12-01', 6308.54),
(687, 8, 'Kwinu', '2024-10-03', 2911.97),
(688, 8, 'Rhybox', '2024-11-17', 9593.46),
(689, 4, 'Bubblebox', '2025-03-12', 4928.16),
(690, 9, 'Tagchat', '2025-01-13', 4382.33),
(691, 5, 'Quinu', '2025-06-22', 3300.19),
(692, 9, 'Quinu', '2025-06-28', 4534.97),
(693, 6, 'Oodoo', '2024-11-29', 3105.34),
(694, 4, 'Bubblebox', '2024-12-21', 3319.96),
(695, 8, 'Tavu', '2025-07-27', 2091.31),
(696, 6, 'Muxo', '2025-07-01', 3939.90),
(697, 10, 'Photojam', '2024-09-12', 4038.89),
(698, 10, 'Muxo', '2024-12-25', 7484.49),
(699, 7, 'Bubblebox', '2024-12-27', 6144.36),
(700, 1, 'Quimba', '2024-11-13', 4046.05),
(701, 6, 'Photojam', '2024-11-13', 6179.33),
(702, 2, 'Quinu', '2025-07-17', 1561.52),
(703, 3, 'Skaboo', '2025-03-03', 6676.44),
(704, 7, 'Dabfeed', '2025-06-13', 8430.60),
(705, 4, 'Dabfeed', '2024-08-24', 5565.96),
(706, 3, 'Skaboo', '2025-01-09', 5234.88),
(707, 3, 'Quimba', '2025-07-10', 9248.08),
(708, 10, 'Thoughtmix', '2024-11-06', 787.28),
(709, 6, 'Devcast', '2024-12-13', 8007.39),
(710, 6, 'Flashdog', '2025-04-18', 657.38),
(711, 1, 'Quimba', '2025-07-26', 7327.79),
(712, 4, 'Yadel', '2024-09-08', 9910.40),
(713, 2, 'LiveZ', '2025-06-05', 3123.13),
(714, 1, 'Tavu', '2025-04-13', 971.95),
(715, 9, 'Bubblebox', '2024-10-30', 424.42),
(716, 4, 'Tavu', '2024-11-08', 6897.58),
(717, 10, 'Flashdog', '2024-12-11', 9639.13),
(718, 4, 'Photojam', '2025-01-11', 9476.32),
(719, 3, 'Yacero', '2025-07-16', 2110.30),
(720, 3, 'Muxo', '2025-05-27', 5235.59),
(721, 8, 'Flashdog', '2024-08-22', 739.22),
(722, 1, 'Tavu', '2025-05-28', 8590.12),
(723, 5, 'Oodoo', '2024-11-24', 4861.25),
(724, 4, 'Muxo', '2024-09-12', 1368.69),
(725, 3, 'Devcast', '2025-01-14', 9008.25),
(726, 8, 'Muxo', '2025-02-07', 7906.65),
(727, 4, 'Yadel', '2025-02-15', 2538.53),
(728, 9, 'Quinu', '2024-12-01', 7608.91),
(729, 6, 'Tagchat', '2024-10-15', 6391.02),
(730, 3, 'Yacero', '2025-05-12', 5064.67),
(731, 4, 'Yacero', '2024-09-16', 9343.73),
(732, 8, 'LiveZ', '2024-11-21', 4364.07),
(733, 3, 'Photojam', '2024-11-22', 6663.83),
(734, 1, 'Kwinu', '2024-12-27', 4840.10),
(735, 2, 'Yadel', '2025-04-30', 4487.52),
(736, 8, 'Tavu', '2025-01-21', 6588.27),
(737, 4, 'Oodoo', '2025-03-26', 5675.65),
(738, 1, 'Devcast', '2025-03-20', 9397.85),
(739, 10, 'Yadel', '2025-06-04', 3483.47),
(740, 1, 'Youbridge', '2025-02-13', 7099.41),
(741, 7, 'Devcast', '2025-02-24', 4688.00),
(742, 3, 'Quimba', '2024-09-30', 6930.80),
(743, 7, 'Kwinu', '2025-01-16', 3179.80),
(744, 9, 'Bubblebox', '2024-10-31', 609.40),
(745, 9, 'Tagchat', '2025-01-19', 2331.03),
(746, 10, 'Flashdog', '2024-11-09', 9875.81),
(747, 8, 'Yacero', '2025-06-25', 6449.80),
(748, 4, 'Jetpulse', '2025-01-15', 4471.61),
(749, 1, 'Jetpulse', '2025-04-07', 6203.07),
(750, 8, 'Yacero', '2025-05-11', 4229.61),
(751, 2, 'Flashdog', '2025-02-12', 7016.63),
(752, 6, 'LiveZ', '2024-12-05', 3981.79),
(753, 8, 'Rhybox', '2025-07-06', 9451.33),
(754, 1, 'Bubblebox', '2025-07-19', 6692.71),
(755, 6, 'Rhybox', '2025-07-06', 8606.39),
(756, 10, 'Yadel', '2025-01-18', 4597.99),
(757, 2, 'Thoughtmix', '2025-07-26', 5502.94),
(758, 6, 'Devcast', '2025-05-23', 5730.73),
(759, 4, 'Oodoo', '2025-02-12', 6501.80),
(760, 2, 'Thoughtmix', '2025-08-01', 3011.36),
(761, 1, 'Dabfeed', '2025-02-09', 3099.80),
(762, 1, 'Oodoo', '2024-11-14', 2691.83),
(763, 4, 'Flashdog', '2024-10-15', 1751.73),
(764, 4, 'Muxo', '2024-09-02', 3680.38),
(765, 2, 'LiveZ', '2024-10-26', 7738.20),
(766, 2, 'Photojam', '2024-10-27', 4878.17),
(767, 6, 'Yacero', '2025-01-13', 7336.18),
(768, 9, 'Tavu', '2024-11-01', 9649.48),
(769, 9, 'Jetpulse', '2025-05-27', 3847.60),
(770, 3, 'Tagchat', '2024-09-15', 2298.77),
(771, 8, 'Dabfeed', '2025-06-20', 4521.67),
(772, 8, 'Yacero', '2025-04-03', 4984.50),
(773, 9, 'Quimba', '2024-09-13', 7788.71),
(774, 5, 'Yacero', '2025-07-03', 9974.05),
(775, 4, 'Jetpulse', '2025-02-24', 705.58),
(776, 3, 'Yacero', '2025-04-12', 3316.27),
(777, 1, 'Quinu', '2024-10-02', 7694.54),
(778, 5, 'Tagchat', '2024-08-20', 2427.40),
(779, 4, 'Quimba', '2025-06-01', 5833.26),
(780, 7, 'LiveZ', '2024-10-18', 3137.40),
(781, 1, 'Kwinu', '2025-01-06', 5135.34),
(782, 10, 'Quinu', '2024-12-21', 2837.45),
(783, 3, 'Thoughtmix', '2025-01-17', 6123.81),
(784, 5, 'Muxo', '2024-08-12', 4772.47),
(785, 1, 'Tavu', '2024-11-08', 1518.10),
(786, 4, 'LiveZ', '2024-10-24', 2058.80),
(787, 7, 'Tavu', '2025-03-01', 569.50),
(788, 2, 'Quinu', '2024-11-15', 5171.16),
(789, 4, 'Devcast', '2025-04-28', 4359.14),
(790, 4, 'Yadel', '2024-10-01', 491.80),
(791, 4, 'Thoughtmix', '2025-05-18', 8378.52),
(792, 9, 'Tavu', '2025-03-14', 1003.60),
(793, 1, 'Bubblebox', '2024-12-05', 4273.53),
(794, 2, 'LiveZ', '2025-07-29', 5173.62),
(795, 6, 'Photojam', '2025-07-09', 1872.80),
(796, 6, 'Devcast', '2025-05-03', 5094.91),
(797, 5, 'Yacero', '2024-12-13', 7432.61),
(798, 1, 'Youbridge', '2025-05-31', 9637.24),
(799, 9, 'Thoughtmix', '2025-04-22', 7052.87),
(800, 7, 'Dabfeed', '2024-10-08', 7339.90),
(801, 6, 'Yacero', '2024-09-30', 1227.54),
(802, 10, 'Muxo', '2024-09-29', 6844.40),
(803, 3, 'Kwinu', '2025-06-07', 5819.44),
(804, 5, 'Muxo', '2025-02-10', 9306.41),
(805, 9, 'Photojam', '2025-04-03', 9599.99),
(806, 4, 'Quinu', '2025-05-01', 9801.75),
(807, 9, 'LiveZ', '2025-04-09', 8012.38),
(808, 7, 'Thoughtmix', '2025-01-18', 6724.03),
(809, 4, 'Flashdog', '2025-07-30', 5528.81),
(810, 6, 'Muxo', '2024-11-29', 1636.32),
(811, 5, 'Bubblebox', '2025-04-12', 4757.23),
(812, 3, 'Oodoo', '2025-01-18', 2282.94),
(813, 10, 'Yacero', '2024-11-13', 8806.78),
(814, 1, 'Jetpulse', '2025-06-15', 7132.55),
(815, 4, 'Quimba', '2024-12-28', 7159.40),
(816, 6, 'Flashdog', '2025-05-07', 733.13),
(817, 6, 'Photojam', '2025-07-29', 1460.41),
(818, 6, 'Photojam', '2024-10-02', 8515.16),
(819, 9, 'Muxo', '2024-11-06', 6028.82),
(820, 8, 'Yadel', '2025-06-13', 7539.55),
(821, 8, 'Quimba', '2025-07-12', 7774.95),
(822, 5, 'Muxo', '2025-01-22', 9623.29),
(823, 6, 'Photojam', '2025-05-22', 5136.86),
(824, 8, 'Bubblebox', '2024-10-18', 839.90),
(825, 6, 'Skaboo', '2025-03-29', 5509.94),
(826, 9, 'Thoughtmix', '2025-01-12', 1269.98),
(827, 3, 'Tavu', '2025-04-14', 7704.15),
(828, 9, 'Tavu', '2024-11-20', 6517.08),
(829, 7, 'Flashdog', '2025-02-12', 6846.31),
(830, 6, 'Devcast', '2025-06-09', 4321.15),
(831, 2, 'Oodoo', '2024-12-08', 574.65),
(832, 1, 'Photojam', '2025-07-17', 8187.82),
(833, 7, 'Oodoo', '2024-08-13', 8077.22),
(834, 4, 'Yacero', '2025-04-09', 7354.90),
(835, 1, 'Dabfeed', '2024-10-20', 1114.72),
(836, 9, 'Tavu', '2024-10-21', 5130.22),
(837, 7, 'Tavu', '2025-01-07', 3789.55),
(838, 7, 'Flashdog', '2024-08-11', 2497.07),
(839, 8, 'Skaboo', '2024-11-05', 5828.62),
(840, 4, 'Photojam', '2025-05-07', 6764.69),
(841, 8, 'Thoughtmix', '2025-04-20', 7301.22),
(842, 2, 'Jetpulse', '2025-03-10', 4882.86),
(843, 9, 'Rhybox', '2025-02-02', 8100.43),
(844, 6, 'Dabfeed', '2024-11-11', 6148.63),
(845, 2, 'Oodoo', '2025-06-28', 8610.50),
(846, 10, 'Photojam', '2025-07-07', 1081.37),
(847, 9, 'Oodoo', '2024-08-20', 4595.11),
(848, 5, 'Rhybox', '2024-08-05', 9523.34),
(849, 8, 'Flashdog', '2025-07-18', 885.21),
(850, 3, 'Photojam', '2025-05-08', 6540.20),
(851, 4, 'Kwinu', '2025-01-15', 2705.50),
(852, 1, 'Rhybox', '2025-06-21', 9387.03),
(853, 8, 'Quimba', '2024-10-23', 7456.52),
(854, 8, 'Youbridge', '2024-12-20', 8282.43),
(855, 7, 'Quimba', '2025-01-31', 7475.55),
(856, 7, 'Quinu', '2025-05-28', 7218.84),
(857, 6, 'Yacero', '2025-07-11', 3493.22),
(858, 8, 'Tavu', '2025-02-11', 9628.56),
(859, 4, 'Oodoo', '2025-06-10', 4064.81),
(860, 2, 'Tavu', '2025-04-12', 3096.85),
(861, 7, 'Photojam', '2025-02-23', 7975.38),
(862, 10, 'Muxo', '2025-03-22', 5387.42),
(863, 5, 'Yacero', '2025-03-23', 8902.10),
(864, 4, 'Tavu', '2025-02-28', 4553.31),
(865, 9, 'Quimba', '2025-05-03', 5792.15),
(866, 1, 'Yacero', '2025-06-26', 732.11),
(867, 5, 'LiveZ', '2025-05-24', 4450.39),
(868, 8, 'Skaboo', '2025-01-04', 3967.70),
(869, 2, 'Muxo', '2024-09-21', 6735.68),
(870, 3, 'Tavu', '2025-07-05', 1398.08),
(871, 8, 'Tavu', '2024-11-24', 2446.50),
(872, 1, 'Jetpulse', '2025-02-02', 2411.88),
(873, 8, 'Skaboo', '2024-10-27', 2695.51),
(874, 1, 'Quinu', '2024-10-18', 4583.20),
(875, 2, 'Yadel', '2025-07-04', 6145.93),
(876, 5, 'Yadel', '2025-01-18', 2492.20),
(877, 4, 'Tagchat', '2025-01-23', 3566.90),
(878, 4, 'Bubblebox', '2025-05-30', 7874.39),
(879, 4, 'Dabfeed', '2025-04-04', 8559.56),
(880, 4, 'Photojam', '2025-04-01', 1067.00),
(881, 5, 'Tavu', '2025-04-02', 8984.63),
(882, 8, 'Skaboo', '2024-10-18', 612.98),
(883, 1, 'Youbridge', '2025-03-10', 719.78),
(884, 3, 'Quinu', '2024-11-08', 463.87),
(885, 1, 'Devcast', '2024-10-28', 3386.87),
(886, 4, 'Dabfeed', '2025-07-08', 4905.68),
(887, 3, 'Kwinu', '2024-10-03', 6838.87),
(888, 1, 'Oodoo', '2025-02-23', 7115.33),
(889, 6, 'Devcast', '2025-02-17', 2237.67),
(890, 2, 'Thoughtmix', '2024-12-07', 4468.58),
(891, 6, 'Tagchat', '2025-01-30', 7220.96),
(892, 4, 'Thoughtmix', '2025-05-21', 4062.00),
(893, 6, 'Photojam', '2024-08-16', 2915.30),
(894, 2, 'Skaboo', '2025-06-10', 3288.60),
(895, 10, 'LiveZ', '2025-05-20', 5104.77),
(896, 9, 'Skaboo', '2024-12-19', 2186.04),
(897, 5, 'Youbridge', '2024-12-30', 6931.93),
(898, 10, 'Thoughtmix', '2025-02-22', 3803.59),
(899, 6, 'Quimba', '2025-06-28', 4162.89),
(900, 5, 'Oodoo', '2024-09-15', 6038.62),
(901, 3, 'Thoughtmix', '2025-01-15', 8985.33),
(902, 9, 'Yadel', '2025-05-05', 4613.58),
(903, 2, 'Kwinu', '2024-11-22', 9457.03),
(904, 3, 'Rhybox', '2024-08-19', 1810.77),
(905, 8, 'Quimba', '2024-12-20', 9465.91),
(906, 1, 'Rhybox', '2025-04-11', 2288.61),
(907, 10, 'Thoughtmix', '2025-02-12', 9151.19),
(908, 8, 'Bubblebox', '2025-03-11', 7510.83),
(909, 1, 'Jetpulse', '2024-11-22', 7532.58),
(910, 7, 'Quimba', '2024-10-05', 6950.16),
(911, 10, 'Rhybox', '2025-07-01', 6397.37),
(912, 6, 'Jetpulse', '2024-08-20', 9846.83),
(913, 1, 'Yacero', '2024-12-25', 457.85),
(914, 2, 'Youbridge', '2024-11-27', 6116.88),
(915, 9, 'Thoughtmix', '2025-05-31', 8198.53),
(916, 4, 'Jetpulse', '2024-11-24', 5165.42),
(917, 9, 'Thoughtmix', '2024-10-03', 6235.43),
(918, 3, 'Devcast', '2025-03-23', 4767.94),
(919, 3, 'Dabfeed', '2025-04-04', 2490.13),
(920, 7, 'Flashdog', '2025-06-08', 1393.13),
(921, 2, 'Rhybox', '2025-04-21', 737.42),
(922, 1, 'Rhybox', '2024-11-26', 7814.00),
(923, 8, 'Yacero', '2025-05-03', 8440.09),
(924, 8, 'Devcast', '2024-09-02', 1092.83),
(925, 10, 'Tagchat', '2025-04-19', 9054.31),
(926, 4, 'Photojam', '2025-02-01', 3376.94),
(927, 6, 'LiveZ', '2024-12-30', 3967.86),
(928, 4, 'Yadel', '2025-05-07', 8835.00),
(929, 10, 'Rhybox', '2024-10-11', 8296.71),
(930, 7, 'Bubblebox', '2025-02-25', 6335.10),
(931, 4, 'Kwinu', '2025-04-04', 3325.12),
(932, 10, 'Yadel', '2025-03-22', 8911.59),
(933, 4, 'Tavu', '2025-05-31', 2477.54),
(934, 4, 'Rhybox', '2025-03-21', 7235.61),
(935, 10, 'Tavu', '2025-05-10', 4260.42),
(936, 2, 'Skaboo', '2024-11-11', 3461.47),
(937, 10, 'Flashdog', '2025-05-07', 5499.99),
(938, 1, 'Photojam', '2025-07-08', 8631.65),
(939, 4, 'LiveZ', '2024-08-22', 4040.20),
(940, 8, 'Muxo', '2025-03-26', 9858.19),
(941, 4, 'Photojam', '2024-10-30', 7003.58),
(942, 2, 'LiveZ', '2024-11-15', 312.55),
(943, 6, 'Quimba', '2025-01-26', 4651.05),
(944, 8, 'Photojam', '2025-02-17', 5861.79),
(945, 5, 'Skaboo', '2024-09-28', 1755.26),
(946, 10, 'Dabfeed', '2024-12-12', 1931.88),
(947, 2, 'Kwinu', '2025-07-28', 8156.94),
(948, 5, 'Devcast', '2025-04-03', 2221.22),
(949, 5, 'Rhybox', '2025-01-08', 8314.04),
(950, 1, 'LiveZ', '2025-06-22', 5360.38),
(951, 6, 'Thoughtmix', '2025-06-10', 9502.09),
(952, 6, 'Quimba', '2025-07-31', 6220.71),
(953, 3, 'Dabfeed', '2024-08-05', 3237.99),
(954, 10, 'Flashdog', '2025-02-05', 8203.58),
(955, 7, 'Quinu', '2025-01-08', 2269.95),
(956, 3, 'Quimba', '2025-07-15', 3006.53),
(957, 2, 'Tagchat', '2024-08-09', 3762.63),
(958, 5, 'Tavu', '2025-04-08', 4461.74),
(959, 3, 'Rhybox', '2024-10-02', 4372.61),
(960, 5, 'LiveZ', '2024-09-09', 8726.23),
(961, 3, 'Tavu', '2024-11-27', 7584.87),
(962, 3, 'Rhybox', '2024-09-09', 3507.02),
(963, 2, 'Dabfeed', '2025-02-07', 9985.42),
(964, 5, 'Yadel', '2025-05-03', 4828.13),
(965, 7, 'Oodoo', '2024-08-08', 7990.93),
(966, 3, 'Rhybox', '2024-09-18', 2679.35),
(967, 5, 'Quimba', '2024-09-12', 3467.81),
(968, 6, 'Dabfeed', '2024-08-15', 9391.58),
(969, 5, 'Quinu', '2024-10-25', 5384.12),
(970, 1, 'Photojam', '2025-01-28', 7044.01),
(971, 2, 'LiveZ', '2025-06-09', 8309.64),
(972, 3, 'Skaboo', '2024-12-06', 9380.11),
(973, 8, 'Quimba', '2025-03-10', 6467.23),
(974, 4, 'Flashdog', '2024-10-01', 1749.87),
(975, 1, 'Quinu', '2025-06-20', 4837.44),
(976, 9, 'Bubblebox', '2024-12-24', 3029.78),
(977, 2, 'Muxo', '2025-05-22', 5027.61),
(978, 1, 'Skaboo', '2025-07-19', 4739.90),
(979, 4, 'LiveZ', '2025-05-28', 7268.61),
(980, 4, 'Quimba', '2025-07-13', 8060.34),
(981, 1, 'Jetpulse', '2025-04-27', 4313.91),
(982, 10, 'Flashdog', '2024-12-31', 9598.16),
(983, 1, 'Flashdog', '2025-07-20', 7290.19),
(984, 1, 'LiveZ', '2024-11-04', 6622.85),
(985, 4, 'Thoughtmix', '2024-08-09', 1362.20),
(986, 3, 'Yadel', '2024-10-31', 9609.71),
(987, 6, 'Thoughtmix', '2025-01-07', 8477.35),
(988, 10, 'Muxo', '2024-08-03', 4488.19),
(989, 2, 'Tavu', '2025-08-01', 5044.52),
(990, 6, 'Oodoo', '2025-03-27', 1183.50),
(991, 1, 'Photojam', '2025-03-15', 1284.43),
(992, 2, 'Tagchat', '2025-01-15', 8330.46),
(993, 4, 'Photojam', '2025-03-27', 8610.65),
(994, 4, 'Quimba', '2025-01-13', 8666.35),
(995, 1, 'Flashdog', '2024-08-05', 9156.72),
(996, 3, 'Thoughtmix', '2025-03-26', 3386.02),
(997, 4, 'Dabfeed', '2025-01-12', 9524.19),
(998, 4, 'Skaboo', '2025-06-28', 1641.79),
(999, 6, 'Bubblebox', '2024-09-07', 9848.75),
(1000, 9, 'Thoughtmix', '2025-02-02', 9463.56);

-- --------------------------------------------------------

--
-- Estructura para la vista `notas_menciones`
--
DROP TABLE IF EXISTS `notas_menciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `notas_menciones`  AS SELECT `notas`.`id` AS `id`, `notas`.`autor` AS `autor`, `notas`.`titulo` AS `titulo`, `notas`.`contenido` AS `contenido`, `notas`.`fecha` AS `fecha`, `menciones_vendedores`.`vendedor` AS `vendedor`, `menciones_clientes`.`cliente` AS `cliente`, `menciones_ventas`.`venta` AS `venta` FROM (((`notas` join `menciones_vendedores` on(`notas`.`id` = `menciones_vendedores`.`nota`)) join `menciones_clientes` on(`notas`.`id` = `menciones_clientes`.`nota`)) left join `menciones_ventas` on(`notas`.`id` = `menciones_ventas`.`nota`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `usuarios`
--
DROP TABLE IF EXISTS `usuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuarios`  AS SELECT `usuarios_vendedores`.`id` AS `id`, `usuarios_vendedores`.`email` AS `email`, `usuarios_vendedores`.`nombre` AS `nombre`, `usuarios_vendedores`.`apellidos` AS `apellidos`, `usuarios_vendedores`.`telefono` AS `telefono`, `usuarios_vendedores`.`password` AS `password`, `usuarios_vendedores`.`rol` AS `rol` FROM `usuarios_vendedores`union select `usuarios_gestores`.`id` AS `id`,`usuarios_gestores`.`email` AS `email`,`usuarios_gestores`.`nombre` AS `nombre`,`usuarios_gestores`.`apellidos` AS `apellidos`,`usuarios_gestores`.`telefono` AS `telefono`,`usuarios_gestores`.`password` AS `password`,`usuarios_gestores`.`rol` AS `rol` from `usuarios_gestores`  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `usuarios_gestores`
--
DROP TABLE IF EXISTS `usuarios_gestores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuarios_gestores`  AS SELECT `gestores`.`id` AS `id`, `gestores`.`email` AS `email`, `gestores`.`nombre` AS `nombre`, `gestores`.`apellidos` AS `apellidos`, `gestores`.`telefono` AS `telefono`, `cuentas`.`password` AS `password`, 'gestor' AS `rol` FROM (`gestores` join `cuentas` on(`gestores`.`email` = `cuentas`.`email`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `usuarios_vendedores`
--
DROP TABLE IF EXISTS `usuarios_vendedores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuarios_vendedores`  AS SELECT `vendedores`.`id` AS `id`, `vendedores`.`email` AS `email`, `vendedores`.`nombre` AS `nombre`, `vendedores`.`apellidos` AS `apellidos`, `vendedores`.`telefono` AS `telefono`, `cuentas`.`password` AS `password`, 'vendedor' AS `rol` FROM (`vendedores` join `cuentas` on(`vendedores`.`email` = `cuentas`.`email`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `gestores`
--
ALTER TABLE `gestores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gestor_cuenta` (`email`);

--
-- Indices de la tabla `menciones_clientes`
--
ALTER TABLE `menciones_clientes`
  ADD UNIQUE KEY `nota` (`nota`,`cliente`),
  ADD KEY `fk_mencion_cliente` (`cliente`);

--
-- Indices de la tabla `menciones_vendedores`
--
ALTER TABLE `menciones_vendedores`
  ADD UNIQUE KEY `nota` (`nota`,`vendedor`),
  ADD KEY `fk_mencion_vendedor` (`vendedor`);

--
-- Indices de la tabla `menciones_ventas`
--
ALTER TABLE `menciones_ventas`
  ADD UNIQUE KEY `nota` (`nota`,`venta`),
  ADD KEY `fk_mencion_venta` (`venta`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nota_autor` (`autor`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vendedor_cuenta` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venta_vendedor` (`vendedor`),
  ADD KEY `fk_venta_cliente` (`cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gestores`
--
ALTER TABLE `gestores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gestores`
--
ALTER TABLE `gestores`
  ADD CONSTRAINT `fk_gestor_cuenta` FOREIGN KEY (`email`) REFERENCES `cuentas` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menciones_clientes`
--
ALTER TABLE `menciones_clientes`
  ADD CONSTRAINT `fk_mencion_cliente` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mencion_nota` FOREIGN KEY (`nota`) REFERENCES `notas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menciones_vendedores`
--
ALTER TABLE `menciones_vendedores`
  ADD CONSTRAINT `fk_mencion_vendedor` FOREIGN KEY (`vendedor`) REFERENCES `vendedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mencion_vendedor_nota` FOREIGN KEY (`nota`) REFERENCES `notas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menciones_ventas`
--
ALTER TABLE `menciones_ventas`
  ADD CONSTRAINT `fk_mencion_venta` FOREIGN KEY (`venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mencion_venta_nota` FOREIGN KEY (`nota`) REFERENCES `notas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_nota_autor` FOREIGN KEY (`autor`) REFERENCES `gestores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD CONSTRAINT `fk_vendedor_cuenta` FOREIGN KEY (`email`) REFERENCES `cuentas` (`email`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_venta_vendedor` FOREIGN KEY (`vendedor`) REFERENCES `vendedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
