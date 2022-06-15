-- phpMyAdmin SQL Dump
-- version 5.0.4deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-06-2022 a las 04:42:13
-- Versión del servidor: 10.5.15-MariaDB-0+deb11u1
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cosechando3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campoespecies`
--

CREATE TABLE `campoespecies` (
  `idcamesp` int(11) NOT NULL,
  `idcamfk` int(11) NOT NULL,
  `idespfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `campoespecies`
--

INSERT INTO `campoespecies` (`idcamesp`, `idcamfk`, `idespfk`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 1),
(4, 2, 3),
(5, 3, 3),
(6, 3, 4),
(7, 3, 1),
(8, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campos`
--

CREATE TABLE `campos` (
  `idcamp` int(11) NOT NULL,
  `rutfk` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nomcam` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `comuna` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `region` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `hectareas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `campos`
--

INSERT INTO `campos` (`idcamp`, `rutfk`, `nomcam`, `direccion`, `comuna`, `region`, `hectareas`) VALUES
(1, '1-0', 'Campo1-0.1', 'Rosas 456', 'Rengo', 'VI', 45),
(2, '1-0', 'Campo1-0.2', 'Calle1  456', 'Malloa', 'VI', 70),
(3, '2-0', 'Campo2-0', 'mujica 123', 'VIII', 'conce', 56),
(4, '3-0', 'Campo3-0', 'santa cecilia 456', 'rengo', 'VI', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campovariedades`
--

CREATE TABLE `campovariedades` (
  `idcamvar` int(11) NOT NULL,
  `idcamfk` int(11) NOT NULL,
  `idespfk` int(11) NOT NULL,
  `idvarfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `campovariedades`
--

INSERT INTO `campovariedades` (`idcamvar`, `idcamfk`, `idespfk`, `idvarfk`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 1, 4, 8),
(4, 1, 4, 9),
(5, 2, 1, 2),
(6, 2, 1, 3),
(7, 2, 3, 6),
(8, 3, 3, 6),
(9, 3, 3, 7),
(10, 3, 4, 8),
(11, 3, 4, 9),
(12, 4, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcat` int(11) NOT NULL,
  `categoria` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcat`, `categoria`) VALUES
(1, 'Plaguicidas'),
(2, 'Insumos'),
(3, 'Servicios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuarteles`
--

CREATE TABLE `cuarteles` (
  `idcuartel` int(11) NOT NULL,
  `idcamfk` int(11) NOT NULL,
  `nomcuartel` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `idespfk` int(11) NOT NULL DEFAULT 1,
  `idvarfk` int(11) NOT NULL,
  `hectareas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuarteles`
--

INSERT INTO `cuarteles` (`idcuartel`, `idcamfk`, `nomcuartel`, `idespfk`, `idvarfk`, `hectareas`) VALUES
(1, 1, 'cuartel11', 1, 1, 2),
(2, 1, 'cuartel12', 1, 2, 3),
(3, 1, 'cuartel18', 4, 8, 10),
(4, 1, 'cuartel19', 4, 9, 5),
(5, 2, 'cuartel22', 1, 2, 14),
(6, 2, 'Cuertel23', 1, 3, 14),
(7, 2, 'cuartel26', 3, 6, 16),
(8, 3, 'Cuartel36', 3, 6, 17),
(9, 3, 'Cuartel37', 3, 7, 18),
(10, 3, 'Cuartel38', 4, 8, 8),
(11, 3, 'Cuartel39', 4, 9, 9),
(12, 4, 'Cuartel45', 2, 5, 3),
(13, 1, 'cuartel11', 1, 1, 4),
(14, 1, 'cuartel11', 1, 1, 23),
(15, 2, 'cuartelito', 1, 3, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `idesp` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`idesp`, `nombre`) VALUES
(1, 'Manzana'),
(2, 'Naranja'),
(3, 'Pera'),
(4, 'Tomate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formadepago`
--

CREATE TABLE `formadepago` (
  `idfpago` int(11) NOT NULL,
  `fpago` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `formadepago`
--

INSERT INTO `formadepago` (`idfpago`, `fpago`) VALUES
(1, 'Contado'),
(2, '30 dias'),
(3, '60 dias'),
(4, '90 dias'),
(5, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medidas`
--

CREATE TABLE `medidas` (
  `idmedida` int(11) NOT NULL,
  `umedida` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `medidas`
--

INSERT INTO `medidas` (`idmedida`, `umedida`) VALUES
(1, 'Kilos'),
(2, 'Litros'),
(3, 'Unidad'),
(4, 'Par');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `idmoneda` int(11) NOT NULL,
  `codigoiso` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `pais` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nommoneda` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`idmoneda`, `codigoiso`, `pais`, `nommoneda`) VALUES
(1, 'CLP', 'Chile', NULL),
(2, 'CNY', 'China', 'Yuan Chino'),
(3, 'EUR', 'Europa', 'Euro'),
(4, 'JPY', 'Japon', NULL),
(5, 'USD', 'EEUU', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plandecuentas`
--

CREATE TABLE `plandecuentas` (
  `idplan` int(11) NOT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `grupo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `gral` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `va_rrhh` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plandecuentas`
--

INSERT INTO `plandecuentas` (`idplan`, `codigo`, `descripcion`, `grupo`, `gral`, `va_rrhh`) VALUES
(1, '10-02-001', 'INVERSION ROMERAL', 'Inversion', 'Inversion', ''),
(2, '10-02-002', 'INVERSION MOLINA', 'Inversion', 'Inversion', ''),
(3, '10-02-003', 'INVERSION LOS NICHES', 'Inversion', 'Inversion', ''),
(4, '10-02-004', 'INVERSION COLACHO', 'Inversion', 'Inversion', ''),
(5, '10-07-005', 'MAQUINARIAS Y EQUIPOS', '', '', ''),
(6, '10-07-006', 'VEHICULOS', '', '', ''),
(7, '40-01-004', 'ENERGIA ELECTRICA PRODUCCION', 'Costo Fijo Produccion', 'Costos Fijos', ''),
(8, '40-01-005', 'DERECHO DE AGUA', 'Costo Fijo Produccion', 'Costos Fijos', ''),
(9, '40-01-006', 'GASTOS DE LABORATORIO', 'Insumos', 'Insumos', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idprod` int(11) NOT NULL,
  `idcatfk` int(11) NOT NULL,
  `nsag` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serie` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nomprod` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ingactivo` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `aptitud` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `preciocompra` int(11) DEFAULT NULL,
  `precioventa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idprod`, `idcatfk`, `nsag`, `serie`, `nomprod`, `ingactivo`, `aptitud`, `descripcion`, `tipo`, `preciocompra`, `precioventa`) VALUES
(1, 1, '1002', '1000', 'ACTELLIC AGRO', 'PIRIMIFOS-METILO', 'INSECTICIDA-ACARICIDA', '', '', NULL, 1000),
(2, 1, '1004', '1000', 'PIRIMOR', 'PIRIMICARB', 'INSECTICIDA', '', '', NULL, 3000),
(3, 1, '1021', '1000', 'CITROLIV MISCIBLE', 'ACEITE PARAFÍNICO', 'INSECTICIDA/ACARICIDA/COADYUVANTE', '', '', NULL, 10000),
(4, 1, '1048', '1000', 'SELECRON 720 EC', 'PROFENOFÓS', 'INSECTICIDA-ACARICIDA', '', '', NULL, 30000),
(5, 1, '1072', '1000', 'ORTHENE 75 SP', 'ACEFATO', 'INSECTICIDA', '', '', NULL, 50000),
(6, 1, '1073', '1000', 'ORTHENE 80 ST', 'ACEFATO', 'INSECTICIDA', '', '', NULL, 30000),
(7, 1, '1074', '1000', 'OMITE 30 WP', 'PROPARGITA', 'ACARICIDA', '', '', NULL, 60000),
(8, 1, '1075', '1000', 'PERFEKTHION', 'DIMETOATO', 'INSECTICIDA', '', '', NULL, 2000),
(9, 1, '1083', '1000', 'LANNATE BLUE', 'METOMILO', 'INSECTICIDA', '', '', NULL, 3655),
(10, 1, '1084', '1000', 'VYDATE L', 'OXAMILO', 'INSECTICIDA', '', '', NULL, 45654),
(11, 1, '1085', '1000', 'PHOSTOXIN TABLETAS', 'FOSFURO DE ALUMINIO', 'FUMIGANTE', '', '', NULL, NULL),
(12, 1, '1086', '1000', 'PHOSTOXIN PELLETS', 'FOSFURO DE ALUMINIO', 'FUMIGANTE', '', '', NULL, NULL),
(13, 1, '1087', '1000', 'MAGTOXIN TABLETA', 'FOSFURO DE MAGNESIO', 'FUMIGANTE', '', '', NULL, NULL),
(14, 1, '1088', '1000', 'MAGTOXIN PELLETS', 'FOSFURO DE MAGNESIO', 'FUMIGANTE', '', '', NULL, NULL),
(15, 1, '1090', '1000', 'PLACA DEGESCH', 'FOSFURO DE MAGNESIO', 'FUMIGANTE', '', '', NULL, NULL),
(16, 1, '1096', '1000', 'DIAZOL 40 WP', 'DIAZINON', 'INSECTICIDA', '', '', NULL, NULL),
(17, 1, '1104', '1000', 'BROMURO DE METILO 100%', 'BROMURO DE METILO', 'FUMIGANTE', '', '', NULL, NULL),
(18, 1, '1110', '1000', 'LORSBAN 4E ', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(19, 1, '1120', '1000', 'KLERAT PELLETS', 'BRODIFACUM', 'RATICIDA', '', '', NULL, NULL),
(20, 1, '1121', '1000', 'TOXIMOL', 'METALDEHIDO', 'MOLUSQUICIDA', '', '', NULL, NULL),
(21, 1, '1128', '1000', 'PYRINEX 48 % EC ', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(22, 1, '1129', '1000', 'SALUT', 'CLORPIRIFÓS/DIMETOATO', 'INSECTICIDA', '', '', NULL, NULL),
(23, 1, '1131', '1000', 'ALSYSTIN 480 SC', 'TRIFLUMURÓN', 'INSECTICIDA', '', '', NULL, NULL),
(24, 1, '1135', '1000', 'LORSBAN 50 WP', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(25, 1, '1150', '1000', 'METABROMO 1000', 'BROMURO DE METILO', 'FUMIGANTE', '', '', NULL, NULL),
(26, 1, '1164', '1000', 'MOCAP 6 EC', 'ETOPROFÓS', 'NEMATICIDA/INSECTICIDA', '', '', NULL, NULL),
(27, 1, '1176', '1000', 'KLERAT MINIBLOQUES', 'BRODIFACUM', 'RATICIDA', '', '', NULL, NULL),
(28, 1, '1178', '1000', 'BASAMID GRANULADO', 'DAZOMET', 'FUMIGANTE', '', '', NULL, NULL),
(29, 1, '1188', '1000', 'SOVA SPRAY ULTRA', 'ACEITE PARAFÍNICO', 'INSECTICIDA', '', '', NULL, NULL),
(30, 1, '1221', '1000', 'DIPEL WG ', 'Bacillus thuringiensis subsp KURSTAKI (Cepa: ABTS-351)', 'INSECTICIDA', '', '', NULL, NULL),
(31, 1, '1244', '1000', 'LORSBAN 15 G', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(32, 1, '1266', '1000', 'NERES 50 % SP', 'CLORHIDRATO DE CARTAP', 'INSECTICIDA', '', '', NULL, NULL),
(33, 1, '1267', '1000', 'STORM BLOQUE', 'FLOCUMAFENO', 'RODENTICIDA', '', '', NULL, NULL),
(34, 1, '1274', '1000', 'HALMARK 75 EC', 'ESFENVALERATO', 'INSECTICIDA', '', '', NULL, NULL),
(35, 1, '1293', '1000', 'DETIA GAS EX-T ', 'FOSFURO DE ALUMINIO', 'FUMIGANTE', '', '', NULL, NULL),
(36, 1, '1302', '1000', 'CARBARYL 85 % WP', 'CARBARILO', 'INSECTICIDA', '', '', NULL, NULL),
(37, 1, '1304', '1000', 'DIMETOATO 40 EC', 'DIMETOATO', 'INSECTICIDA', '', '', NULL, NULL),
(38, 1, '1305', '1000', 'RELDAN 48 EC', 'CLORPIRIFÓS-METILO', 'INSECTICIDA', '', '', NULL, NULL),
(39, 1, '1309', '1000', 'TRIGARD 75 WP', 'CIROMAZINA', 'INSECTICIDA', '', '', NULL, NULL),
(40, 1, '1310', '1000', 'ARRIVO', 'CIPERMETRINA', 'INSECTICIDA', '', '', NULL, NULL),
(41, 1, '1319', '1000', 'POUNCE', 'PERMETRINA', 'INSECTICIDA', '', '', NULL, NULL),
(42, 1, '1335', '1000', 'EVISECT 50 SP', 'HIDROGENOOXALATO DE TIOCICLAM', 'INSECTICIDA', '', '', NULL, NULL),
(43, 1, '1339', '1000', 'RAYO 50 EC', 'PERMETRINA', 'INSECTICIDA', '', '', NULL, NULL),
(44, 1, '1341', '1000', 'FORCE 20 CS', 'TEFLUTRINA', 'INSECTICIDA', '', '', NULL, NULL),
(45, 1, '1353', '1000', 'LORSBAN PLUS', 'CLORPIRIFÓS/CIPERMETRINA', 'INSECTICIDA', '', '', NULL, NULL),
(46, 1, '1368', '1000', 'CITROLIV EMULSIBLE+', 'ACEITE PARAFÍNICO', 'INSECTICIDA/ACARICIDA/COADYUVANTE', '', '', NULL, NULL),
(47, 1, '1372', '1000', 'DIMETOATO 40 % EC', 'DIMETOATO', 'INSECTICIDA', '', '', NULL, NULL),
(48, 1, '1377', '1000', 'DIMILIN 48 SC', 'DIFLUBENZURÓN', 'INSECTICIDA', '', '', NULL, NULL),
(49, 1, '1380', '1000', 'SANMITE WP ', 'PIRIDABENO', 'ACARICIDA', '', '', NULL, NULL),
(50, 1, '1388', '1000', 'PERMETRINA 50 CE', 'PERMETRINA', 'INSECTICIDA', '', '', NULL, NULL),
(51, 1, '1390', '1000', 'MIMIC 2 F', 'TEBUFENOZIDA', 'INSECTICIDA', '', '', NULL, NULL),
(52, 1, '1394', '1000', 'JAVELIN WG', 'Bacillus thuringiensis subsp KURSTAKI', 'INSECTICIDA', '', '', NULL, NULL),
(53, 1, '1409', '1000', 'CLORPIRIFOS 48 % CE', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(54, 1, '1411', '1000', 'FASTAC 100 EC', 'ALFA-CIPERMETRINA', 'INSECTICIDA', '', '', NULL, NULL),
(55, 1, '1414', '1000', 'CIPOLYTRINA 25 EC', 'CIPERMETRINA', 'INSECTICIDA', '', '', NULL, NULL),
(56, 1, '1421', '1000', 'RATADOR AGRO', 'BROMADIOLONA', 'RODENTICIDA /LAGOMORFICIDA', '', '', NULL, NULL),
(57, 1, '1436', '1000', 'ALFAMAX 10 EC', 'ALFA-CIPERMETRINA', 'INSECTICIDA', '', '', NULL, NULL),
(58, 1, '1437', '1000', 'APPLAUD 25 WP', 'BUPROFEZINA', 'INSECTICIDA - REGULADOR DE CRECIMIENTO', '', '', NULL, NULL),
(59, 1, '1441', '1000', 'CYHEXATIN 60 SC', 'CIHEXATINA (CIHEXAESTÁN)', 'ACARICIDA', '', '', NULL, NULL),
(60, 1, '1446', '1000', 'CARTAP 50 % WP', 'MONOCLORHIDRATO DE CARTAP', 'INSECTICIDA', '', '', NULL, NULL),
(61, 1, '1447', '1000', 'ACABAN 050 SC', 'FENPIROXIMATO', 'ACARICIDA', '', '', NULL, NULL),
(62, 1, '1448', '1000', 'METOMIL 90% PS', 'METOMILO', 'INSECTICIDA', '', '', NULL, NULL),
(63, 1, '1455', '1000', 'CONFIDOR 350 SC', 'IMIDACLOPRID', 'INSECTICIDA', '', '', NULL, NULL),
(64, 1, '1465', '1000', 'LORSBAN 10D', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(65, 1, '1466', '1000', 'BULLDOCK 125 SC', 'BETA-CIFLUTRINA', 'INSECTICIDA', '', '', NULL, NULL),
(66, 1, '1477', '1000', 'ENZONE ', 'TETRATIOCARBONATO DE SODIO', 'NEMATICIDA', '', '', NULL, NULL),
(67, 1, '1482', '1000', 'BALAZO 90 SP', 'METOMILO', 'INSECTICIDA', '', '', NULL, NULL),
(68, 1, '1492', '1000', 'CHLORPYRIFOS 480 EC', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(69, 1, '1496', '1000', 'TROYA 4 EC', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(70, 1, '1498', '1000', 'CARBARYL 85 WP', 'CARBARILO', 'INSECTICIDA', '', '', NULL, NULL),
(71, 1, '1509', '1000', 'FAST 1.8 EC', 'ABAMECTINA', 'INSECTICIDA - ACARICIDA', '', '', NULL, NULL),
(72, 1, '1513', '1000', 'DIAZINON 600 EC', 'DIAZINON', 'INSECTICIDA', '', '', NULL, NULL),
(73, 1, '1517', '1000', 'PATON 50 WP', 'PIRIMICARB', 'INSECTICIDA', '', '', NULL, NULL),
(74, 1, '1518', '1000', 'DITERA WG', 'Myrothecium verrucaria Cepa AARC-0255', 'NEMATICIDA', '', '', NULL, NULL),
(75, 1, '1521', '1000', 'POINTER 15 G', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(76, 1, '1522', '1000', 'SORBA 050 EC', 'LUFENURÓN', 'INSECTICIDA', '', '', NULL, NULL),
(77, 1, '1525', '1000', 'VERTIMEC 018 EC', 'ABAMECTINA', 'INSECTICIDA - ACARICIDA', '', '', NULL, NULL),
(78, 1, '1526', '1000', 'FENVALERATO 30 EC', 'FENVALERATO', 'INSECTICIDA', '', '', NULL, NULL),
(79, 1, '1529', '1000', 'PROTON 50 EC', 'CLORPIRIFÓS/DIMETOATO', 'INSECTICIDA', '', '', NULL, NULL),
(80, 1, '1530', '1000', 'CHLORPIRIFOS 50% WP', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(81, 1, '1533', '1000', 'MAGTOXIN GRÁNULO', 'FOSFURO DE MAGNESIO', 'INSECTICIDA', '', '', NULL, NULL),
(82, 1, '1535', '1000', 'STORM PELLETS', 'FLOCUMAFENO', 'RATICIDA', '', '', NULL, NULL),
(83, 1, '1541', '1000', 'SUNFIRE 240 SC', 'CLORFENAPIR', 'INSECTICIDA', '', '', NULL, NULL),
(84, 1, '1546', '1000', 'MOSPILAN ', 'ACETAMIPRID', 'INSECTICIDA', '', '', NULL, NULL),
(85, 1, '1547', '1000', 'PUNTO 70 WP', 'IMIDACLOPRID', 'INSECTICIDA', '', '', NULL, NULL),
(86, 1, '1555', '1000', 'SEVIN XLR PLUS 480 SC', 'CARBARILO', 'INSECTICIDA/FITORREGULADOR', '', '', NULL, NULL),
(87, 1, '1558', '1000', 'TRIPLEX 600 SC', 'CIHEXATINA (CIHEXAESTÁN)', 'ACARICIDA', '', '', NULL, NULL),
(88, 1, '1559', '1000', 'PUNTO 70 DS', 'IMIDACLOPRID', 'INSECTICIDA', '', '', NULL, NULL),
(89, 1, '1560', '1000', 'SUCCESS  48', 'ESPINOSAD', 'INSECTICIDA', '', '', NULL, NULL),
(90, 1, '1565', '1000', 'INSEGAR 25 WG', 'FENOXICARB', 'INSECTICIDA', '', '', NULL, NULL),
(91, 1, '1567', '1000', 'ZERO 5 EC', 'LAMBDA-CIHALOTRINA', 'INSECTICIDA', '', '', NULL, NULL),
(92, 1, '1572', '1000', 'LORSBAN 75 WG', 'CLORPIRIFÓS', 'INSECTICIDA', '', '', NULL, NULL),
(93, 1, '1578', '1000', 'REGENT 250 FS', 'FIPRONILO', 'INSECTICIDA', '', '', NULL, NULL),
(94, 1, '1581', '1000', 'IMIDAN 70 WP', 'FOSMET', 'INSECTICIDA', '', '', NULL, NULL),
(95, 1, '1582', '1000', 'KARATE CON TECNOLOGIA ZEON', 'LAMBDA-CIHALOTRINA', 'INSECTICIDA', '', '', NULL, NULL),
(96, 1, '1584', '1000', 'CLARTEX +R', 'METALDEHÍDO', 'MOLUSQUICIDA', '', '', NULL, NULL),
(97, 1, '1586', '1000', 'MALATHION 57 EC', 'MALATIÓN', 'INSECTICIDA', '', '', NULL, NULL),
(98, 2, '', '', 'Antiparra Daumer', '', '', '', 'Unidad', NULL, 1500),
(99, 2, '', '', 'Lente Black', '', '', '', 'Unidad', NULL, 15000),
(100, 2, '', '', 'Lente Eagle tech', '', '', '', 'Unidad', NULL, 35000),
(101, 2, '', '', 'Guante cabritilla', '', '', '', 'Par', NULL, 15000),
(102, 2, '', '', 'Guante high Grip blue flex', '', '', '', 'Par', NULL, 35600),
(103, 2, '', '', 'Guante nitrilo ', '', '', '', 'Par', NULL, 65000),
(104, 2, '', '', 'Guante Multiprotec Flex', '', '', '', 'Par', NULL, 75000),
(105, 2, '', '', 'Guante PU', '', '', '', 'Par', NULL, NULL),
(106, 2, '', '', 'Guante hilo pigmentado ', '', '', '', 'Par', NULL, NULL),
(107, 2, '', '', 'Gorro Legionario ', '', '', '', 'Unidad', NULL, NULL),
(108, 2, '', '', 'Respirador medio rostro', '', '', '', 'Unidad', NULL, NULL),
(109, 2, '', '', 'Filtro 6003', '', '', '', 'Unidad', NULL, NULL),
(110, 2, '', '', 'Mascara medio rostro 6200', '', '', '', 'Unidad', NULL, NULL),
(111, 2, '', '', 'Buzo desechable ', '', '', '', 'Unidad', NULL, NULL),
(112, 2, '', '', 'Overol fumigaci', '', '', '', 'Unidad', NULL, NULL),
(113, 2, '', '', 'Overol poplin ', '', '', '', 'Unidad', NULL, NULL),
(114, 2, '', '', 'Overol Fumigaci', '', '', '', 'Unidad', NULL, NULL),
(115, 2, '', '', 'Traje de agua bunker pu antiacido ', '', '', '', 'Unidad', NULL, NULL),
(116, 2, '', '', 'Protector solar ', '', '', '', 'Litro', NULL, NULL),
(117, 2, '', '', 'Bota agricola', '', '', '', 'par', NULL, NULL),
(118, 2, '', '', 'Desam Balde', '', '', '', 'Kilo', NULL, NULL),
(119, 2, '', '', 'Dispensador de Jabon', '', '', '', 'unidad', NULL, NULL),
(120, 2, '', '', 'Jabon', '', '', '', 'Litro', NULL, NULL),
(121, 2, '', '', 'Higienico', '', '', '', 'Paquete ', NULL, NULL),
(122, 2, '', '', 'Toalla Rendipel ', '', '', '', 'Paquete', NULL, NULL),
(123, 2, '', '', 'Pulverizador Solo ', '', '', '', 'unidad', NULL, NULL),
(124, 2, '', '', 'Pantalla protector solo ', '', '', '', 'unidad', NULL, NULL),
(125, 2, '', '', 'Soldadura 6011', '', '', '', 'Kilo', NULL, NULL),
(126, 2, '', '', 'Soldadura 7018', '', '', '', 'Kilo', NULL, NULL),
(127, 2, '', '', 'Disco Klingpor', '', '', '', 'unidad', NULL, NULL),
(128, 2, '', '', 'Pala tactix riego sin mango', '', '', '', 'unidad', NULL, NULL),
(129, 2, '', '', 'Rozon tramontina', '', '', '', 'unidad', NULL, NULL),
(130, 2, '', '', 'Cinta Plana bobina', '', '', '', 'Kilo', NULL, NULL),
(131, 2, '', '', 'Bidon', '', '', '', 'unidad', NULL, NULL),
(132, 2, '', '', 'Soda Caustica ', '', '', '', 'Kilo', NULL, NULL),
(133, 2, '', '', 'Cemento ', '', '', '', 'Unidad', NULL, NULL),
(134, 2, '', '', 'Clavos ', '', '', '', 'Kilo', NULL, NULL),
(135, 2, '', '', 'Manguera mallaflex', '', '', '', 'Unidad', NULL, NULL),
(136, 2, '', '', 'Hilo plastico tipo 1000', '', '', '', 'Unidad', NULL, NULL),
(137, 2, '', '', 'Grapa Galvanizada ', '', '', '', 'Kilo', NULL, NULL),
(138, 2, '', '', 'Balanza Digital ', '', '', '', 'unidad', NULL, NULL),
(139, 2, '', '', 'Aceite Husqvarna', '', '', '', 'Litro', NULL, NULL),
(140, 2, '', '', 'Vales de Gas', '', '', '', 'unidad', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `rut` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comuna` varchar(70) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contacto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mail` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idproveedor`, `nombre`, `rut`, `direccion`, `comuna`, `ciudad`, `telefono`, `contacto`, `mail`) VALUES
(1, 'AGRIUM CHILE S.A.', '96.695.750', '', '', '', '', '', ''),
(2, 'Agricola EL Tambo Spa.', '78.271.370', '', '', '', '', '', ''),
(3, 'ADRIELA LEONOR FUENTES ORELLANA', '14.230.906', '', '', '', '', '', ''),
(4, 'AGRICOLA EL SEMBRADOR SPA', '76.277.486', '', '', '', '', '', ''),
(5, 'ADMINISTRADORA DE VENTAS AL DETALLE LTDA', '77.215.640', '', '', '', '', '', ''),
(6, 'ADMINISTRACION Y GESTION DE ESTACION D', '88.473.200', '', '', '', '', '', ''),
(7, 'Abastible S.A.', '91.806.000', '', '', '', '', '', ''),
(8, 'AGROSERVICIOS PEREZ Y CIA. LTDA.', '77.069.250', '', '', '', '', '', ''),
(9, 'Agroservicios Villavalen Ltda', '76.320.542', '', '', '', '', '', ''),
(10, 'AGROVETERINARIA HUERTA LTDA', '86.482.100', '', '', '', '', '', ''),
(11, 'Aladino Gutierrez Alvarez', '7.282.562', '', '', '', '', '', ''),
(12, 'Alex Francy Munoz Reyes', '14.264.895', '', '', '', '', '', ''),
(13, 'ALEXIS BERNABE ROJAS MONTECINOS', '15.630.331', '', '', '', '', '', ''),
(14, 'ANDY JHON OPORTO POZAS', '18.319.891', '', '', '', '', '', ''),
(15, 'ANGEL GABRIEL TORRES ARAYA', '11.557.871', '', '', '', '', '', ''),
(16, 'Aquiles Mario Labbe Gutierrez', '8.025.795', '', '', '', '', '', ''),
(17, 'Arco Ingenieria e Inmobiliaria Ltda', '78.269.310', '', '', '', '', '', ''),
(18, 'ARNOLDO ALFREDO PONCE ROJAS', '18.892.762', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `rut` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `apellidop` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `apellidom` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `comuna` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `region` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`rut`, `nombre`, `apellidop`, `apellidom`, `direccion`, `comuna`, `region`, `telefono`, `correo`, `clave`) VALUES
('1-0', 'Andres', 'Gonzales', 'Espina', 'las acacias 19', 'rengo', 'VI', '123456', 'andres@gmail.com', '12345'),
('2-0', 'Faviola', 'Manzilla', 'galves', 'romero 56', 'lolol', 'VII', '54654545', 'favi@gmail.com', '78963'),
('3-0', 'Javier', 'Troncoso', 'Milla', 'Zapatero 236', 'Conce', 'VII', '4565454', 'javi@gmail.com', 'qwerty');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variedades`
--

CREATE TABLE `variedades` (
  `idvar` int(11) NOT NULL,
  `idespfk` int(11) NOT NULL,
  `variedad` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `variedades`
--

INSERT INTO `variedades` (`idvar`, `idespfk`, `variedad`) VALUES
(1, 1, 'Reineta'),
(2, 1, 'Golden Delicious'),
(3, 1, 'Granny Smith'),
(4, 2, 'Hamlin'),
(5, 2, 'Valencia'),
(6, 3, 'Clapp Favourite'),
(7, 3, 'Williams'),
(8, 4, 'Cherry'),
(9, 4, 'Roma');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campoespecies`
--
ALTER TABLE `campoespecies`
  ADD PRIMARY KEY (`idcamesp`),
  ADD KEY `idcamfk` (`idcamfk`),
  ADD KEY `idespfk` (`idespfk`),
  ADD KEY `idcamfk_2` (`idcamfk`);

--
-- Indices de la tabla `campos`
--
ALTER TABLE `campos`
  ADD PRIMARY KEY (`idcamp`),
  ADD KEY `rutfk` (`rutfk`);

--
-- Indices de la tabla `campovariedades`
--
ALTER TABLE `campovariedades`
  ADD PRIMARY KEY (`idcamvar`),
  ADD KEY `idcamfk` (`idcamfk`),
  ADD KEY `idvarfk` (`idvarfk`),
  ADD KEY `idespfk` (`idespfk`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcat`);

--
-- Indices de la tabla `cuarteles`
--
ALTER TABLE `cuarteles`
  ADD PRIMARY KEY (`idcuartel`),
  ADD KEY `idcamfk` (`idcamfk`),
  ADD KEY `idvarfk` (`idvarfk`),
  ADD KEY `idespfk` (`idespfk`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`idesp`);

--
-- Indices de la tabla `formadepago`
--
ALTER TABLE `formadepago`
  ADD PRIMARY KEY (`idfpago`);

--
-- Indices de la tabla `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`idmedida`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`idmoneda`);

--
-- Indices de la tabla `plandecuentas`
--
ALTER TABLE `plandecuentas`
  ADD PRIMARY KEY (`idplan`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idprod`),
  ADD KEY `idcatfk` (`idcatfk`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `variedades`
--
ALTER TABLE `variedades`
  ADD PRIMARY KEY (`idvar`),
  ADD KEY `idespfk` (`idespfk`),
  ADD KEY `idespfk_2` (`idespfk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campoespecies`
--
ALTER TABLE `campoespecies`
  MODIFY `idcamesp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `campos`
--
ALTER TABLE `campos`
  MODIFY `idcamp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `campovariedades`
--
ALTER TABLE `campovariedades`
  MODIFY `idcamvar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cuarteles`
--
ALTER TABLE `cuarteles`
  MODIFY `idcuartel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `idesp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `formadepago`
--
ALTER TABLE `formadepago`
  MODIFY `idfpago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `medidas`
--
ALTER TABLE `medidas`
  MODIFY `idmedida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `idmoneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plandecuentas`
--
ALTER TABLE `plandecuentas`
  MODIFY `idplan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idprod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `variedades`
--
ALTER TABLE `variedades`
  MODIFY `idvar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `campoespecies`
--
ALTER TABLE `campoespecies`
  ADD CONSTRAINT `campoespecies_ibfk_1` FOREIGN KEY (`idcamfk`) REFERENCES `campos` (`idcamp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `campoespecies_ibfk_2` FOREIGN KEY (`idespfk`) REFERENCES `especies` (`idesp`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `campos`
--
ALTER TABLE `campos`
  ADD CONSTRAINT `campos_ibfk_1` FOREIGN KEY (`rutfk`) REFERENCES `usuarios` (`rut`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `campovariedades`
--
ALTER TABLE `campovariedades`
  ADD CONSTRAINT `campovariedades_ibfk_1` FOREIGN KEY (`idcamfk`) REFERENCES `campos` (`idcamp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `campovariedades_ibfk_2` FOREIGN KEY (`idvarfk`) REFERENCES `variedades` (`idvar`) ON UPDATE CASCADE,
  ADD CONSTRAINT `campovariedades_ibfk_3` FOREIGN KEY (`idespfk`) REFERENCES `especies` (`idesp`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cuarteles`
--
ALTER TABLE `cuarteles`
  ADD CONSTRAINT `cuarteles_ibfk_1` FOREIGN KEY (`idcamfk`) REFERENCES `campos` (`idcamp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cuarteles_ibfk_2` FOREIGN KEY (`idvarfk`) REFERENCES `variedades` (`idvar`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cuarteles_ibfk_3` FOREIGN KEY (`idespfk`) REFERENCES `especies` (`idesp`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idcatfk`) REFERENCES `categorias` (`idcat`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `variedades`
--
ALTER TABLE `variedades`
  ADD CONSTRAINT `variedades_ibfk_1` FOREIGN KEY (`idespfk`) REFERENCES `especies` (`idesp`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
