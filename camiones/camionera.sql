-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2019 a las 00:47:29
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `camionera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiento`
--

CREATE TABLE `asiento` (
  `asiento_id` int(11) NOT NULL,
  `autobus_id` int(11) NOT NULL,
  `asiento` varchar(40) NOT NULL,
  `pasajero_id` int(11) DEFAULT NULL,
  `ocupado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asiento`
--

INSERT INTO `asiento` (`asiento_id`, `autobus_id`, `numero_asiento`, `pasajero_id`, `ocupado`) VALUES
(1, 1, '1', NULL, 0),
(2, 1, '2', NULL, 0),
(3, 1, '3', NULL, 1),
(4, 1, '4', NULL, 1),
(5, 1, '5', NULL, 0),
(6, 1, '6', NULL, 0),
(7, 1, '7', NULL, 0),
(8, 1, '8', NULL, 0),
(9, 1, '9', NULL, 0),
(10, 1, '10', NULL, 1),
(11, 1, '11', NULL, 1),
(12, 1, '12', NULL, 0),
(13, 1, '13', NULL, 0),
(14, 1, '14', NULL, 0),
(15, 1, '15', NULL, 1),
(16, 1, '16', NULL, 0),
(17, 1, '17', NULL, 0),
(18, 1, '18', NULL, 0),
(19, 1, '19', NULL, 1),
(20, 1, '20', NULL, 1),
(21, 1, '21', NULL, 0),
(22, 1, '22', NULL, 0),
(23, 1, '23', NULL, 0),
(24, 1, '24', NULL, 0),
(25, 1, '25', NULL, 0),
(26, 1, '26', NULL, 1),
(27, 1, '27', NULL, 0),
(28, 1, '28', NULL, 0),
(29, 2, '1', NULL, 0),
(30, 2, '2', NULL, 0),
(31, 2, '3', NULL, 0),
(32, 2, '4', NULL, 0),
(33, 2, '5', NULL, 0),
(34, 2, '6', NULL, 0),
(35, 2, '7', NULL, 0),
(36, 2, '8', NULL, 0),
(37, 2, '9', NULL, 0),
(38, 2, '10', NULL, 0),
(39, 2, '11', NULL, 0),
(40, 2, '12', NULL, 0),
(41, 2, '13', NULL, 0),
(42, 2, '14', NULL, 0),
(43, 2, '15', NULL, 0),
(44, 2, '16', NULL, 0),
(45, 2, '17', NULL, 0),
(46, 2, '18', NULL, 0),
(47, 2, '19', NULL, 0),
(48, 2, '20', NULL, 0),
(49, 2, '21', NULL, 0),
(50, 2, '22', NULL, 0),
(51, 2, '23', NULL, 0),
(52, 2, '24', NULL, 0),
(53, 2, '25', NULL, 0),
(54, 2, '26', NULL, 0),
(55, 2, '27', NULL, 0),
(56, 2, '28', NULL, 0),
(57, 3, '1', NULL, 0),
(58, 3, '2', NULL, 0),
(59, 3, '3', NULL, 0),
(60, 3, '4', NULL, 0),
(61, 3, '5', NULL, 0),
(62, 3, '6', NULL, 0),
(63, 3, '7', NULL, 0),
(64, 3, '8', NULL, 0),
(65, 3, '9', NULL, 0),
(66, 3, '10', NULL, 0),
(67, 3, '11', NULL, 0),
(68, 3, '12', NULL, 0),
(69, 3, '13', NULL, 0),
(70, 3, '14', NULL, 0),
(71, 3, '15', NULL, 0),
(72, 3, '16', NULL, 0),
(73, 3, '17', NULL, 0),
(74, 3, '18', NULL, 0),
(75, 3, '19', NULL, 0),
(76, 3, '20', NULL, 0),
(77, 3, '21', NULL, 0),
(78, 3, '22', NULL, 0),
(79, 3, '23', NULL, 0),
(80, 3, '24', NULL, 0),
(81, 3, '25', NULL, 0),
(82, 3, '26', NULL, 0),
(83, 3, '27', NULL, 0),
(84, 3, '28', NULL, 0),
(85, 4, '1', NULL, 1),
(86, 4, '2', NULL, 0),
(87, 4, '3', NULL, 0),
(88, 4, '4', NULL, 0),
(89, 4, '5', NULL, 0),
(90, 4, '6', NULL, 0),
(91, 4, '7', NULL, 0),
(92, 4, '8', NULL, 0),
(93, 4, '9', NULL, 0),
(94, 4, '10', NULL, 0),
(95, 4, '11', NULL, 0),
(96, 4, '12', NULL, 0),
(97, 4, '13', NULL, 0),
(98, 4, '14', NULL, 0),
(99, 4, '15', NULL, 0),
(100, 4, '16', NULL, 0),
(101, 4, '17', NULL, 0),
(102, 4, '18', NULL, 0),
(103, 4, '19', NULL, 0),
(104, 4, '20', NULL, 0),
(105, 4, '21', NULL, 0),
(106, 4, '22', NULL, 0),
(107, 4, '23', NULL, 0),
(108, 4, '24', NULL, 1),
(109, 4, '25', NULL, 1),
(110, 4, '26', NULL, 0),
(111, 4, '27', NULL, 0),
(112, 4, '28', NULL, 0),
(113, 5, '1', NULL, 0),
(114, 5, '2', NULL, 0),
(115, 5, '3', NULL, 0),
(116, 5, '4', NULL, 0),
(117, 5, '5', NULL, 0),
(118, 5, '6', NULL, 0),
(119, 5, '7', NULL, 0),
(120, 5, '8', NULL, 0),
(121, 5, '9', NULL, 0),
(122, 5, '10', NULL, 0),
(123, 5, '11', NULL, 0),
(124, 5, '12', NULL, 0),
(125, 5, '13', NULL, 0),
(126, 5, '14', NULL, 0),
(127, 5, '15', NULL, 0),
(128, 5, '16', NULL, 0),
(129, 5, '17', NULL, 0),
(130, 5, '18', NULL, 0),
(131, 5, '19', NULL, 0),
(132, 5, '20', NULL, 0),
(133, 5, '21', NULL, 0),
(134, 5, '22', NULL, 0),
(135, 5, '23', NULL, 0),
(136, 5, '24', NULL, 0),
(137, 5, '25', NULL, 0),
(138, 5, '26', NULL, 0),
(139, 5, '27', NULL, 0),
(140, 5, '28', NULL, 0),
(141, 6, '1', NULL, 0),
(142, 6, '2', NULL, 0),
(143, 6, '3', NULL, 0),
(144, 6, '4', NULL, 0),
(145, 6, '5', NULL, 0),
(146, 6, '6', NULL, 0),
(147, 6, '7', NULL, 0),
(148, 6, '8', NULL, 0),
(149, 6, '9', NULL, 0),
(150, 6, '10', NULL, 0),
(151, 6, '11', NULL, 0),
(152, 6, '12', NULL, 0),
(153, 6, '13', NULL, 0),
(154, 6, '14', NULL, 0),
(155, 6, '15', NULL, 0),
(156, 6, '16', NULL, 0),
(157, 6, '17', NULL, 0),
(158, 6, '18', NULL, 0),
(159, 6, '19', NULL, 0),
(160, 6, '20', NULL, 0),
(161, 6, '21', NULL, 0),
(162, 6, '22', NULL, 0),
(163, 6, '23', NULL, 0),
(164, 6, '24', NULL, 0),
(165, 6, '25', NULL, 0),
(166, 6, '26', NULL, 0),
(167, 6, '27', NULL, 0),
(168, 6, '28', NULL, 0),
(169, 7, '1', NULL, 0),
(170, 7, '2', NULL, 0),
(171, 7, '3', NULL, 0),
(172, 7, '4', NULL, 0),
(173, 7, '5', NULL, 0),
(174, 7, '6', NULL, 0),
(175, 7, '7', NULL, 0),
(176, 7, '8', NULL, 0),
(177, 7, '9', NULL, 0),
(178, 7, '10', NULL, 0),
(179, 7, '11', NULL, 0),
(180, 7, '12', NULL, 0),
(181, 7, '13', NULL, 0),
(182, 7, '14', NULL, 0),
(183, 7, '15', NULL, 0),
(184, 7, '16', NULL, 0),
(185, 7, '17', NULL, 0),
(186, 7, '18', NULL, 0),
(187, 7, '19', NULL, 0),
(188, 7, '20', NULL, 0),
(189, 7, '21', NULL, 0),
(190, 7, '22', NULL, 0),
(191, 7, '23', NULL, 0),
(192, 7, '24', NULL, 0),
(193, 7, '25', NULL, 0),
(194, 7, '26', NULL, 0),
(195, 7, '27', NULL, 0),
(196, 7, '28', NULL, 0),
(197, 8, '1', NULL, 0),
(198, 8, '2', NULL, 0),
(199, 8, '3', NULL, 0),
(200, 8, '4', NULL, 0),
(201, 8, '5', NULL, 0),
(202, 8, '6', NULL, 0),
(203, 8, '7', NULL, 0),
(204, 8, '8', NULL, 0),
(205, 8, '9', NULL, 0),
(206, 8, '10', NULL, 0),
(207, 8, '11', NULL, 0),
(208, 8, '12', NULL, 0),
(209, 8, '13', NULL, 0),
(210, 8, '14', NULL, 0),
(211, 8, '15', NULL, 0),
(212, 8, '16', NULL, 0),
(213, 8, '17', NULL, 0),
(214, 8, '18', NULL, 0),
(215, 8, '19', NULL, 0),
(216, 8, '20', NULL, 0),
(217, 8, '21', NULL, 0),
(218, 8, '22', NULL, 0),
(219, 8, '23', NULL, 0),
(220, 8, '24', NULL, 0),
(221, 8, '25', NULL, 0),
(222, 8, '26', NULL, 0),
(223, 8, '27', NULL, 0),
(224, 8, '28', NULL, 0),
(225, 9, '1', NULL, 0),
(226, 9, '2', NULL, 0),
(227, 9, '3', NULL, 0),
(228, 9, '4', NULL, 0),
(229, 9, '5', NULL, 0),
(230, 9, '6', NULL, 0),
(231, 9, '7', NULL, 0),
(232, 9, '8', NULL, 0),
(233, 9, '9', NULL, 0),
(234, 9, '10', NULL, 0),
(235, 9, '11', NULL, 0),
(236, 9, '12', NULL, 0),
(237, 9, '13', NULL, 0),
(238, 9, '14', NULL, 0),
(239, 9, '15', NULL, 0),
(240, 9, '16', NULL, 0),
(241, 9, '17', NULL, 0),
(242, 9, '18', NULL, 0),
(243, 9, '19', NULL, 0),
(244, 9, '20', NULL, 0),
(245, 9, '21', NULL, 0),
(246, 9, '22', NULL, 0),
(247, 9, '23', NULL, 0),
(248, 9, '24', NULL, 0),
(249, 9, '25', NULL, 0),
(250, 9, '26', NULL, 0),
(251, 9, '27', NULL, 0),
(252, 9, '28', NULL, 0),
(253, 10, '1', NULL, 0),
(254, 10, '2', NULL, 0),
(255, 10, '3', NULL, 0),
(256, 10, '4', NULL, 1),
(257, 10, '5', NULL, 0),
(258, 10, '6', NULL, 0),
(259, 10, '7', NULL, 0),
(260, 10, '8', NULL, 0),
(261, 10, '9', NULL, 0),
(262, 10, '10', NULL, 0),
(263, 10, '11', NULL, 0),
(264, 10, '12', NULL, 0),
(265, 10, '13', NULL, 0),
(266, 10, '14', NULL, 0),
(267, 10, '15', NULL, 0),
(268, 10, '16', NULL, 0),
(269, 10, '17', NULL, 0),
(270, 10, '18', NULL, 0),
(271, 10, '19', NULL, 0),
(272, 10, '20', NULL, 0),
(273, 10, '21', NULL, 0),
(274, 10, '22', NULL, 0),
(275, 10, '23', NULL, 0),
(276, 10, '24', NULL, 0),
(277, 10, '25', NULL, 0),
(278, 10, '26', NULL, 0),
(279, 10, '27', NULL, 0),
(280, 10, '28', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autobus`
--

CREATE TABLE `autobus` (
  `autobus_id` int(11) NOT NULL,
  `matricula` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `autobus`
--

INSERT INTO `autobus` (`autobus_id`, `matricula`) VALUES
(1, '8490x8Y'),
(2, '3596mbO'),
(3, '7862wVR'),
(4, '2347UC5'),
(5, '80663Fe'),
(6, '6999Z3C'),
(7, '8438xTT'),
(8, '8833gGy'),
(9, '01910NA'),
(10, '23288Wr'),
(11, '50131oK'),
(12, '1706rIZ'),
(13, '7320NAD'),
(14, '2494ZM8'),
(15, '2688YgJ'),
(16, '7064cmf'),
(17, '3103G18'),
(18, '0573tpu'),
(19, '6437B94'),
(20, '4335Aut'),
(21, '1552oRf'),
(22, '7156ZeU'),
(23, '1552u4b'),
(24, '4393Wu0'),
(25, '3932YwB'),
(26, '6463WBb'),
(27, '38850GH'),
(28, '7870HkV'),
(29, '7953zoA'),
(30, '2894M21'),
(31, '8217nSH'),
(32, '75118tG'),
(33, '0854de5'),
(34, '5384a1P'),
(35, '4737Xsj'),
(36, '0486lig'),
(37, '0131dpd'),
(38, '48503ds'),
(39, '18309dX'),
(40, '4262GRX'),
(41, '7129HOe'),
(42, '29587uN'),
(43, '44125ov'),
(44, '7241WX1'),
(45, '4328el0'),
(46, '7617PYz'),
(47, '6627AOb'),
(48, '1291tGZ'),
(49, '6684XDM'),
(50, '10636QI'),
(51, '2467NIz'),
(52, '5450Brv'),
(53, '5268Q5u'),
(54, '33717P6'),
(55, '5500ZrS'),
(56, '00128Uc'),
(57, '5891LsT'),
(58, '6900nKq'),
(59, '3316Xsd'),
(60, '2185XNm'),
(61, '5567S52'),
(62, '0364wx8'),
(63, '4602xQ5'),
(64, '8078cTH'),
(65, '46863rM'),
(66, '4508mnB'),
(67, '1991OLW'),
(68, '1365VI4'),
(69, '4755jWw'),
(70, '5787DWh'),
(71, '2958Ppu'),
(72, '86141W8'),
(73, '6584cJC'),
(74, '9746FV6'),
(75, '5294smT'),
(76, '8132C8U'),
(77, '7048GTo'),
(78, '4427woV'),
(79, '0223CiW'),
(80, '7108AtP'),
(81, '6031nDo'),
(82, '6250jvi'),
(83, '03524SS'),
(84, '57223gP'),
(85, '3985NLR'),
(86, '9015eQ4'),
(87, '1019S2r'),
(88, '0623Iez'),
(89, '30766XG'),
(90, '1095sVI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `destino_id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `destino`
--

INSERT INTO `destino` (`destino_id`, `nombre`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Chihuahua'),
(6, 'Chiapas'),
(7, 'Coahuila'),
(8, 'Colima'),
(9, 'Durango'),
(10, 'Guanajuato'),
(11, 'Guerrero'),
(12, 'Hidalgo'),
(13, 'Jalisco'),
(14, 'Mexico'),
(15, 'Michoacan'),
(16, 'Morelos'),
(17, 'Nayarit'),
(18, 'Nuevo Leon'),
(19, 'Oaxaca'),
(20, 'Puebla'),
(21, 'Queretaro'),
(22, 'Quintana Roo'),
(23, 'San Luis Potosi'),
(24, 'Sinaloa'),
(25, 'Sonora'),
(26, 'Tabasco'),
(27, 'Tamaulipas'),
(28, 'Tlaxcala'),
(29, 'Veracruz'),
(30, 'Yucatan'),
(31, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino_autobus`
--

CREATE TABLE `destino_autobus` (
  `destino_autobus_id` int(11) NOT NULL,
  `autobus_id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL,
  `hora` time DEFAULT NULL,
  `precioEstudiante` float DEFAULT NULL,
  `precioNormal` float DEFAULT NULL,
  `precioEspecial` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `destino_autobus`
--

INSERT INTO `destino_autobus` (`destino_autobus_id`, `autobus_id`, `destino_id`, `hora`, `precioEstudiante`, `precioNormal`, `precioEspecial`) VALUES
(1, 1, 1, '06:00:00', 438, 322, 203),
(2, 2, 1, '09:00:00', 462, 422, 250),
(3, 3, 1, '20:00:00', 266, 339, 303),
(4, 4, 2, '17:00:00', 180, 229, 471),
(5, 5, 2, '05:00:00', 245, 330, 201),
(6, 6, 2, '10:00:00', 188, 282, 390),
(7, 7, 3, '09:00:00', 328, 488, 268),
(8, 8, 3, '08:00:00', 231, 157, 305),
(9, 9, 3, '06:00:00', 453, 420, 408),
(10, 10, 4, '17:00:00', 490, 256, 353),
(11, 11, 4, '15:00:00', 245, 431, 250),
(12, 12, 4, '15:00:00', 353, 268, 403),
(13, 13, 5, '11:00:00', 456, 318, 363),
(14, 14, 5, '20:00:00', 367, 401, 316),
(15, 15, 5, '11:00:00', 216, 490, 468),
(16, 16, 6, '22:00:00', 278, 231, 153),
(17, 17, 6, '20:00:00', 446, 496, 370),
(18, 18, 6, '11:00:00', 192, 320, 384),
(19, 19, 7, '14:00:00', 490, 220, 275),
(20, 20, 7, '15:00:00', 304, 361, 387),
(21, 21, 7, '07:00:00', 247, 167, 455),
(22, 22, 8, '10:00:00', 278, 372, 354),
(23, 23, 8, '20:00:00', 295, 202, 236),
(24, 24, 8, '17:00:00', 468, 441, 431),
(25, 25, 9, '19:00:00', 161, 229, 310),
(26, 26, 9, '10:00:00', 159, 321, 452),
(27, 27, 9, '13:00:00', 271, 345, 405),
(28, 28, 10, '14:00:00', 312, 345, 405),
(29, 29, 10, '14:00:00', 243, 209, 154),
(30, 30, 10, '14:00:00', 166, 413, 300),
(31, 31, 11, '22:00:00', 485, 172, 256),
(32, 32, 11, '08:00:00', 358, 434, 441),
(33, 33, 11, '20:00:00', 300, 489, 284),
(34, 34, 12, '18:00:00', 231, 287, 197),
(35, 35, 12, '21:00:00', 338, 349, 224),
(36, 36, 12, '18:00:00', 287, 481, 367),
(37, 37, 13, '19:00:00', 301, 343, 154),
(38, 38, 13, '09:00:00', 284, 391, 156),
(39, 39, 13, '12:00:00', 411, 323, 338),
(40, 40, 14, '22:00:00', 430, 418, 223),
(41, 41, 14, '17:00:00', 392, 381, 274),
(42, 42, 14, '12:00:00', 352, 311, 285),
(43, 43, 15, '07:00:00', 168, 302, 475),
(44, 44, 15, '17:00:00', 152, 238, 230),
(45, 45, 15, '22:00:00', 322, 190, 264),
(46, 46, 16, '19:00:00', 323, 402, 264),
(47, 47, 16, '09:00:00', 325, 215, 354),
(48, 48, 16, '17:00:00', 271, 405, 239),
(49, 49, 17, '12:00:00', 378, 158, 309),
(50, 50, 17, '17:00:00', 487, 238, 432),
(51, 51, 17, '21:00:00', 280, 193, 454),
(52, 52, 18, '18:00:00', 358, 314, 469),
(53, 53, 18, '05:00:00', 177, 157, 429),
(54, 54, 18, '14:00:00', 273, 356, 208),
(55, 55, 19, '20:00:00', 206, 215, 388),
(56, 56, 19, '07:00:00', 205, 235, 409),
(57, 57, 19, '18:00:00', 421, 328, 372),
(58, 58, 20, '08:00:00', 162, 447, 174),
(59, 59, 20, '05:00:00', 289, 415, 228),
(60, 60, 20, '14:00:00', 285, 185, 206),
(61, 61, 21, '12:00:00', 469, 233, 240),
(62, 62, 21, '21:00:00', 430, 289, 218),
(63, 63, 21, '08:00:00', 413, 354, 389),
(64, 64, 22, '15:00:00', 492, 280, 335),
(65, 65, 22, '08:00:00', 281, 172, 221),
(66, 66, 22, '13:00:00', 210, 271, 300),
(67, 67, 23, '11:00:00', 163, 430, 188),
(68, 68, 23, '15:00:00', 402, 304, 312),
(69, 69, 23, '11:00:00', 251, 426, 365),
(70, 70, 24, '18:00:00', 251, 352, 290),
(71, 71, 24, '13:00:00', 244, 287, 341),
(72, 72, 24, '07:00:00', 463, 371, 457),
(73, 73, 25, '12:00:00', 440, 260, 442),
(74, 74, 25, '21:00:00', 177, 469, 438),
(75, 75, 25, '20:00:00', 273, 227, 487),
(76, 76, 26, '15:00:00', 473, 364, 232),
(77, 77, 26, '13:00:00', 323, 457, 353),
(78, 78, 26, '18:00:00', 181, 167, 336),
(79, 79, 27, '05:00:00', 161, 379, 454),
(80, 80, 27, '09:00:00', 317, 460, 245),
(81, 81, 27, '05:00:00', 267, 180, 336),
(82, 82, 28, '16:00:00', 361, 225, 224),
(83, 83, 28, '08:00:00', 264, 267, 184),
(84, 84, 28, '17:00:00', 195, 491, 282),
(85, 85, 29, '16:00:00', 451, 282, 472),
(86, 86, 29, '10:00:00', 360, 486, 165),
(87, 87, 29, '13:00:00', 461, 209, 488),
(88, 88, 30, '10:00:00', 483, 363, 348),
(89, 89, 30, '15:00:00', 171, 193, 210),
(90, 90, 30, '16:00:00', 481, 323, 266);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasajero`
--

CREATE TABLE `pasajero` (
  `pasajero_id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `asiento` varchar(40) NOT NULL,
  `totalPagado` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pasajero`
--

INSERT INTO `pasajero` (`pasajero_id`, `nombre`, `apellido`, `asiento`, `totalPagado`) VALUES
(1, '123', '123', '0', 438),
(2, '123', '123', '0', 438),
(3, '123', '123', '0', 438),
(4, 'aaaa ', 'aaa ', ' 0', 438),
(5, 'aaaa ', 'aaa ', ' 0', 438),
(6, 'aaaa ', 'aaa ', ' 0', 438),
(7, 'aaaa ', 'aaa ', ' 0', 438),
(8, 'aaaa ', 'aaa ', ' 0', 438),
(9, 'aaaa ', 'aaa ', ' 0', 438),
(10, 'aaaa ', 'aaa ', ' 0', 438),
(11, 'marlon ', 'mama ', ' 0', 438),
(12, 'qwe ', 'aedeqw ', ' 0', 438),
(13, 'qwe ', 'aedeqw ', ' 0', 438),
(14, 'qwe ', 'aedeqw ', ' 0', 438),
(15, 'qwe ', 'aedeqw ', ' 0', 438),
(16, 'qwe ', 'aedeqw ', ' 0', 438),
(17, 'qwe ', 'aedeqw ', ' 0', 438),
(18, 'aaa ', 'aa ', ' 0', 438);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `montoPagado` float DEFAULT NULL,
  `fecha` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `usuario_id`, `montoPagado`, `fecha`) VALUES
(1, 1, 438, '00:00:00'),
(2, 2, 438, '00:00:00'),
(3, 2, 438, '00:00:00'),
(4, 4, 438, '06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_asiento`
--

CREATE TABLE `ticket_asiento` (
  `ticket_asiento_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `asiento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `user` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `saldo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `user`, `password`, `nombre`, `apellido`, `saldo`) VALUES
(1, 'vaxter', '1234', 'marlon', 'martinez', 1000),
(2, '123123', '1231', '12312', '12313', 1000),
(3, 'asdasd', 'asd', 'asdasd', 'asd', 1000),
(4, 'test', '123', 'test', 'test', 1000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD PRIMARY KEY (`asiento_id`),
  ADD KEY `autobus_id` (`autobus_id`),
  ADD KEY `pasajero_id` (`pasajero_id`);

--
-- Indices de la tabla `autobus`
--
ALTER TABLE `autobus`
  ADD PRIMARY KEY (`autobus_id`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`destino_id`);

--
-- Indices de la tabla `destino_autobus`
--
ALTER TABLE `destino_autobus`
  ADD PRIMARY KEY (`destino_autobus_id`),
  ADD KEY `destino_id` (`destino_id`),
  ADD KEY `autobus_id` (`autobus_id`);

--
-- Indices de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  ADD PRIMARY KEY (`pasajero_id`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `ticket_asiento`
--
ALTER TABLE `ticket_asiento`
  ADD PRIMARY KEY (`ticket_asiento_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asiento`
--
ALTER TABLE `asiento`
  MODIFY `asiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT de la tabla `autobus`
--
ALTER TABLE `autobus`
  MODIFY `autobus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `destino`
--
ALTER TABLE `destino`
  MODIFY `destino_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `destino_autobus`
--
ALTER TABLE `destino_autobus`
  MODIFY `destino_autobus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de la tabla `pasajero`
--
ALTER TABLE `pasajero`
  MODIFY `pasajero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ticket_asiento`
--
ALTER TABLE `ticket_asiento`
  MODIFY `ticket_asiento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asiento`
--
ALTER TABLE `asiento`
  ADD CONSTRAINT `asiento_ibfk_1` FOREIGN KEY (`autobus_id`) REFERENCES `autobus` (`autobus_id`),
  ADD CONSTRAINT `asiento_ibfk_2` FOREIGN KEY (`pasajero_id`) REFERENCES `pasajero` (`pasajero_id`);

--
-- Filtros para la tabla `destino_autobus`
--
ALTER TABLE `destino_autobus`
  ADD CONSTRAINT `destino_autobus_ibfk_1` FOREIGN KEY (`destino_id`) REFERENCES `destino` (`destino_id`),
  ADD CONSTRAINT `destino_autobus_ibfk_2` FOREIGN KEY (`autobus_id`) REFERENCES `autobus` (`autobus_id`);

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`);

--
-- Filtros para la tabla `ticket_asiento`
--
ALTER TABLE `ticket_asiento`
  ADD CONSTRAINT `ticket_asiento_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`ticket_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
