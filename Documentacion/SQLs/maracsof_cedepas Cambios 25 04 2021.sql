-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2021 a las 08:23:05
-- Versión del servidor: 5.7.32-log
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `maracsof_cedepas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo_proyecto`
--

CREATE TABLE `archivo_proyecto` (
  `codArchivoProyecto` int(11) NOT NULL,
  `nombreDeGuardado` varchar(100) NOT NULL,
  `nombreAparente` varchar(100) NOT NULL,
  `codProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivo_proyecto`
--

INSERT INTO `archivo_proyecto` (`codArchivoProyecto`, `nombreDeGuardado`, `nombreAparente`, `codProyecto`) VALUES
(2, 'ArchProy-000001-01.marac', 'libreria laravel.php', 1),
(3, 'ArchProy-000001-02.marac', 'Marco Lógico- presupuesto.xls', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo_rend`
--

CREATE TABLE `archivo_rend` (
  `codArchivoRend` int(11) NOT NULL,
  `nombreDeGuardado` varchar(100) NOT NULL,
  `nombreAparente` varchar(100) NOT NULL,
  `codRendicionGastos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivo_rend`
--

INSERT INTO `archivo_rend` (`codArchivoRend`, `nombreDeGuardado`, `nombreAparente`, `codRendicionGastos`) VALUES
(4, 'RendGast-CDP-000004-01.marac', 'EmpresaTransportesReportes Sin decorar .rar', 4),
(5, 'RendGast-CDP-000005-01.marac', 'Copia de Matriz de seguimiento CEDEPAS NORTE-ITP_12.11.20_dedfo.xlsx', 5),
(6, 'RendGast-CDP-000005-02.marac', 'Datos_registro_proyecto.docx', 5),
(7, 'RendGast-CDP-000005-03.marac', 'InfografiaHome.png', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo_repo`
--

CREATE TABLE `archivo_repo` (
  `codArchivoRepo` int(11) NOT NULL,
  `nombreDeGuardado` varchar(100) NOT NULL,
  `nombreAparente` varchar(100) NOT NULL,
  `codReposicionGastos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivo_repo`
--

INSERT INTO `archivo_repo` (`codArchivoRepo`, `nombreDeGuardado`, `nombreAparente`, `codReposicionGastos`) VALUES
(4, 'RepGast-CDP-000044-01.marac', 'Sistema Cedepas Empleados.xlsx', 44),
(5, 'RepGast-CDP-000044-02.marac', 'TAIS_Notas_Finales.pdf', 44),
(6, 'RepGast-CDP-000045-01.marac', 'maracsof_cedepas.sql', 45),
(7, 'RepGast-CDP-000045-02.marac', 'Marco Lógico- presupuesto.xls', 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo_req_admin`
--

CREATE TABLE `archivo_req_admin` (
  `codArchivoReqAdmin` int(11) NOT NULL,
  `nombreDeGuardado` varchar(100) NOT NULL,
  `nombreAparente` varchar(100) NOT NULL,
  `codRequerimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivo_req_admin`
--

INSERT INTO `archivo_req_admin` (`codArchivoReqAdmin`, `nombreDeGuardado`, `nombreAparente`, `codRequerimiento`) VALUES
(1, 'REQ-000023-Adm-01.marac', 'oyenombreguardado.txt', 23),
(2, 'REQ-000023-Adm-02.marac', 'PLANTILLA CEDEPAS V16.pdf', 23),
(3, 'REQ-000019-Adm-01.marac', 'CEDEPA.png', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivo_req_emp`
--

CREATE TABLE `archivo_req_emp` (
  `codArchivoReqEmp` int(11) NOT NULL,
  `nombreDeGuardado` varchar(100) NOT NULL,
  `nombreAparente` varchar(100) NOT NULL,
  `codRequerimiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivo_req_emp`
--

INSERT INTO `archivo_req_emp` (`codArchivoReqEmp`, `nombreDeGuardado`, `nombreAparente`, `codRequerimiento`) VALUES
(4, 'REQ-000023-Emp-01.marac', 'TAIS_Notas_Finales.pdf', 23),
(5, 'REQ-000022-Emp-01.marac', 'Marco Lógico- presupuesto.xls', 22),
(6, 'REQ-000022-Emp-02.marac', 'TAIS_Notas_Finales.pdf', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `codBanco` int(11) NOT NULL,
  `nombreBanco` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`codBanco`, `nombreBanco`) VALUES
(1, 'BCP'),
(2, 'Interbank'),
(3, 'BBVA'),
(4, 'Banco de la Nacion'),
(5, 'Pichincha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cdp`
--

CREATE TABLE `cdp` (
  `codTipoCDP` int(11) NOT NULL,
  `nombreCDP` varchar(200) NOT NULL,
  `codigoSUNAT` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cdp`
--

INSERT INTO `cdp` (`codTipoCDP`, `nombreCDP`, `codigoSUNAT`) VALUES
(1, 'Fact.', 1),
(2, 'Rec. Hon.', 2),
(3, 'Bol. Venta', 3),
(4, 'Liq. Compra', 4),
(5, 'Boleto Aéreo', 5),
(6, 'Rec. Alquiler', 10),
(7, 'Ticket', 12),
(8, 'Rec. Serv. Pub', 14),
(9, 'Boleto Trans Publico', 15),
(10, 'Boleto Inteprovincial', 16),
(11, 'DJ Mov', 0),
(12, 'DJ Viat', 0),
(13, 'DJ Varios', 0),
(14, 'Otros', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `codDepartamento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`codDepartamento`, `nombre`) VALUES
(1, 'AMAZONAS'),
(2, 'ANCASH'),
(3, 'APURIMAC'),
(4, 'AREQUIPA'),
(5, 'AYACUCHO'),
(6, 'CAJAMARCA'),
(7, 'CUSCO'),
(8, 'HUANCAVELICA'),
(9, 'HUANUCO'),
(10, 'ICA'),
(11, 'JUNIN'),
(12, 'LA LIBERTAD'),
(13, 'LAMBAYEQUE'),
(14, 'LIMA'),
(15, 'LORETO'),
(16, 'MADRE DE DIOS'),
(17, 'MOQUEGUA'),
(18, 'PASCO'),
(19, 'PIURA'),
(20, 'PUNO'),
(21, 'SAN MARTIN'),
(22, 'TACNA'),
(23, 'TUMBES'),
(24, 'UCAYALI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_rendicion_gastos`
--

CREATE TABLE `detalle_rendicion_gastos` (
  `codDetalleRendicion` int(11) NOT NULL,
  `codRendicionGastos` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `nroComprobante` varchar(200) NOT NULL,
  `concepto` varchar(500) NOT NULL,
  `importe` float NOT NULL,
  `codigoPresupuestal` varchar(200) NOT NULL,
  `codTipoCDP` int(11) NOT NULL,
  `terminacionArchivo` varchar(10) DEFAULT NULL,
  `nroEnRendicion` int(11) NOT NULL,
  `contabilizado` tinyint(4) DEFAULT '0',
  `pendienteDeVer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_rendicion_gastos`
--

INSERT INTO `detalle_rendicion_gastos` (`codDetalleRendicion`, `codRendicionGastos`, `fecha`, `nroComprobante`, `concepto`, `importe`, `codigoPresupuestal`, `codTipoCDP`, `terminacionArchivo`, `nroEnRendicion`, `contabilizado`, `pendienteDeVer`) VALUES
(1, 1, '2020-04-21', '12525', 'asddsa', 51, '05454222', 11, NULL, 1, 1, 0),
(2, 2, '2020-04-15', '12312', 'gaseosa', 251, '066446', 9, NULL, 1, 1, 0),
(6, 4, '2020-04-23', '125', 'adsdsa', 5, '05984', 3, NULL, 1, 0, 0),
(7, 5, '2020-04-01', '6464', 'dsadas', 87, '0622', 3, NULL, 1, 0, 0),
(8, 5, '2020-04-15', '01-0151', 'papel higienico', 51, '064444', 8, NULL, 2, 1, 0),
(9, 5, '2020-04-25', '12312', 'adsdsa', 5, '0644', 2, NULL, 3, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_reposicion_gastos`
--

CREATE TABLE `detalle_reposicion_gastos` (
  `codDetalleReposicion` int(11) NOT NULL,
  `codReposicionGastos` int(11) NOT NULL,
  `fechaComprobante` date NOT NULL,
  `nroComprobante` varchar(50) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `importe` float NOT NULL,
  `codigoPresupuestal` varchar(50) NOT NULL,
  `nroEnReposicion` int(11) NOT NULL,
  `codTipoCDP` int(11) NOT NULL,
  `contabilizado` tinyint(4) DEFAULT '0',
  `pendienteDeVer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_reposicion_gastos`
--

INSERT INTO `detalle_reposicion_gastos` (`codDetalleReposicion`, `codReposicionGastos`, `fechaComprobante`, `nroComprobante`, `concepto`, `importe`, `codigoPresupuestal`, `nroEnReposicion`, `codTipoCDP`, `contabilizado`, `pendienteDeVer`) VALUES
(108, 39, '2020-04-21', '12', '12', 5, '0512', 1, 1, 1, 0),
(109, 39, '2020-04-03', '05', '05', 50, '05215', 2, 1, 0, 0),
(117, 44, '2020-04-23', '125', 'asddsa', 125, '10445', 1, 3, 0, 0),
(121, 45, '2020-02-29', '125', 'asd', 6, '051', 1, 1, 0, 0),
(122, 45, '2020-04-01', '12312', 'papel higienico', 151, '0513001', 2, 3, 1, 0),
(123, 45, '2020-07-12', '125', 'asd', 6, '051', 3, 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_requerimiento_bs`
--

CREATE TABLE `detalle_requerimiento_bs` (
  `codDetalleRequerimiento` int(11) NOT NULL,
  `codRequerimiento` int(11) NOT NULL,
  `cantidad` float NOT NULL,
  `codUnidadMedida` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `codigoPresupuestal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle_requerimiento_bs`
--

INSERT INTO `detalle_requerimiento_bs` (`codDetalleRequerimiento`, `codRequerimiento`, `cantidad`, `codUnidadMedida`, `descripcion`, `codigoPresupuestal`) VALUES
(33, 17, 40, 1, 'Cacahuates', '1061222'),
(34, 18, 5, 1, '05', '05'),
(36, 19, 40, 2, 'UTLIS', '051515'),
(38, 21, 5, 1, '05', '05'),
(39, 20, 5, 2, '05', '05'),
(44, 23, 125, 1, 'adsdsa', '05465'),
(45, 22, 5, 1, '05', '05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_solicitud_fondos`
--

CREATE TABLE `detalle_solicitud_fondos` (
  `codDetalleSolicitud` int(11) NOT NULL,
  `codSolicitud` int(11) NOT NULL,
  `nroItem` int(11) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `importe` float NOT NULL,
  `codigoPresupuestal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_solicitud_fondos`
--

INSERT INTO `detalle_solicitud_fondos` (`codDetalleSolicitud`, `codSolicitud`, `nroItem`, `concepto`, `importe`, `codigoPresupuestal`) VALUES
(355, 1786, 1, 'dsasda', 125, '06444222'),
(357, 1787, 1, 'adsdsa', 512, '0548546'),
(358, 1788, 1, 'adssda', 125, '064542'),
(359, 1789, 1, 'adsdsa', 125, '05484968'),
(360, 1790, 1, 'adsads', 125, '064');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `codDistrito` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `codProvincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`codDistrito`, `nombre`, `codProvincia`) VALUES
(1, 'ARAMANGO', 1),
(2, 'COPALLIN', 1),
(3, 'EL PARCO', 1),
(4, 'IMAZA', 1),
(5, 'LA PECA', 1),
(6, 'CHISQUILLA', 2),
(7, 'CHURUJA', 2),
(8, 'COROSHA', 2),
(9, 'CUISPES', 2),
(10, 'FLORIDA', 2),
(11, 'JAZAN', 2),
(12, 'JUMBILLA', 2),
(13, 'RECTA', 2),
(14, 'SAN CARLOS', 2),
(15, 'SHIPASBAMBA', 2),
(16, 'VALERA', 2),
(17, 'YAMBRASBAMBA', 2),
(18, 'ASUNCION', 3),
(19, 'BALSAS', 3),
(20, 'CHACHAPOYAS', 3),
(21, 'CHETO', 3),
(22, 'CHILIQUIN', 3),
(23, 'CHUQUIBAMBA', 3),
(24, 'GRANADA', 3),
(25, 'HUANCAS', 3),
(26, 'LA JALCA', 3),
(27, 'LEIMEBAMBA', 3),
(28, 'LEVANTO', 3),
(29, 'MAGDALENA', 3),
(30, 'MARISCAL CASTILLA', 3),
(31, 'MOLINOPAMPA', 3),
(32, 'MONTEVIDEO', 3),
(33, 'OLLEROS', 3),
(34, 'QUINJALCA', 3),
(35, 'SAN FRANCISCO DE DAGUAS', 3),
(36, 'SAN ISIDRO DE MAINO', 3),
(37, 'SOLOCO', 3),
(38, 'SONCHE', 3),
(39, 'EL CENEPA', 4),
(40, 'NIEVA', 4),
(41, 'RIO SANTIAGO', 4),
(42, 'CAMPORREDONDO', 5),
(43, 'COCABAMBA', 5),
(44, 'COLCAMAR', 5),
(45, 'CONILA', 5),
(46, 'INGUILPATA', 5),
(47, 'LAMUD', 5),
(48, 'LONGUITA', 5),
(49, 'LONYA CHICO', 5),
(50, 'LUYA', 5),
(51, 'LUYA VIEJO', 5),
(52, 'MARIA', 5),
(53, 'OCALLI', 5),
(54, 'OCUMAL', 5),
(55, 'PISUQUIA', 5),
(56, 'PROVIDENCIA', 5),
(57, 'SAN CRISTOBAL', 5),
(58, 'SAN FRANCISCO DEL YESO', 5),
(59, 'SAN JERONIMO', 5),
(60, 'SAN JUAN DE LOPECANCHA', 5),
(61, 'SANTA CATALINA', 5),
(62, 'SANTO TOMAS', 5),
(63, 'TINGO', 5),
(64, 'TRITA', 5),
(65, 'CHIRIMOTO', 6),
(66, 'COCHAMAL', 6),
(67, 'HUAMBO', 6),
(68, 'LIMABAMBA', 6),
(69, 'LONGAR', 6),
(70, 'MARISCAL BENAVIDES', 6),
(71, 'MILPUC', 6),
(72, 'OMIA', 6),
(73, 'SAN NICOLAS', 6),
(74, 'SANTA ROSA', 6),
(75, 'TOTORA', 6),
(76, 'VISTA ALEGRE', 6),
(77, 'BAGUA GRANDE', 7),
(78, 'CAJARURO', 7),
(79, 'CUMBA', 7),
(80, 'EL MILAGRO', 7),
(81, 'JAMALCA', 7),
(82, 'LONYA GRANDE', 7),
(83, 'YAMON', 7),
(84, 'AIJA', 8),
(85, 'CORIS', 8),
(86, 'HUACLLAN', 8),
(87, 'LA MERCED', 8),
(88, 'SUCCHA', 8),
(89, 'ACZO', 9),
(90, 'CHACCHO', 9),
(91, 'CHINGAS', 9),
(92, 'LLAMELLIN', 9),
(93, 'MIRGAS', 9),
(94, 'SAN JUAN DE RONTOY', 9),
(95, 'ACOCHACA', 10),
(96, 'CHACAS', 10),
(97, 'ABELARDO PARDO LEZAMETA', 11),
(98, 'ANTONIO RAYMONDI', 11),
(99, 'AQUIA', 11),
(100, 'CAJACAY', 11),
(101, 'CANIS', 11),
(102, 'CHIQUIAN', 11),
(103, 'COLQUIOC', 11),
(104, 'HUALLANCA', 11),
(105, 'HUASTA', 11),
(106, 'HUAYLLACAYAN', 11),
(107, 'LA PRIMAVERA', 11),
(108, 'MANGAS', 11),
(109, 'PACLLON', 11),
(110, 'SAN MIGUEL DE CORPANQUI', 11),
(111, 'TICLLOS', 11),
(112, 'ACOPAMPA', 12),
(113, 'AMASHCA', 12),
(114, 'ANTA', 12),
(115, 'ATAQUERO', 12),
(116, 'CARHUAZ', 12),
(117, 'MARCARA', 12),
(118, 'PARIAHUANCA', 12),
(119, 'SAN MIGUEL DE ACO', 12),
(120, 'SHILLA', 12),
(121, 'TINCO', 12),
(122, 'YUNGAR', 12),
(123, 'SAN LUIS', 13),
(124, 'SAN NICOLAS', 13),
(125, 'YAUYA', 13),
(126, 'BUENA VISTA ALTA', 14),
(127, 'CASMA', 14),
(128, 'COMANDANTE NOEL', 14),
(129, 'YAUTAN', 14),
(130, 'ACO', 15),
(131, 'BAMBAS', 15),
(132, 'CORONGO', 15),
(133, 'CUSCA', 15),
(134, 'LA PAMPA', 15),
(135, 'YANAC', 15),
(136, 'YUPAN', 15),
(137, 'COCHABAMBA', 16),
(138, 'COLCABAMBA', 16),
(139, 'HUANCHAY', 16),
(140, 'HUARAZ', 16),
(141, 'INDEPENDENCIA', 16),
(142, 'JANGAS', 16),
(143, 'LA LIBERTAD', 16),
(144, 'OLLEROS', 16),
(145, 'PAMPAS', 16),
(146, 'PARIACOTO', 16),
(147, 'PIRA', 16),
(148, 'TARICA', 16),
(149, 'ANRA', 17),
(150, 'CAJAY', 17),
(151, 'CHAVIN DE HUANTAR', 17),
(152, 'HUACACHI', 17),
(153, 'HUACCHIS', 17),
(154, 'HUACHIS', 17),
(155, 'HUANTAR', 17),
(156, 'HUARI', 17),
(157, 'MASIN', 17),
(158, 'PAUCAS', 17),
(159, 'PONTO', 17),
(160, 'RAHUAPAMPA', 17),
(161, 'RAPAYAN', 17),
(162, 'SAN MARCOS', 17),
(163, 'SAN PEDRO DE CHANA', 17),
(164, 'UCO', 17),
(165, 'COCHAPETI', 18),
(166, 'CULEBRAS', 18),
(167, 'HUARMEY', 18),
(168, 'HUAYAN', 18),
(169, 'MALVAS', 18),
(170, 'CARAZ', 19),
(171, 'HUALLANCA', 19),
(172, 'HUATA', 19),
(173, 'HUAYLAS', 19),
(174, 'MATO', 19),
(175, 'PAMPAROMAS', 19),
(176, 'PUEBLO LIBRE', 19),
(177, 'SANTA CRUZ', 19),
(178, 'SANTO TORIBIO', 19),
(179, 'YURACMARCA', 19),
(180, 'CASCA', 20),
(181, 'ELEAZAR GUZMAN BARRON', 20),
(182, 'FIDEL OLIVAS ESCUDERO', 20),
(183, 'LLAMA', 20),
(184, 'LLUMPA', 20),
(185, 'LUCMA', 20),
(186, 'MUSGA', 20),
(187, 'PISCOBAMBA', 20),
(188, 'ACAS', 21),
(189, 'CAJAMARQUILLA', 21),
(190, 'CARHUAPAMPA', 21),
(191, 'COCHAS', 21),
(192, 'CONGAS', 21),
(193, 'LLIPA', 21),
(194, 'OCROS', 21),
(195, 'SAN CRISTOBAL DE RAJAN', 21),
(196, 'SAN PEDRO', 21),
(197, 'SANTIAGO DE CHILCAS', 21),
(198, 'BOLOGNESI', 22),
(199, 'CABANA', 22),
(200, 'CONCHUCOS', 22),
(201, 'HUACASCHUQUE', 22),
(202, 'HUANDOVAL', 22),
(203, 'LACABAMBA', 22),
(204, 'LLAPO', 22),
(205, 'PALLASCA', 22),
(206, 'PAMPAS', 22),
(207, 'SANTA ROSA', 22),
(208, 'TAUCA', 22),
(209, 'HUAYLLAN', 23),
(210, 'PAROBAMBA', 23),
(211, 'POMABAMBA', 23),
(212, 'QUINUABAMBA', 23),
(213, 'CATAC', 24),
(214, 'COTAPARACO', 24),
(215, 'HUAYLLAPAMPA', 24),
(216, 'LLACLLIN', 24),
(217, 'MARCA', 24),
(218, 'PAMPAS CHICO', 24),
(219, 'PARARIN', 24),
(220, 'RECUAY', 24),
(221, 'TAPACOCHA', 24),
(222, 'TICAPAMPA', 24),
(223, 'CACERES DEL PERU', 25),
(224, 'CHIMBOTE', 25),
(225, 'COISHCO', 25),
(226, 'MACATE', 25),
(227, 'MORO', 25),
(228, 'NEPEÑA', 25),
(229, 'NUEVO CHIMBOTE', 25),
(230, 'SAMANCO', 25),
(231, 'SANTA', 25),
(232, 'ACOBAMBA', 26),
(233, 'ALFONSO UGARTE', 26),
(234, 'CASHAPAMPA', 26),
(235, 'CHINGALPO', 26),
(236, 'HUAYLLABAMBA', 26),
(237, 'QUICHES', 26),
(238, 'RAGASH', 26),
(239, 'SAN JUAN', 26),
(240, 'SICSIBAMBA', 26),
(241, 'SIHUAS', 26),
(242, 'CASCAPARA', 27),
(243, 'MANCOS', 27),
(244, 'MATACOTO', 27),
(245, 'QUILLO', 27),
(246, 'RANRAHIRCA', 27),
(247, 'SHUPLUY', 27),
(248, 'YANAMA', 27),
(249, 'YUNGAY', 27),
(250, 'ABANCAY', 28),
(251, 'CHACOCHE', 28),
(252, 'CIRCA', 28),
(253, 'CURAHUASI', 28),
(254, 'HUANIPACA', 28),
(255, 'LAMBRAMA', 28),
(256, 'PICHIRHUA', 28),
(257, 'SAN PEDRO DE CACHORA', 28),
(258, 'TAMBURCO', 28),
(259, 'ANDAHUAYLAS', 29),
(260, 'ANDARAPA', 29),
(261, 'CHIARA', 29),
(262, 'HUANCARAMA', 29),
(263, 'HUANCARAY', 29),
(264, 'HUAYANA', 29),
(265, 'KAQUIABAMBA', 29),
(266, 'KISHUARA', 29),
(267, 'PACOBAMBA', 29),
(268, 'PACUCHA', 29),
(269, 'PAMPACHIRI', 29),
(270, 'POMACOCHA', 29),
(271, 'SAN ANTONIO DE CACHI', 29),
(272, 'SAN JERONIMO', 29),
(273, 'SAN MIGUEL DE CHACCRAMPA', 29),
(274, 'SANTA MARIA DE CHICMO', 29),
(275, 'TALAVERA', 29),
(276, 'TUMAY HUARACA', 29),
(277, 'TURPO', 29),
(278, 'ANTABAMBA', 30),
(279, 'EL ORO', 30),
(280, 'HUAQUIRCA', 30),
(281, 'JUAN ESPINOZA MEDRANO', 30),
(282, 'OROPESA', 30),
(283, 'PACHACONAS', 30),
(284, 'SABAINO', 30),
(285, 'CAPAYA', 31),
(286, 'CARAYBAMBA', 31),
(287, 'CHALHUANCA', 31),
(288, 'CHAPIMARCA', 31),
(289, 'COLCABAMBA', 31),
(290, 'COTARUSE', 31),
(291, 'HUAYLLO', 31),
(292, 'JUSTO APU SAHUARAURA', 31),
(293, 'LUCRE', 31),
(294, 'POCOHUANCA', 31),
(295, 'SAN JUAN DE CHACÑA', 31),
(296, 'SAÑAYCA', 31),
(297, 'SORAYA', 31),
(298, 'TAPAIRIHUA', 31),
(299, 'TINTAY', 31),
(300, 'TORAYA', 31),
(301, 'YANACA', 31),
(302, 'ANCO-HUALLO', 32),
(303, 'CHINCHEROS', 32),
(304, 'COCHARCAS', 32),
(305, 'HUACCANA', 32),
(306, 'OCOBAMBA', 32),
(307, 'ONGOY', 32),
(308, 'RANRACANCHA', 32),
(309, 'URANMARCA', 32),
(310, 'CHALLHUAHUACHO', 33),
(311, 'COTABAMBAS', 33),
(312, 'COYLLURQUI', 33),
(313, 'HAQUIRA', 33),
(314, 'MARA', 33),
(315, 'TAMBOBAMBA', 33),
(316, 'CHUQUIBAMBILLA', 34),
(317, 'CURASCO', 34),
(318, 'CURPAHUASI', 34),
(319, 'GAMARRA', 34),
(320, 'HUAYLLATI', 34),
(321, 'MAMARA', 34),
(322, 'MICAELA BASTIDAS', 34),
(323, 'PATAYPAMPA', 34),
(324, 'PROGRESO', 34),
(325, 'SAN ANTONIO', 34),
(326, 'SANTA ROSA', 34),
(327, 'TURPAY', 34),
(328, 'VILCABAMBA', 34),
(329, 'VIRUNDO', 34),
(330, 'ALTO SELVA ALEGRE', 35),
(331, 'AREQUIPA', 35),
(332, 'CAYMA', 35),
(333, 'CERRO COLORADO', 35),
(334, 'CHARACATO', 35),
(335, 'CHIGUATA', 35),
(336, 'JACOBO HUNTER', 35),
(337, 'JOSE LUIS BUSTAMANTE Y RIVERO', 35),
(338, 'LA JOYA', 35),
(339, 'MARIANO MELGAR', 35),
(340, 'MIRAFLORES', 35),
(341, 'MOLLEBAYA', 35),
(342, 'PAUCARPATA', 35),
(343, 'POCSI', 35),
(344, 'POLOBAYA', 35),
(345, 'QUEQUEÑA', 35),
(346, 'SABANDIA', 35),
(347, 'SACHACA', 35),
(348, 'SAN JUAN DE SIGUAS', 35),
(349, 'SAN JUAN DE TARUCANI', 35),
(350, 'SANTA ISABEL DE SIGUAS', 35),
(351, 'SANTA RITA DE SIGUAS', 35),
(352, 'SOCABAYA', 35),
(353, 'TIABAYA', 35),
(354, 'UCHUMAYO', 35),
(355, 'VITOR  1/', 35),
(356, 'YANAHUARA', 35),
(357, 'YARABAMBA', 35),
(358, 'YURA', 35),
(359, 'CAMANA', 36),
(360, 'JOSE MARIA QUIMPER', 36),
(361, 'MARIANO NICOLAS VALCARCEL', 36),
(362, 'MARISCAL CACERES', 36),
(363, 'NICOLAS DE PIEROLA', 36),
(364, 'OCOÑA', 36),
(365, 'QUILCA', 36),
(366, 'SAMUEL PASTOR', 36),
(367, 'ACARI', 37),
(368, 'ATICO', 37),
(369, 'ATIQUIPA', 37),
(370, 'BELLA UNION', 37),
(371, 'CAHUACHO', 37),
(372, 'CARAVELI', 37),
(373, 'CHALA', 37),
(374, 'CHAPARRA', 37),
(375, 'HUANUHUANU', 37),
(376, 'JAQUI', 37),
(377, 'LOMAS', 37),
(378, 'QUICACHA', 37),
(379, 'YAUCA', 37),
(380, 'ANDAGUA', 38),
(381, 'APLAO', 38),
(382, 'AYO', 38),
(383, 'CHACHAS', 38),
(384, 'CHILCAYMARCA', 38),
(385, 'CHOCO', 38),
(386, 'HUANCARQUI', 38),
(387, 'MACHAGUAY', 38),
(388, 'ORCOPAMPA', 38),
(389, 'PAMPACOLCA', 38),
(390, 'TIPAN', 38),
(391, 'UÑON', 38),
(392, 'URACA', 38),
(393, 'VIRACO', 38),
(394, 'ACHOMA', 39),
(395, 'CABANACONDE', 39),
(396, 'CALLALLI', 39),
(397, 'CAYLLOMA', 39),
(398, 'CHIVAY', 39),
(399, 'COPORAQUE', 39),
(400, 'HUAMBO', 39),
(401, 'HUANCA', 39),
(402, 'ICHUPAMPA', 39),
(403, 'LARI', 39),
(404, 'LLUTA', 39),
(405, 'MACA', 39),
(406, 'MADRIGAL', 39),
(407, 'MAJES', 39),
(408, 'SAN ANTONIO DE CHUCA', 39),
(409, 'SIBAYO', 39),
(410, 'TAPAY', 39),
(411, 'TISCO', 39),
(412, 'TUTI', 39),
(413, 'YANQUE', 39),
(414, 'ANDARAY', 40),
(415, 'CAYARANI', 40),
(416, 'CHICHAS', 40),
(417, 'CHUQUIBAMBA', 40),
(418, 'IRAY', 40),
(419, 'RIO GRANDE', 40),
(420, 'SALAMANCA', 40),
(421, 'YANAQUIHUA', 40),
(422, 'COCACHACRA', 41),
(423, 'DEAN VALDIVIA', 41),
(424, 'ISLAY', 41),
(425, 'MEJIA', 41),
(426, 'MOLLENDO', 41),
(427, 'PUNTA DE BOMBON', 41),
(428, 'ALCA', 42),
(429, 'CHARCANA', 42),
(430, 'COTAHUASI', 42),
(431, 'HUAYNACOTAS', 42),
(432, 'PAMPAMARCA', 42),
(433, 'PUYCA', 42),
(434, 'QUECHUALLA', 42),
(435, 'SAYLA', 42),
(436, 'TAURIA', 42),
(437, 'TOMEPAMPA', 42),
(438, 'TORO', 42),
(439, 'CANGALLO', 43),
(440, 'CHUSCHI', 43),
(441, 'LOS MOROCHUCOS', 43),
(442, 'MARIA PARADO DE BELLIDO', 43),
(443, 'PARAS', 43),
(444, 'TOTOS', 43),
(445, 'ACOCRO', 44),
(446, 'ACOS VINCHOS', 44),
(447, 'AYACUCHO', 44),
(448, 'CARMEN ALTO', 44),
(449, 'CHIARA', 44),
(450, 'JESUS NAZARENO', 44),
(451, 'OCROS', 44),
(452, 'PACAYCASA', 44),
(453, 'QUINUA', 44),
(454, 'SAN JOSE DE TICLLAS', 44),
(455, 'SAN JUAN BAUTISTA', 44),
(456, 'SANTIAGO DE PISCHA', 44),
(457, 'SOCOS', 44),
(458, 'TAMBILLO', 44),
(459, 'VINCHOS', 44),
(460, 'CARAPO', 45),
(461, 'SACSAMARCA', 45),
(462, 'SANCOS', 45),
(463, 'SANTIAGO DE LUCANAMARCA', 45),
(464, 'AYAHUANCO', 46),
(465, 'HUAMANGUILLA', 46),
(466, 'HUANTA', 46),
(467, 'IGUAIN', 46),
(468, 'LLOCHEGUA', 46),
(469, 'LURICOCHA', 46),
(470, 'SANTILLANA', 46),
(471, 'SIVIA', 46),
(472, 'ANCO', 47),
(473, 'AYNA', 47),
(474, 'CHILCAS', 47),
(475, 'CHUNGUI', 47),
(476, 'LUIS CARRANZA', 47),
(477, 'SAN MIGUEL', 47),
(478, 'SANTA ROSA', 47),
(479, 'TAMBO', 47),
(480, 'AUCARA', 48),
(481, 'CABANA', 48),
(482, 'CARMEN SALCEDO', 48),
(483, 'CHAVIÑA', 48),
(484, 'CHIPAO', 48),
(485, 'HUAC-HUAS', 48),
(486, 'LARAMATE', 48),
(487, 'LEONCIO PRADO', 48),
(488, 'LLAUTA', 48),
(489, 'LUCANAS', 48),
(490, 'OCAÑA', 48),
(491, 'OTOCA', 48),
(492, 'PUQUIO', 48),
(493, 'SAISA', 48),
(494, 'SAN CRISTOBAL', 48),
(495, 'SAN JUAN', 48),
(496, 'SAN PEDRO', 48),
(497, 'SAN PEDRO DE PALCO', 48),
(498, 'SANCOS', 48),
(499, 'SANTA ANA DE HUAYCAHUACHO', 48),
(500, 'SANTA LUCIA', 48),
(501, 'CHUMPI', 49),
(502, 'CORACORA', 49),
(503, 'CORONEL CASTAÑEDA', 49),
(504, 'PACAPAUSA', 49),
(505, 'PULLO', 49),
(506, 'PUYUSCA', 49),
(507, 'SAN FRANCISCO DE RAVACAYCO', 49),
(508, 'UPAHUACHO', 49),
(509, 'COLTA', 50),
(510, 'CORCULLA', 50),
(511, 'LAMPA', 50),
(512, 'MARCABAMBA', 50),
(513, 'OYOLO', 50),
(514, 'PARARCA', 50),
(515, 'PAUSA', 50),
(516, 'SAN JAVIER DE ALPABAMBA', 50),
(517, 'SAN JOSE DE USHUA', 50),
(518, 'SARA SARA', 50),
(519, 'BELEN', 51),
(520, 'CHALCOS', 51),
(521, 'CHILCAYOC', 51),
(522, 'HUACAÑA', 51),
(523, 'MORCOLLA', 51),
(524, 'PAICO', 51),
(525, 'QUEROBAMBA', 51),
(526, 'SAN PEDRO DE LARCAY', 51),
(527, 'SAN SALVADOR DE QUIJE', 51),
(528, 'SANTIAGO DE PAUCARAY', 51),
(529, 'SORAS', 51),
(530, 'ALCAMENCA', 52),
(531, 'APONGO', 52),
(532, 'ASQUIPATA', 52),
(533, 'CANARIA', 52),
(534, 'CAYARA', 52),
(535, 'COLCA', 52),
(536, 'HUAMANQUIQUIA', 52),
(537, 'HUANCAPI', 52),
(538, 'HUANCARAYLLA', 52),
(539, 'HUAYA', 52),
(540, 'SARHUA', 52),
(541, 'VILCANCHOS', 52),
(542, 'ACCOMARCA', 53),
(543, 'CARHUANCA', 53),
(544, 'CONCEPCION', 53),
(545, 'HUAMBALPA', 53),
(546, 'INDEPENDENCIA', 53),
(547, 'SAURAMA', 53),
(548, 'VILCAS HUAMAN', 53),
(549, 'VISCHONGO', 53),
(550, 'CACHACHI', 54),
(551, 'CAJABAMBA', 54),
(552, 'CONDEBAMBA', 54),
(553, 'SITACOCHA', 54),
(554, 'ASUNCION', 55),
(555, 'CAJAMARCA', 55),
(556, 'CHETILLA', 55),
(557, 'COSPAN', 55),
(558, 'ENCAÑADA', 55),
(559, 'JESUS', 55),
(560, 'LLACANORA', 55),
(561, 'LOS BAÑOS DEL INCA', 55),
(562, 'MAGDALENA', 55),
(563, 'MATARA', 55),
(564, 'NAMORA', 55),
(565, 'SAN JUAN', 55),
(566, 'CELENDIN', 56),
(567, 'CHUMUCH', 56),
(568, 'CORTEGANA', 56),
(569, 'HUASMIN', 56),
(570, 'JORGE CHAVEZ', 56),
(571, 'JOSE GALVEZ', 56),
(572, 'LA LIBERTAD DE PALLAN', 56),
(573, 'MIGUEL IGLESIAS', 56),
(574, 'OXAMARCA', 56),
(575, 'SOROCHUCO', 56),
(576, 'SUCRE', 56),
(577, 'UTCO', 56),
(578, 'ANGUIA', 57),
(579, 'CHADIN', 57),
(580, 'CHALAMARCA', 57),
(581, 'CHIGUIRIP', 57),
(582, 'CHIMBAN', 57),
(583, 'CHOROPAMPA', 57),
(584, 'CHOTA', 57),
(585, 'COCHABAMBA', 57),
(586, 'CONCHAN', 57),
(587, 'HUAMBOS', 57),
(588, 'LAJAS', 57),
(589, 'LLAMA', 57),
(590, 'MIRACOSTA', 57),
(591, 'PACCHA', 57),
(592, 'PION', 57),
(593, 'QUEROCOTO', 57),
(594, 'SAN JUAN DE LICUPIS', 57),
(595, 'TACABAMBA', 57),
(596, 'TOCMOCHE', 57),
(597, 'CHILETE', 58),
(598, 'CONTUMAZA', 58),
(599, 'CUPISNIQUE', 58),
(600, 'GUZMANGO', 58),
(601, 'SAN BENITO', 58),
(602, 'SANTA CRUZ DE TOLEDO', 58),
(603, 'TANTARICA', 58),
(604, 'YONAN', 58),
(605, 'CALLAYUC', 59),
(606, 'CHOROS', 59),
(607, 'CUJILLO', 59),
(608, 'CUTERVO', 59),
(609, 'LA RAMADA', 59),
(610, 'PIMPINGOS', 59),
(611, 'QUEROCOTILLO', 59),
(612, 'SAN ANDRES DE CUTERVO', 59),
(613, 'SAN JUAN DE CUTERVO', 59),
(614, 'SAN LUIS DE LUCMA', 59),
(615, 'SANTA CRUZ', 59),
(616, 'SANTO TOMAS', 59),
(617, 'SOCOTA', 59),
(618, 'STO. DOMINGO DE LA CAPILLA', 59),
(619, 'TORIBIO CASANOVA', 59),
(620, 'BAMBAMARCA', 60),
(621, 'CHUGUR', 60),
(622, 'HUALGAYOC', 60),
(623, 'BELLAVISTA', 61),
(624, 'CHONTALI', 61),
(625, 'COLASAY', 61),
(626, 'HUABAL', 61),
(627, 'JAEN', 61),
(628, 'LAS PIRIAS', 61),
(629, 'POMAHUACA', 61),
(630, 'PUCARA', 61),
(631, 'SALLIQUE', 61),
(632, 'SAN FELIPE', 61),
(633, 'SAN JOSE DEL ALTO', 61),
(634, 'SANTA ROSA', 61),
(635, 'CHIRINOS', 62),
(636, 'HUARANGO', 62),
(637, 'LA COIPA', 62),
(638, 'NAMBALLE', 62),
(639, 'SAN IGNACIO', 62),
(640, 'SAN JOSE DE LOURDES', 62),
(641, 'TABACONAS', 62),
(642, 'CHANCAY', 63),
(643, 'EDUARDO VILLANUEVA', 63),
(644, 'GREGORIO PITA', 63),
(645, 'ICHOCAN', 63),
(646, 'JOSE MANUEL QUIROZ', 63),
(647, 'JOSE SABOGAL', 63),
(648, 'PEDRO GALVEZ', 63),
(649, 'BOLIVAR', 64),
(650, 'CALQUIS', 64),
(651, 'CATILLUC', 64),
(652, 'EL PRADO', 64),
(653, 'LA FLORIDA', 64),
(654, 'LLAPA', 64),
(655, 'NANCHOC', 64),
(656, 'NIEPOS', 64),
(657, 'SAN GREGORIO', 64),
(658, 'SAN MIGUEL', 64),
(659, 'SAN SILVESTRE DE COCHAN', 64),
(660, 'TONGOD', 64),
(661, 'UNION AGUA BLANCA', 64),
(662, 'SAN BERNARDINO', 65),
(663, 'SAN LUIS', 65),
(664, 'SAN PABLO', 65),
(665, 'TUMBADEN', 65),
(666, 'ANDABAMBA', 66),
(667, 'CATACHE', 66),
(668, 'CHANCAYBAÑOS', 66),
(669, 'LA ESPERANZA', 66),
(670, 'NINABAMBA', 66),
(671, 'PULAN', 66),
(672, 'SANTA CRUZ', 66),
(673, 'SAUCEPAMPA', 66),
(674, 'SEXI', 66),
(675, 'UTICYACU', 66),
(676, 'YAUYUCAN', 66),
(677, 'ACOMAYO', 67),
(678, 'ACOPIA', 67),
(679, 'ACOS', 67),
(680, 'MOSOC LLACTA', 67),
(681, 'POMACANCHI', 67),
(682, 'RONDOCAN', 67),
(683, 'SANGARARA', 67),
(684, 'ANCAHUASI', 68),
(685, 'ANTA', 68),
(686, 'CACHIMAYO', 68),
(687, 'CHINCHAYPUJIO', 68),
(688, 'HUAROCONDO', 68),
(689, 'LIMATAMBO', 68),
(690, 'MOLLEPATA', 68),
(691, 'PUCYURA', 68),
(692, 'ZURITE', 68),
(693, 'CALCA', 69),
(694, 'COYA', 69),
(695, 'LAMAY', 69),
(696, 'LARES', 69),
(697, 'PISAC', 69),
(698, 'SAN SALVADOR', 69),
(699, 'TARAY', 69),
(700, 'YANATILE', 69),
(701, 'CHECCA', 70),
(702, 'KUNTURKANKI', 70),
(703, 'LANGUI', 70),
(704, 'LAYO', 70),
(705, 'PAMPAMARCA', 70),
(706, 'QUEHUE', 70),
(707, 'TUPAC AMARU', 70),
(708, 'YANAOCA', 70),
(709, 'CHECACUPE', 71),
(710, 'COMBAPATA', 71),
(711, 'MARANGANI', 71),
(712, 'PITUMARCA', 71),
(713, 'SAN PABLO', 71),
(714, 'SAN PEDRO', 71),
(715, 'SICUANI', 71),
(716, 'TINTA', 71),
(717, 'CAPACMARCA', 72),
(718, 'CHAMACA', 72),
(719, 'COLQUEMARCA', 72),
(720, 'LIVITACA', 72),
(721, 'LLUSCO', 72),
(722, 'QUIÑOTA', 72),
(723, 'SANTO TOMAS', 72),
(724, 'VELILLE', 72),
(725, 'CCORCA', 73),
(726, 'CUSCO', 73),
(727, 'POROY', 73),
(728, 'SAN JERONIMO', 73),
(729, 'SAN SEBASTIAN', 73),
(730, 'SANTIAGO', 73),
(731, 'SAYLLA', 73),
(732, 'WANCHAQ', 73),
(733, 'ALTO PICHIGUA', 74),
(734, 'CONDOROMA', 74),
(735, 'COPORAQUE', 74),
(736, 'ESPINAR', 74),
(737, 'OCORURO', 74),
(738, 'PALLPATA', 74),
(739, 'PICHIGUA', 74),
(740, 'SUYCKUTAMBO', 74),
(741, 'ECHARATE', 75),
(742, 'HUAYOPATA', 75),
(743, 'MARANURA', 75),
(744, 'OCOBAMBA', 75),
(745, 'PICHARI', 75),
(746, 'QUELLOUNO', 75),
(747, 'QUIMBIRI', 75),
(748, 'SANTA ANA', 75),
(749, 'SANTA TERESA', 75),
(750, 'VILCABAMBA', 75),
(751, 'ACCHA', 76),
(752, 'CCAPI', 76),
(753, 'COLCHA', 76),
(754, 'HUANOQUITE', 76),
(755, 'OMACHA', 76),
(756, 'PACCARITAMBO', 76),
(757, 'PARURO', 76),
(758, 'PILLPINTO', 76),
(759, 'YAURISQUE', 76),
(760, 'CAICAY', 77),
(761, 'CHALLABAMBA', 77),
(762, 'COLQUEPATA', 77),
(763, 'HUANCARANI', 77),
(764, 'KOSÑIPATA', 77),
(765, 'PAUCARTAMBO', 77),
(766, 'ANDAHUAYLILLAS', 78),
(767, 'CAMANTI', 78),
(768, 'CCARHUAYO', 78),
(769, 'CCATCA', 78),
(770, 'CUSIPATA', 78),
(771, 'HUARO', 78),
(772, 'LUCRE', 78),
(773, 'MARCAPATA', 78),
(774, 'OCONGATE', 78),
(775, 'OROPESA', 78),
(776, 'QUIQUIJANA', 78),
(777, 'URCOS', 78),
(778, 'CHINCHERO', 79),
(779, 'HUAYLLABAMBA', 79),
(780, 'MACHUPICCHU', 79),
(781, 'MARAS', 79),
(782, 'OLLANTAYTAMBO', 79),
(783, 'URUBAMBA', 79),
(784, 'YUCAY', 79),
(785, 'ACOBAMBA', 80),
(786, 'ANDABAMBA', 80),
(787, 'ANTA', 80),
(788, 'CAJA', 80),
(789, 'MARCAS', 80),
(790, 'PAUCARA', 80),
(791, 'POMACOCHA', 80),
(792, 'ROSARIO', 80),
(793, 'ANCHONGA', 81),
(794, 'CALLANMARCA', 81),
(795, 'CCOCHACCASA', 81),
(796, 'CHINCHO', 81),
(797, 'CONGALLA', 81),
(798, 'HUANCA-HUANCA', 81),
(799, 'HUAYLLAY GRANDE', 81),
(800, 'JULCAMARCA', 81),
(801, 'LIRCAY', 81),
(802, 'SAN ANTONIO DE ANTAPARCO', 81),
(803, 'SANTO TOMAS DE PATA', 81),
(804, 'SECCLLA', 81),
(805, 'ARMA', 82),
(806, 'AURAHUA', 82),
(807, 'CAPILLAS', 82),
(808, 'CASTROVIRREYNA', 82),
(809, 'CHUPAMARCA', 82),
(810, 'COCAS', 82),
(811, 'HUACHOS', 82),
(812, 'HUAMATAMBO', 82),
(813, 'MOLLEPAMPA', 82),
(814, 'SAN JUAN', 82),
(815, 'SANTA ANA', 82),
(816, 'TANTARA', 82),
(817, 'TICRAPO', 82),
(818, 'ANCO', 83),
(819, 'CHINCHIHUASI', 83),
(820, 'CHURCAMPA', 83),
(821, 'EL CARMEN', 83),
(822, 'LA MERCED', 83),
(823, 'LOCROJA', 83),
(824, 'PACHAMARCA', 83),
(825, 'PAUCARBAMBA', 83),
(826, 'SAN MIGUEL DE MAYOCC', 83),
(827, 'SAN PEDRO DE CORIS', 83),
(828, 'ACOBAMBILLA', 84),
(829, 'ACORIA', 84),
(830, 'ASCENCION', 84),
(831, 'CONAYCA', 84),
(832, 'CUENCA', 84),
(833, 'HUACHOCOLPA', 84),
(834, 'HUANCAVELICA', 84),
(835, 'HUANDO', 84),
(836, 'HUANDO', 84),
(837, 'HUAYLLAHUARA', 84),
(838, 'IZCUCHACA', 84),
(839, 'LARIA', 84),
(840, 'MANTA', 84),
(841, 'MARISCAL CACERES', 84),
(842, 'MOYA', 84),
(843, 'NUEVO OCCORO', 84),
(844, 'PALCA', 84),
(845, 'PILCHACA', 84),
(846, 'VILCA', 84),
(847, 'YAULI', 84),
(848, 'AYAVI', 85),
(849, 'CORDOVA', 85),
(850, 'HUAYACUNDO ARMA', 85),
(851, 'HUAYTARA', 85),
(852, 'LARAMARCA', 85),
(853, 'OCOYO', 85),
(854, 'PILPICHACA', 85),
(855, 'QUERCO', 85),
(856, 'QUITO-ARMA', 85),
(857, 'SAN ANTONIO DE CUSICANCHA', 85),
(858, 'SAN FSCO. DE SANGAYAICO', 85),
(859, 'SAN ISIDRO', 85),
(860, 'SANTIAGO DE CHOCORVOS', 85),
(861, 'SANTIAGO DE QUIRAHUARA', 85),
(862, 'SANTO DOMINGO DE CAPILLAS', 85),
(863, 'TAMBO', 85),
(864, 'ACOSTAMBO', 86),
(865, 'ACRAQUIA', 86),
(866, 'AHUAYCHA', 86),
(867, 'COLCABAMBA', 86),
(868, 'DANIEL HERNANDEZ', 86),
(869, 'HUACHOCOLPA', 86),
(870, 'HUARIBAMBA', 86),
(871, 'PAMPAS', 86),
(872, 'PAZOS', 86),
(873, 'QUISHUAR', 86),
(874, 'SALCABAMBA', 86),
(875, 'SALCAHUASI', 86),
(876, 'SAN MARCOS DE ROCCHAC', 86),
(877, 'SURCUBAMBA', 86),
(878, 'TINTAY PUNCU', 86),
(879, 'YAHUIMPUQUIO', 86),
(880, 'AMBO', 87),
(881, 'CAYNA', 87),
(882, 'COLPAS', 87),
(883, 'CONCHAMARCA', 87),
(884, 'HUACAR', 87),
(885, 'SAN FRANCISCO', 87),
(886, 'SAN RAFAEL', 87),
(887, 'TOMAYQUICHUA', 87),
(888, 'CHUQUIS', 88),
(889, 'LA UNION', 88),
(890, 'MARIAS', 88),
(891, 'PACHAS', 88),
(892, 'QUIVILLA', 88),
(893, 'RIPAN', 88),
(894, 'SHUNQUI', 88),
(895, 'SILLAPATA', 88),
(896, 'YANAS', 88),
(897, 'CANCHABAMBA', 89),
(898, 'COCHABAMBA', 89),
(899, 'HUACAYBAMBA', 89),
(900, 'PINRA', 89),
(901, 'ARANCAY', 90),
(902, 'CHAVIN DE PARIARCA', 90),
(903, 'JACAS GRANDE', 90),
(904, 'JIRCAN', 90),
(905, 'LLATA', 90),
(906, 'MIRAFLORES', 90),
(907, 'MONZON', 90),
(908, 'PUNCHAO', 90),
(909, 'PUÑOS', 90),
(910, 'SINGA', 90),
(911, 'TANTAMAYO', 90),
(912, 'AMARILIS', 91),
(913, 'CHINCHAO', 91),
(914, 'CHURUBAMBA', 91),
(915, 'HUANUCO', 91),
(916, 'MARGOS', 91),
(917, 'PILCOMARCA', 91),
(918, 'QUISQUI', 91),
(919, 'SAN FRANCISCO DE CAYRAN', 91),
(920, 'SAN PEDRO DE CHAULAN', 91),
(921, 'SANTA MARIA DEL VALLE', 91),
(922, 'YARUMAYO', 91),
(923, 'BAÑOS', 92),
(924, 'JESUS', 92),
(925, 'JIVIA', 92),
(926, 'QUEROPALCA', 92),
(927, 'RONDOS', 92),
(928, 'SAN FRANCISCO DE ASIS', 92),
(929, 'SAN MIGUEL DE CAURI', 92),
(930, 'DANIEL ALOMIA  ROBLES', 93),
(931, 'HERMILIO VALDIZAN', 93),
(932, 'JOSE CRESPO Y CASTILLO', 93),
(933, 'LUYANDO', 93),
(934, 'MARIANO DAMASO BERAUN', 93),
(935, 'RUPA-RUPA', 93),
(936, 'CHOLON', 94),
(937, 'HUACRACHUCO', 94),
(938, 'SAN BUENAVENTURA', 94),
(939, 'CHAGLLA', 95),
(940, 'MOLINO', 95),
(941, 'PANAO', 95),
(942, 'UMARI', 95),
(943, 'CODO DEL POZUZO', 96),
(944, 'HONORIA', 96),
(945, 'PUERTO INCA', 96),
(946, 'TOURNAVISTA', 96),
(947, 'YUYAPICHIS', 96),
(948, 'APARICIO POMARES', 97),
(949, 'CAHUAC', 97),
(950, 'CHACABAMBA', 97),
(951, 'CHAVINILLO', 97),
(952, 'CHORAS', 97),
(953, 'JACAS CHICO', 97),
(954, 'OBAS', 97),
(955, 'PAMPAMARCA', 97),
(956, 'ALTO LARAN', 98),
(957, 'CHAVIN', 98),
(958, 'CHINCHA ALTA', 98),
(959, 'CHINCHA BAJA', 98),
(960, 'EL CARMEN', 98),
(961, 'GROCIO PRADO', 98),
(962, 'PUEBLO NUEVO', 98),
(963, 'SAN JUAN DE YANAC', 98),
(964, 'SAN PEDRO DE HUACARPANA', 98),
(965, 'SUNAMPE', 98),
(966, 'TAMBO DE MORA', 98),
(967, 'ICA', 99),
(968, 'LA TINGUIÑA', 99),
(969, 'LOS AQUIJES', 99),
(970, 'OCUCAJE', 99),
(971, 'PACHACUTEC', 99),
(972, 'PARCONA', 99),
(973, 'PUEBLO NUEVO', 99),
(974, 'SALAS', 99),
(975, 'SAN JOSE DE LOS MOLINOS', 99),
(976, 'SAN JUAN BAUTISTA', 99),
(977, 'SANTIAGO', 99),
(978, 'SUBTANJALLA', 99),
(979, 'TATE', 99),
(980, 'YAUCA DEL ROSARIO', 99),
(981, 'CHANGUILLO', 100),
(982, 'EL INGENIO', 100),
(983, 'MARCONA', 100),
(984, 'NAZCA', 100),
(985, 'VISTA ALEGRE', 100),
(986, 'LLIPATA', 101),
(987, 'PALPA', 101),
(988, 'RIO GRANDE', 101),
(989, 'SANTA CRUZ', 101),
(990, 'TIBILLO', 101),
(991, 'HUANCANO', 102),
(992, 'HUMAY', 102),
(993, 'INDEPENDENCIA', 102),
(994, 'PARACAS', 102),
(995, 'PISCO', 102),
(996, 'SAN ANDRES', 102),
(997, 'SAN CLEMENTE', 102),
(998, 'TUPAC AMARU INCA', 102),
(999, 'CHANCHAMAYO', 103),
(1000, 'PERENE', 103),
(1001, 'PICHANAQUI', 103),
(1002, 'SAN LUIS DE SHUARO', 103),
(1003, 'SAN RAMON', 103),
(1004, 'VITOC', 103),
(1005, 'AHUAC', 104),
(1006, 'CHONGOS BAJO', 104),
(1007, 'CHUPACA', 104),
(1008, 'HUACHAC', 104),
(1009, 'HUAMANCACA CHICO', 104),
(1010, 'SAN JUAN DE ISCOS', 104),
(1011, 'SAN JUAN DE JARPA', 104),
(1012, 'TRES DE DICIEMBRE', 104),
(1013, 'YANACANCHA', 104),
(1014, 'ACO', 105),
(1015, 'ANDAMARCA', 105),
(1016, 'CHAMBARA', 105),
(1017, 'COCHAS', 105),
(1018, 'COMAS', 105),
(1019, 'CONCEPCION', 105),
(1020, 'HEROINAS TOLEDO', 105),
(1021, 'MANZANARES', 105),
(1022, 'MARISCAL CASTILLA', 105),
(1023, 'MATAHUASI', 105),
(1024, 'MITO', 105),
(1025, 'NUEVE DE JULIO', 105),
(1026, 'ORCOTUNA', 105),
(1027, 'SAN JOSE DE QUERO', 105),
(1028, 'SANTA ROSA DE OCOPA', 105),
(1029, 'CARHUACALLANGA', 106),
(1030, 'CHACAPAMPA', 106),
(1031, 'CHICCHE', 106),
(1032, 'CHILCA', 106),
(1033, 'CHONGOS ALTO', 106),
(1034, 'CHUPURO', 106),
(1035, 'COLCA', 106),
(1036, 'CULLHUAS', 106),
(1037, 'EL TAMBO', 106),
(1038, 'HUACRAPUQUIO', 106),
(1039, 'HUALHUAS', 106),
(1040, 'HUANCAN', 106),
(1041, 'HUANCAYO', 106),
(1042, 'HUASICANCHA', 106),
(1043, 'HUAYUCACHI', 106),
(1044, 'INGENIO', 106),
(1045, 'PARIAHUANCA', 106),
(1046, 'PILCOMAYO', 106),
(1047, 'PUCARA', 106),
(1048, 'QUICHUAY', 106),
(1049, 'QUILCAS', 106),
(1050, 'SAN AGUSTIN', 106),
(1051, 'SAN JERONIMO DE TUNAN', 106),
(1052, 'SANTO DOMINGO DE ACOBAMBA', 106),
(1053, 'SAÑO', 106),
(1054, 'SAPALLANGA', 106),
(1055, 'SICAYA', 106),
(1056, 'VIQUES', 106),
(1057, 'ACOLLA', 107),
(1058, 'APATA', 107),
(1059, 'ATAURA', 107),
(1060, 'CANCHAYLLO', 107),
(1061, 'CURICACA', 107),
(1062, 'EL MANTARO', 107),
(1063, 'HUAMALI', 107),
(1064, 'HUARIPAMPA', 107),
(1065, 'HUERTAS', 107),
(1066, 'JANJAILLO', 107),
(1067, 'JAUJA', 107),
(1068, 'JULCAN', 107),
(1069, 'LEONOR ORDOÑEZ', 107),
(1070, 'LLOCLLAPAMPA', 107),
(1071, 'MARCO', 107),
(1072, 'MASMA', 107),
(1073, 'MASMA CHICCHE', 107),
(1074, 'MOLINOS', 107),
(1075, 'MONOBAMBA', 107),
(1076, 'MUQUI', 107),
(1077, 'MUQUIYAUYO', 107),
(1078, 'PACA', 107),
(1079, 'PACCHA', 107),
(1080, 'PANCAN', 107),
(1081, 'PARCO', 107),
(1082, 'POMACANCHA', 107),
(1083, 'RICRAN', 107),
(1084, 'SAN LORENZO', 107),
(1085, 'SAN PEDRO DE CHUNAN', 107),
(1086, 'SAUSA', 107),
(1087, 'SINCOS', 107),
(1088, 'TUNAN MARCA', 107),
(1089, 'YAULI', 107),
(1090, 'YAUYOS', 107),
(1091, 'CARHUAMAYO', 108),
(1092, 'JUNIN', 108),
(1093, 'ONDORES', 108),
(1094, 'ULCUMAYO', 108),
(1095, 'COVIRIALI', 109),
(1096, 'LLAYLLA', 109),
(1097, 'MAZAMARI', 109),
(1098, 'PAMPA HERMOSA', 109),
(1099, 'PANGOA', 109),
(1100, 'RIO NEGRO', 109),
(1101, 'RIO TAMBO', 109),
(1102, 'SATIPO', 109),
(1103, 'ACOBAMBA', 110),
(1104, 'HUARICOLCA', 110),
(1105, 'HUASAHUASI', 110),
(1106, 'LA UNION', 110),
(1107, 'PALCA', 110),
(1108, 'PALCAMAYO', 110),
(1109, 'SAN PEDRO DE CAJAS', 110),
(1110, 'TAPO', 110),
(1111, 'TARMA', 110),
(1112, 'CHACAPALPA', 111),
(1113, 'HUAY-HUAY', 111),
(1114, 'LA OROYA', 111),
(1115, 'MARCAPOMACOCHA', 111),
(1116, 'MOROCOCHA', 111),
(1117, 'PACCHA', 111),
(1118, 'SANTA ROSA DE SACCO', 111),
(1119, 'STA. BARBARA DE CARHUACAYAN', 111),
(1120, 'SUITUCANCHA', 111),
(1121, 'YAULI', 111),
(1122, 'ASCOPE', 112),
(1123, 'CASA GRANDE', 112),
(1124, 'CHICAMA', 112),
(1125, 'CHOCOPE', 112),
(1126, 'MAGDALENA DE CAO', 112),
(1127, 'PAIJAN', 112),
(1128, 'RAZURI', 112),
(1129, 'SANTIAGO DE CAO', 112),
(1130, 'BAMBAMARCA', 113),
(1131, 'BOLIVAR', 113),
(1132, 'CONDORMARCA', 113),
(1133, 'LONGOTEA', 113),
(1134, 'UCHUMARCA', 113),
(1135, 'UCUNCHA', 113),
(1136, 'CHEPEN', 114),
(1137, 'PACANGA', 114),
(1138, 'PUEBLO NUEVO', 114),
(1139, 'CASCAS', 115),
(1140, 'LUCMA', 115),
(1141, 'MARMOT', 115),
(1142, 'SAYAPULLO', 115),
(1143, 'CALAMARCA', 116),
(1144, 'CARABAMBA', 116),
(1145, 'HUASO', 116),
(1146, 'JULCAN', 116),
(1147, 'AGALLPAMPA', 117),
(1148, 'CHARAT', 117),
(1149, 'HUARANCHAL', 117),
(1150, 'LA CUESTA', 117),
(1151, 'MACHE', 117),
(1152, 'OTUZCO', 117),
(1153, 'PARANDAY', 117),
(1154, 'SALPO', 117),
(1155, 'SINSICAP', 117),
(1156, 'USQUIL', 117),
(1157, 'GUADALUPE', 118),
(1158, 'JEQUETEPEQUE', 118),
(1159, 'PACASMAYO', 118),
(1160, 'SAN JOSE', 118),
(1161, 'SAN PEDRO DE LLOC', 118),
(1162, 'BULDIBUYO', 119),
(1163, 'CHILLIA', 119),
(1164, 'HUANCASPATA', 119),
(1165, 'HUAYLILLAS', 119),
(1166, 'HUAYO', 119),
(1167, 'ONGON', 119),
(1168, 'PARCOY', 119),
(1169, 'PATAZ', 119),
(1170, 'PIAS', 119),
(1171, 'SANTIAGO DE CHALLAS', 119),
(1172, 'TAURIJA', 119),
(1173, 'TAYABAMBA', 119),
(1174, 'URPAY', 119),
(1175, 'CHUGAY', 120),
(1176, 'COCHORCO', 120),
(1177, 'CURGOS', 120),
(1178, 'HUAMACHUCO', 120),
(1179, 'MARCABAL', 120),
(1180, 'SANAGORAN', 120),
(1181, 'SARIN', 120),
(1182, 'SARTIMBAMBA', 120),
(1183, 'ANGASMARCA', 121),
(1184, 'CACHICADAN', 121),
(1185, 'MOLLEBAMBA', 121),
(1186, 'MOLLEPATA', 121),
(1187, 'QUIRUVILCA', 121),
(1188, 'SANTA CRUZ DE CHUCA', 121),
(1189, 'SANTIAGO DE CHUCO', 121),
(1190, 'SITABAMBA', 121),
(1191, 'EL PORVENIR', 122),
(1192, 'FLORENCIA DE MORA', 122),
(1193, 'HUANCHACO', 122),
(1194, 'LA ESPERANZA', 122),
(1195, 'LAREDO', 122),
(1196, 'MOCHE', 122),
(1197, 'POROTO', 122),
(1198, 'SALAVERRY', 122),
(1199, 'SIMBAL', 122),
(1200, 'TRUJILLO', 122),
(1201, 'VICTOR LARCO HERRERA', 122),
(1202, 'CHAO', 123),
(1203, 'GUADALUPITO', 123),
(1204, 'VIRU', 123),
(1205, 'CAYALTI', 124),
(1206, 'CHICLAYO', 124),
(1207, 'CHONGOYAPE', 124),
(1208, 'ETEN', 124),
(1209, 'ETEN PUERTO', 124),
(1210, 'JOSE LEONARDO ORTIZ', 124),
(1211, 'LA VICTORIA', 124),
(1212, 'LAGUNAS', 124),
(1213, 'MONSEFU', 124),
(1214, 'NUEVA ARICA', 124),
(1215, 'OYOTUN', 124),
(1216, 'PATAPO', 124),
(1217, 'PICSI', 124),
(1218, 'PIMENTEL', 124),
(1219, 'POMALCA', 124),
(1220, 'PUCALA', 124),
(1221, 'REQUE', 124),
(1222, 'SANTA ROSA', 124),
(1223, 'SAÑA', 124),
(1224, 'TUMAN', 124),
(1225, 'CANARIS', 125),
(1226, 'FERRENAFE', 125),
(1227, 'INCAHUASI', 125),
(1228, 'MANUEL A. MESONES MURO', 125),
(1229, 'PITIPO', 125),
(1230, 'PUEBLO NUEVO', 125),
(1231, 'CHOCHOPE', 126),
(1232, 'ILLIMO', 126),
(1233, 'JAYANCA', 126),
(1234, 'LAMBAYEQUE', 126),
(1235, 'MOCHUMI', 126),
(1236, 'MORROPE', 126),
(1237, 'MOTUPE', 126),
(1238, 'OLMOS', 126),
(1239, 'PACORA', 126),
(1240, 'SALAS', 126),
(1241, 'SAN JOSE', 126),
(1242, 'TUCUME', 126),
(1243, 'BARRANCA', 127),
(1244, 'PARAMONGA', 127),
(1245, 'PATIVILCA', 127),
(1246, 'SUPE', 127),
(1247, 'SUPE PUERTO', 127),
(1248, 'CAJATAMBO', 128),
(1249, 'COPA', 128),
(1250, 'GORGOR', 128),
(1251, 'HUANCAPON', 128),
(1252, 'MANAS', 128),
(1253, 'BELLAVISTA', 129),
(1254, 'CALLAO', 129),
(1255, 'CARMEN DE LA LEGUA  REYNOSO', 129),
(1256, 'LA PERLA', 129),
(1257, 'LA PUNTA', 129),
(1258, 'VENTANILLA', 129),
(1259, 'ARAHUAY', 130),
(1260, 'CANTA', 130),
(1261, 'HUAMANTANGA', 130),
(1262, 'HUAROS', 130),
(1263, 'LACHAQUI', 130),
(1264, 'SAN BUENAVENTURA', 130),
(1265, 'SANTA ROSA DE QUIVES', 130),
(1266, 'ASIA', 131),
(1267, 'CALANGO', 131),
(1268, 'CERRO AZUL', 131),
(1269, 'CHILCA', 131),
(1270, 'COAYLLO', 131),
(1271, 'IMPERIAL', 131),
(1272, 'LUNAHUANA', 131),
(1273, 'MALA', 131),
(1274, 'NUEVO IMPERIAL', 131),
(1275, 'PACARAN', 131),
(1276, 'QUILMANA', 131),
(1277, 'SAN ANTONIO', 131),
(1278, 'SAN LUIS', 131),
(1279, 'SAN VICENTE DE CAÑETE', 131),
(1280, 'SANTA CRUZ DE FLORES', 131),
(1281, 'ZUÑIGA', 131),
(1282, 'ATAVILLOS ALTO', 132),
(1283, 'ATAVILLOS BAJO', 132),
(1284, 'AUCALLAMA', 132),
(1285, 'CHANCAY', 132),
(1286, 'HUARAL', 132),
(1287, 'IHUARI', 132),
(1288, 'LAMPIAN', 132),
(1289, 'PACARAOS', 132),
(1290, 'SAN MIGUEL DE ACOS', 132),
(1291, 'SANTA CRUZ DE ANDAMARCA', 132),
(1292, 'SUMBILCA', 132),
(1293, 'VEINTISIETE DE NOVIEMBRE', 132),
(1294, 'ANTIOQUIA', 133),
(1295, 'CALLAHUANCA', 133),
(1296, 'CARAMPOMA', 133),
(1297, 'CHICLA', 133),
(1298, 'CUENCA', 133),
(1299, 'HUACHUPAMPA', 133),
(1300, 'HUANZA', 133),
(1301, 'HUAROCHIRI', 133),
(1302, 'LAHUAYTAMBO', 133),
(1303, 'LANGA', 133),
(1304, 'LARAOS', 133),
(1305, 'MARIATANA', 133),
(1306, 'MATUCANA', 133),
(1307, 'RICARDO PALMA', 133),
(1308, 'SAN ANDRES DE TUPICOCHA', 133),
(1309, 'SAN ANTONIO', 133),
(1310, 'SAN BARTOLOME', 133),
(1311, 'SAN DAMIAN', 133),
(1312, 'SAN JUAN DE IRIS', 133),
(1313, 'SAN JUAN DE TANTARANCHE', 133),
(1314, 'SAN LORENZO DE QUINTI', 133),
(1315, 'SAN MATEO', 133),
(1316, 'SAN MATEO DE OTAO', 133),
(1317, 'SAN PEDRO DE CASTA', 133),
(1318, 'SAN PEDRO DE HUANCAYRE', 133),
(1319, 'SANGALLAYA', 133),
(1320, 'SANTA CRUZ DE COCACHACRA', 133),
(1321, 'SANTA EULALIA', 133),
(1322, 'SANTIAGO DE ANCHUCAYA', 133),
(1323, 'SANTIAGO DE TUNA', 133),
(1324, 'STO. DMGO. DE LOS OLLEROS', 133),
(1325, 'SURCO', 133),
(1326, 'AMBAR', 134),
(1327, 'CALETA DE CARQUIN', 134),
(1328, 'CHECRAS', 134),
(1329, 'HUACHO', 134),
(1330, 'HUALMAY', 134),
(1331, 'HUAURA', 134),
(1332, 'LEONCIO PRADO', 134),
(1333, 'PACCHO', 134),
(1334, 'SANTA LEONOR', 134),
(1335, 'SANTA MARIA', 134),
(1336, 'SAYAN', 134),
(1337, 'VEGUETA', 134),
(1338, 'ANCON', 135),
(1339, 'ATE', 135),
(1340, 'BARRANCO', 135),
(1341, 'BREÑA', 135),
(1342, 'CARABAYLLO', 135),
(1343, 'CHACLACAYO', 135),
(1344, 'CHORRILLOS', 135),
(1345, 'CIENEGUILLA', 135),
(1346, 'COMAS', 135),
(1347, 'EL AGUSTINO', 135),
(1348, 'INDEPENDENCIA', 135),
(1349, 'JESUS MARIA', 135),
(1350, 'LA MOLINA', 135),
(1351, 'LA VICTORIA', 135),
(1352, 'LIMA', 135),
(1353, 'LINCE', 135),
(1354, 'LOS OLIVOS', 135),
(1355, 'LURIGANCHO', 135),
(1356, 'LURIN', 135),
(1357, 'MAGDALENA DEL MAR', 135),
(1358, 'MAGDALENA VIEJA', 135),
(1359, 'MIRAFLORES', 135),
(1360, 'PACHACAMAC', 135),
(1361, 'PUCUSANA', 135),
(1362, 'PUENTE PIEDRA', 135),
(1363, 'PUNTA HERMOSA', 135),
(1364, 'PUNTA NEGRA', 135),
(1365, 'RIMAC', 135),
(1366, 'SAN BARTOLO', 135),
(1367, 'SAN BORJA', 135),
(1368, 'SAN ISIDRO', 135),
(1369, 'SAN JUAN DE LURIGANCHO', 135),
(1370, 'SAN JUAN DE MIRAFLORES', 135),
(1371, 'SAN LUIS', 135),
(1372, 'SAN MARTIN DE PORRES', 135),
(1373, 'SAN MIGUEL', 135),
(1374, 'SANTA ANITA', 135),
(1375, 'SANTA MARIA DEL MAR', 135),
(1376, 'SANTA ROSA', 135),
(1377, 'SANTIAGO DE SURCO', 135),
(1378, 'SURQUILLO', 135),
(1379, 'VILLA EL SALVADOR', 135),
(1380, 'VILLA MARIA DEL TRIUNFO', 135),
(1381, 'ANDAJES', 136),
(1382, 'CAUJUL', 136),
(1383, 'COCHAMARCA', 136),
(1384, 'NAVAN', 136),
(1385, 'OYON', 136),
(1386, 'PACHANGARA', 136),
(1387, 'ALIS', 137),
(1388, 'AYAUCA', 137),
(1389, 'AYAVIRI', 137),
(1390, 'AZANGARO', 137),
(1391, 'CACRA', 137),
(1392, 'CARANIA', 137),
(1393, 'CATAHUASI', 137),
(1394, 'CHOCOS', 137),
(1395, 'COCHAS', 137),
(1396, 'COLONIA', 137),
(1397, 'HONGOS', 137),
(1398, 'HUAMPARA', 137),
(1399, 'HUANCAYA', 137),
(1400, 'HUANGASCAR', 137),
(1401, 'HUANTAN', 137),
(1402, 'HUAYEC', 137),
(1403, 'LARAOS', 137),
(1404, 'LINCHA', 137),
(1405, 'MADEAN', 137),
(1406, 'MIRAFLORES', 137),
(1407, 'OMAS', 137),
(1408, 'PUTINZA', 137),
(1409, 'QUINCHES', 137),
(1410, 'QUINOCAY', 137),
(1411, 'SAN JOAQUIN', 137),
(1412, 'SAN PEDRO DE PILAS', 137),
(1413, 'TANTA', 137),
(1414, 'TAURIPAMPA', 137),
(1415, 'TOMAS', 137),
(1416, 'TUPE', 137),
(1417, 'VIÑAC', 137),
(1418, 'VITIS', 137),
(1419, 'YAUYOS', 137),
(1420, 'BALSAPUERTO', 138),
(1421, 'BARRANCA', 138),
(1422, 'CAHUAPANAS', 138),
(1423, 'JEBEROS', 138),
(1424, 'LAGUNAS', 138),
(1425, 'MANSERICHE', 138),
(1426, 'MORONA', 138),
(1427, 'PASTAZA', 138),
(1428, 'SANTA CRUZ', 138),
(1429, 'TENIENTE CESAR LOPEZ ROJAS', 138),
(1430, 'YURIMAGUAS', 138),
(1431, 'NAUTA', 139),
(1432, 'PARINARI', 139),
(1433, 'TIGRE', 139),
(1434, 'TROMPETEROS', 139),
(1435, 'URARINAS', 139),
(1436, 'PEBAS', 140),
(1437, 'RAMON CASTILLA', 140),
(1438, 'SAN PABLO', 140),
(1439, 'YAVARI', 140),
(1440, 'ALTO NANAY', 141),
(1441, 'BELEN', 141),
(1442, 'FERNANDO LORES', 141),
(1443, 'INDIANA', 141),
(1444, 'IQUITOS', 141),
(1445, 'LAS AMAZONAS', 141),
(1446, 'MAZAN', 141),
(1447, 'NAPO', 141),
(1448, 'PUNCHANA', 141),
(1449, 'PUTUMAYO', 141),
(1450, 'SAN JUAN BAUTISTA', 141),
(1451, 'TORRES CAUSANA', 141),
(1452, 'ALTO TAPICHE', 142),
(1453, 'CAPELO', 142),
(1454, 'EMILIO SAN MARTIN', 142),
(1455, 'JENARO HERRERA', 142),
(1456, 'MAQUIA', 142),
(1457, 'PUINAHUA', 142),
(1458, 'REQUENA', 142),
(1459, 'SAQUENA', 142),
(1460, 'SOPLIN', 142),
(1461, 'TAPICHE', 142),
(1462, 'YAQUERANA', 142),
(1463, 'YAQUERANA', 142),
(1464, 'CONTAMANA', 143),
(1465, 'INAHUAYA', 143),
(1466, 'PADRE MARQUEZ', 143),
(1467, 'PAMPA HERMOSA', 143),
(1468, 'SARAYACU', 143),
(1469, 'VARGAS GUERRA', 143),
(1470, 'FITZCARRALD', 144),
(1471, 'HUEPETUCHE', 144),
(1472, 'MADRE DE DIOS', 144),
(1473, 'MANU', 144),
(1474, 'IBERIA', 145),
(1475, 'IÑAPARI', 145),
(1476, 'TAHUAMANU', 145),
(1477, 'INAMBARI', 146),
(1478, 'LABERINTO', 146),
(1479, 'LAS PIEDRAS', 146),
(1480, 'TAMBOPATA', 146),
(1481, 'CHOJATA', 147),
(1482, 'COALAQUE', 147),
(1483, 'ICHUYA', 147),
(1484, 'LA CAPILLA', 147),
(1485, 'LLOQUE', 147),
(1486, 'MATALAQUE', 147),
(1487, 'OMATE', 147),
(1488, 'PUQUINA', 147),
(1489, 'QUINISTAQUILLAS', 147),
(1490, 'UBINAS', 147),
(1491, 'YUNGA', 147),
(1492, 'EL ALGARROBAL', 148),
(1493, 'ILO', 148),
(1494, 'PACOCHA', 148),
(1495, 'CARUMAS', 149),
(1496, 'CUCHUMBAYA', 149),
(1497, 'MOQUEGUA', 149),
(1498, 'SAMEGUA', 149),
(1499, 'SAN CRISTOBAL', 149),
(1500, 'TORATA', 149),
(1501, 'CHACAYAN', 150),
(1502, 'GOYLLARISQUIZGA', 150),
(1503, 'PAUCAR', 150),
(1504, 'SAN PEDRO DE PILLAO', 150),
(1505, 'SANTA ANA DE TUSI', 150),
(1506, 'TAPUC', 150),
(1507, 'VILCABAMBA', 150),
(1508, 'YANAHUANCA', 150),
(1509, 'CHONTABAMBA', 151),
(1510, 'HUANCABAMBA', 151),
(1511, 'OXAPAMPA', 151),
(1512, 'PALCAZU', 151),
(1513, 'POZUZO', 151),
(1514, 'PUERTO BERMUDEZ', 151),
(1515, 'VILLA RICA', 151),
(1516, 'CHAUPIMARCA', 152),
(1517, 'HUACHON', 152),
(1518, 'HUARIACA', 152),
(1519, 'HUAYLLAY', 152),
(1520, 'NINACACA', 152),
(1521, 'PALLANCHACRA', 152),
(1522, 'PAUCARTAMBO', 152),
(1523, 'SAN FCO.DE ASIS DE YARUSYACAN', 152),
(1524, 'SIMON BOLIVAR', 152),
(1525, 'TICLACAYAN', 152),
(1526, 'TINYAHUARCO', 152),
(1527, 'VICCO', 152),
(1528, 'YANACANCHA', 152),
(1529, 'AYABACA', 153),
(1530, 'FRIAS', 153),
(1531, 'JILILI', 153),
(1532, 'LAGUNAS', 153),
(1533, 'MONTERO', 153),
(1534, 'PACAIPAMPA', 153),
(1535, 'PAIMAS', 153),
(1536, 'SAPILLICA', 153),
(1537, 'SICCHEZ', 153),
(1538, 'SUYO', 153),
(1539, 'CANCHAQUE', 154),
(1540, 'EL CARMEN DE LA FRONTERA', 154),
(1541, 'HUANCABAMBA', 154),
(1542, 'HUARMACA', 154),
(1543, 'LALAQUIZ', 154),
(1544, 'SAN MIGUEL DE EL FAIQUE', 154),
(1545, 'SONDOR', 154),
(1546, 'SONDORILLO', 154),
(1547, 'BUENOS AIRES', 155),
(1548, 'CHALACO', 155),
(1549, 'CHULUCANAS', 155),
(1550, 'LA MATANZA', 155),
(1551, 'MORROPON', 155),
(1552, 'SALITRAL', 155),
(1553, 'SAN JUAN DE BIGOTE', 155),
(1554, 'SANTA CATALINA DE MOSSA', 155),
(1555, 'SANTO DOMINGO', 155),
(1556, 'YAMANGO', 155),
(1557, 'AMOTAPE', 156),
(1558, 'ARENAL', 156),
(1559, 'COLAN', 156),
(1560, 'LA HUACA', 156),
(1561, 'PAITA', 156),
(1562, 'TAMARINDO', 156),
(1563, 'VICHAYAL', 156),
(1564, 'CASTILLA', 157),
(1565, 'CATACAOS', 157),
(1566, 'CURA MORI', 157),
(1567, 'EL TALLAN', 157),
(1568, 'LA ARENA', 157),
(1569, 'LA UNION', 157),
(1570, 'LAS LOMAS', 157),
(1571, 'PIURA', 157),
(1572, 'TAMBO GRANDE', 157),
(1573, 'BELLAVISTA DE LA UNION', 158),
(1574, 'BERNAL', 158),
(1575, 'CRISTO NOS VALGA', 158),
(1576, 'RINCONADA LLICUAR', 158),
(1577, 'SECHURA', 158),
(1578, 'VICE', 158),
(1579, 'BELLAVISTA', 159),
(1580, 'IGNACIO ESCUDERO', 159),
(1581, 'LANCONES', 159),
(1582, 'MARCAVELICA', 159),
(1583, 'MIGUEL CHECA', 159),
(1584, 'QUERECOTILLO', 159),
(1585, 'SALITRAL', 159),
(1586, 'SULLANA', 159),
(1587, 'EL ALTO', 160),
(1588, 'LA BREA', 160),
(1589, 'LOBITOS', 160),
(1590, 'LOS ORGANOS', 160),
(1591, 'MANCORA', 160),
(1592, 'PARIÑAS', 160),
(1593, 'ACHAYA', 161),
(1594, 'ARAPA', 161),
(1595, 'ASILLO', 161),
(1596, 'AZANGARO', 161),
(1597, 'CAMINACA', 161),
(1598, 'CHUPA', 161),
(1599, 'JOSE D. CHOQUEHUANCA', 161),
(1600, 'MUYANI', 161),
(1601, 'POTONI', 161),
(1602, 'SAMAN', 161),
(1603, 'SAN ANTON', 161),
(1604, 'SAN JOSE', 161),
(1605, 'SAN JUAN DE SALINAS', 161),
(1606, 'SANTIAGO DE PUPUJA', 161),
(1607, 'TIRAPATA', 161),
(1608, 'AJOYANI', 162),
(1609, 'AYAPATA', 162),
(1610, 'COASA', 162),
(1611, 'CORANI', 162),
(1612, 'CRUCERO', 162),
(1613, 'ITUATA', 162),
(1614, 'MACUSANI', 162),
(1615, 'OLLACHEA', 162),
(1616, 'SAN GABAN', 162),
(1617, 'USICAYOS', 162),
(1618, 'DESAGUADERO', 163),
(1619, 'HUACULLANI', 163),
(1620, 'JULI', 163),
(1621, 'KELLUYO', 163),
(1622, 'PISACOMA', 163),
(1623, 'POMATA', 163),
(1624, 'ZEPITA', 163),
(1625, 'CAPAZO', 164),
(1626, 'CONDURIRI', 164),
(1627, 'ILAVE', 164),
(1628, 'PILCUYO', 164),
(1629, 'SANTA ROSA', 164),
(1630, 'COJATA', 165),
(1631, 'HUANCANE', 165),
(1632, 'HUATASANI', 165),
(1633, 'INCHUPALLA', 165),
(1634, 'PUSI', 165),
(1635, 'ROSASPATA', 165),
(1636, 'TARACO', 165),
(1637, 'VILQUE CHICO', 165),
(1638, 'CABANILLA', 166),
(1639, 'CALAPUJA', 166),
(1640, 'LAMPA', 166),
(1641, 'NICASIO', 166),
(1642, 'OCUVIRI', 166),
(1643, 'PALCA', 166),
(1644, 'PARATIA', 166),
(1645, 'PUCARA', 166),
(1646, 'SANTA LUCIA', 166),
(1647, 'VILAVILA', 166),
(1648, 'ANTAUTA', 167),
(1649, 'AYAVIRI', 167),
(1650, 'CUPI', 167),
(1651, 'LLALLI', 167),
(1652, 'MACARI', 167),
(1653, 'NUYOA', 167),
(1654, 'ORURILLO', 167),
(1655, 'SANTA ROSA', 167),
(1656, 'UMACHIRI', 167),
(1657, 'CONIMA', 168),
(1658, 'HUAYRAPATA', 168),
(1659, 'MOHO', 168),
(1660, 'TILALI', 168),
(1661, 'ACORA', 169),
(1662, 'AMANTANI', 169),
(1663, 'ATUNCOLLA', 169),
(1664, 'CAPACHICA', 169),
(1665, 'CHUCUITO', 169),
(1666, 'COATA', 169),
(1667, 'HUATA', 169),
(1668, 'MAYAZO', 169),
(1669, 'PAUCARCOLLA', 169),
(1670, 'PICHACANI', 169),
(1671, 'PLATERIA', 169),
(1672, 'PUNO', 169),
(1673, 'SAN ANTONIO', 169),
(1674, 'TIQUILLACA', 169),
(1675, 'VILQUE', 169),
(1676, 'ANANEA', 170),
(1677, 'PEDRO VILCA APAZA', 170),
(1678, 'PUTINA', 170),
(1679, 'QUILCAPUNCU', 170),
(1680, 'SINA', 170),
(1681, 'CABANA', 171),
(1682, 'CABANILLAS', 171),
(1683, 'CARACOTO', 171),
(1684, 'JULIACA', 171),
(1685, 'ALTO INAMBARI', 172),
(1686, 'CUYOCUYO', 172),
(1687, 'LIMBANI', 172),
(1688, 'PATAMBUCO', 172),
(1689, 'PHARA', 172),
(1690, 'QUIACA', 172),
(1691, 'SAN JUAN DEL ORO', 172),
(1692, 'SANDIA', 172),
(1693, 'YANAHUAYA', 172),
(1694, 'ANAPIA', 173),
(1695, 'COPANI', 173),
(1696, 'CUTURAPI', 173),
(1697, 'OLLARAYA', 173),
(1698, 'TINICACHI', 173),
(1699, 'UNICACHI', 173),
(1700, 'YUNGUYO', 173),
(1701, 'ALTO BIAVO', 174),
(1702, 'BAJO BIAVO', 174),
(1703, 'BELLAVISTA', 174),
(1704, 'HUALLAGA', 174),
(1705, 'SAN PABLO', 174),
(1706, 'SAN RAFAEL', 174),
(1707, 'AGUA BLANCA', 175),
(1708, 'SAN JOSE DE SISA', 175),
(1709, 'SAN MARTIN', 175),
(1710, 'SANTA ROSA', 175),
(1711, 'SHATOJA', 175),
(1712, 'ALTO SAPOSOA', 176),
(1713, 'EL ESLABON', 176),
(1714, 'PISCOYACU', 176),
(1715, 'SACANCHE', 176),
(1716, 'SAPOSOA', 176),
(1717, 'TINGO DE SAPOSOA', 176),
(1718, 'ALONSO DE ALVARADO', 177),
(1719, 'BARRANQUITA', 177),
(1720, 'CAYNARACHI', 177),
(1721, 'CUÑUMBUQUI', 177),
(1722, 'LAMAS', 177),
(1723, 'PINTO RECODO', 177),
(1724, 'RUMISAPA', 177),
(1725, 'SAN ROQUE DE CUMBAZA', 177),
(1726, 'SHANAO', 177),
(1727, 'TABALOSOS', 177),
(1728, 'ZAPATERO', 177),
(1729, 'CAMPANILLA', 178),
(1730, 'HUICUNGO', 178),
(1731, 'JUANJUI', 178),
(1732, 'PACHIZA', 178),
(1733, 'PAJARILLO', 178),
(1734, 'CALZADA', 179),
(1735, 'HABANA', 179),
(1736, 'JEPELACIO', 179),
(1737, 'MOYOBAMBA', 179),
(1738, 'SORITOR', 179),
(1739, 'YANTALO', 179),
(1740, 'BUENOS AIRES', 180),
(1741, 'CASPISAPA', 180),
(1742, 'PICOTA', 180),
(1743, 'PILLUANA', 180),
(1744, 'PUCACACA', 180),
(1745, 'SAN CRISTOBAL', 180),
(1746, 'SAN HILARION', 180),
(1747, 'SHAMBOYACU', 180),
(1748, 'TINGO DE PONASA', 180),
(1749, 'TRES UNIDOS', 180),
(1750, 'AWAJUN', 181),
(1751, 'ELIAS SOPLIN VARGAS', 181),
(1752, 'NUEVA CAJAMARCA', 181),
(1753, 'PARDO MIGUEL', 181),
(1754, 'POSIC', 181),
(1755, 'RIOJA', 181),
(1756, 'SAN FERNANDO', 181),
(1757, 'YORONGOS', 181),
(1758, 'YURACYACU', 181),
(1759, 'ALBERTO LEVEAU', 182),
(1760, 'CACATACHI', 182),
(1761, 'CHAZUTA', 182),
(1762, 'CHIPURANA', 182),
(1763, 'EL PORVENIR', 182),
(1764, 'HUIMBAYOC', 182),
(1765, 'JUAN GUERRA', 182),
(1766, 'LA BANDA DE SHILCAYO', 182),
(1767, 'MORALES', 182),
(1768, 'PAPAPLAYA', 182),
(1769, 'SAN ANTONIO', 182),
(1770, 'SAUCE', 182),
(1771, 'SHAPAJA', 182),
(1772, 'TARAPOTO', 182),
(1773, 'NUEVO PROGRESO', 183),
(1774, 'POLVORA', 183),
(1775, 'SHUNTE', 183),
(1776, 'TOCACHE', 183),
(1777, 'UCHIZA', 183),
(1778, 'CAIRANI', 184),
(1779, 'CAMILACA', 184),
(1780, 'CANDARAVE', 184),
(1781, 'CURIBAYA', 184),
(1782, 'HUANUARA', 184),
(1783, 'QUILAHUANI', 184),
(1784, 'ILABAYA', 185),
(1785, 'ITE', 185),
(1786, 'LOCUMBA', 185),
(1787, 'ALTO DE LA ALIANZA', 186),
(1788, 'CALANA', 186),
(1789, 'CIUDAD NUEVA', 186),
(1790, 'GREGORIO ALBARRACIN LANCHIPA', 186),
(1791, 'INCLAN', 186),
(1792, 'PACHIA', 186),
(1793, 'PALCA', 186),
(1794, 'POCOLLAY', 186),
(1795, 'SAMA', 186),
(1796, 'TACNA', 186),
(1797, 'ESTIQUE', 187),
(1798, 'ESTIQUE-PAMPA', 187),
(1799, 'HEROES ALBARRACIN', 187),
(1800, 'SITAJARA', 187),
(1801, 'SUSAPAYA', 187),
(1802, 'TARATA', 187),
(1803, 'TARUCACHI', 187),
(1804, 'TICACO', 187),
(1805, 'CASITAS', 188),
(1806, 'ZORRITOS', 188),
(1807, 'CORRALES', 189),
(1808, 'LA CRUZ', 189),
(1809, 'PAMPAS DE HOSPITAL', 189),
(1810, 'SAN JACINTO', 189),
(1811, 'SAN JUAN DE LA VIRGEN', 189),
(1812, 'TUMBES', 189),
(1813, 'AGUAS VERDES', 190),
(1814, 'MATAPALO', 190),
(1815, 'PAPAYAL', 190),
(1816, 'ZARUMILLA', 190),
(1817, 'RAYMONDI', 191),
(1818, 'SEPAHUA', 191),
(1819, 'TAHUANIA', 191),
(1820, 'YURUA', 191),
(1821, 'CALLERIA', 192),
(1822, 'CAMPOVERDE', 192),
(1823, 'IPARIA', 192),
(1824, 'MASISEA', 192),
(1825, 'NUEVA REQUENA', 192),
(1826, 'YARINACOCHA', 192),
(1827, 'CURIMANA', 193),
(1828, 'IRAZOLA', 193),
(1829, 'PADRE ABAD', 193),
(1830, 'PURUS', 194);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `codEmpleado` int(11) NOT NULL,
  `codUsuario` int(11) NOT NULL,
  `codigoCedepas` varchar(50) NOT NULL,
  `nombres` varchar(300) NOT NULL,
  `apellidos` varchar(300) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `dni` char(8) NOT NULL,
  `codPuesto` int(11) NOT NULL,
  `activo` int(11) NOT NULL,
  `fechaRegistro` date NOT NULL,
  `fechaDeBaja` date DEFAULT NULL,
  `codSede` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`codEmpleado`, `codUsuario`, `codigoCedepas`, `nombres`, `apellidos`, `correo`, `dni`, `codPuesto`, `activo`, `fechaRegistro`, `fechaDeBaja`, `codSede`) VALUES
(0, 0, 'E0000', 'admin', 'admin', 'admin@maracsoft.com', '71208489', 1, 1, '2021-03-09', '2021-03-19', 1),
(1, 1, 'E0428', 'FAUSTO GILMER', 'ALARCON ROJAS', 'falarcon@cedepas.org.pe', '40556946', 4, 1, '2021-03-29', '2060-03-29', 0),
(2, 2, 'E0727', 'PAULA', 'ALIAGA RODRIGUEZ', 'paliaga@cedepas.org.pe', '46636006', 4, 1, '2021-03-29', '2060-03-29', 0),
(3, 3, 'E0668', 'GIANLUIGUI BRYAN', 'ALVARADO VELIZ', 'galvarado@cedepas.org.pe', '47541289', 4, 1, '2021-03-29', '2060-03-29', 0),
(4, 4, 'E0004', 'ANA CECILIA', 'ANGULO ALVA', 'aangulo@cedepas.org.pe', '26682689', 1, 1, '2021-03-29', '2060-03-29', 0),
(5, 5, 'E0306', 'JANET', 'APAESTEGUI BUSTAMANTE', 'japaestegui@cedepas.org.pe', '41943357', 4, 1, '2021-03-29', '2060-03-29', 0),
(6, 6, 'E0674', 'HUBERT RICHARD', 'APARCO HUAMAN', 'raparco@cedepas.org.pe', '43485279', 4, 1, '2021-03-29', '2060-03-29', 0),
(7, 7, 'E0435', 'JUDITH VERONICA', 'AVILA JORGE', 'javila@cedepas.org.pe', '42090409', 4, 1, '2021-03-29', '2060-03-29', 0),
(8, 8, 'E0726', 'MERY JAHAIRA', 'BENITES OBESO', 'mbenites@cedepas.org.pe', '44847934', 1, 1, '2021-03-29', '2060-03-29', 0),
(9, 9, 'E0149', 'MARYCRUZ ROCÍO', 'BRIONES ORDOÑEZ', 'mbriones@cedepas.org.pe', '26682687', 3, 1, '2021-03-29', '2060-03-29', 0),
(10, 10, 'E0103', 'MELVA VIRGINIA', 'CABRERA TEJADA', 'mcabrera@cedepas.org.pe', '17914644', 4, 1, '2021-03-29', '2060-03-29', 0),
(11, 11, 'E0729', 'HINDIRA KATERINE', 'CASTAÑEDA ALFARO', 'hcastaneda@cedepas.org.pe', '70355561', 2, 1, '2021-03-29', '2060-03-29', 0),
(12, 12, 'E0787', 'WILSON EDGAR', 'COTRINA MEGO', 'wcotrina@cedepas.org.pe', '70585629', 1, 1, '2021-03-29', '2060-03-29', 0),
(13, 13, 'E0267', 'ROXANA MELISSA', 'DONET PAREDES', 'mdonet@cedepas.org.pe', '44685699', 1, 1, '2021-03-29', '2060-03-29', 0),
(14, 14, 'E0075', 'SANTOS ROSARIO', 'ESCOBEDO SANCHEZ', 'sescobedo@cedepas.org.pe', '19327774', 1, 1, '2021-03-29', '2060-03-29', 0),
(15, 15, 'E0177', 'JACQUELINE', 'GARCIA ESPINOZA', 'jgarcia@cedepas.org.pe', '40360154', 3, 1, '2021-03-29', '2060-03-29', 0),
(16, 16, 'E0716', 'GABY SHARON', 'HUANCA MAMANI', 'gshuanca@cedepas.org.pe', '45740336', 4, 1, '2021-03-29', '2060-03-29', 0),
(17, 17, 'E0677', 'CARLOS RICARDO', 'LEON LUTGARDO', 'cleon@cedepas.org.pe', '15738099', 2, 1, '2021-03-29', '2060-03-29', 0),
(18, 18, 'E0269', 'JUAN CARLOS', 'LEON SAUCEDO', 'jleon@cedepas.org.pe', '19330869', 4, 1, '2021-03-29', '2060-03-29', 0),
(19, 19, 'E0679', 'CRISTELL FRANCCESCA', 'LINO ZANONI', 'clino@cedepas.org.pe', '74240802', 4, 1, '2021-03-29', '2060-03-29', 0),
(20, 20, 'E0718', 'EDWAR LUIS', 'LIZARRAGA ALVAREZ', 'elizarraga@cedepas.org.pe', '70386230', 4, 1, '2021-03-29', '2060-03-29', 0),
(21, 21, 'E0641', 'CYNTHIA ESPERANZA', 'LOPEZ PRADO', 'clopez@cedepas.org.pe', '42927000', 4, 1, '2021-03-29', '2060-03-29', 0),
(22, 22, 'E0286', 'ROSSMERY LUZ', 'MARTINEZ OBANDO', 'rmartinez@cedepas.org.pe', '42305800', 4, 1, '2021-03-29', '2060-03-29', 0),
(23, 23, 'E0454', 'CARMEN CECILIA', 'MOLLEAPASA PASTOR', 'cmolleapasa@cedepas.org.pe', '15766143', 3, 1, '2021-03-29', '2060-03-29', 0),
(24, 24, 'E0612', 'CAROLYN LILIANA', 'MORENO PEREZ', 'cmoreno@cedepas.org.pe', '45540460', 4, 1, '2021-03-29', '2060-03-29', 0),
(25, 25, 'E0703', 'KELY EUSEBIA', 'MULLER TITO', 'kmuller@cedepas.org.pe', '45372425', 4, 1, '2021-03-29', '2060-03-29', 0),
(26, 26, 'E0195', 'SEGUNDO EDGARDO', 'OBANDO PINTADO', 'sobando@cedepas.org.pe', '3120627', 1, 1, '2021-03-29', '2060-03-29', 0),
(27, 27, 'E0721', 'ELVIS', 'ORRILLO MAYTA', 'eorillo@cedepas.org.pe', '45576187', 4, 1, '2021-03-29', '2060-03-29', 0),
(28, 28, 'E0159', 'SANTOS ABELARDO', 'PEREDA LUIS', 'spereda@cedepas.org.pe', '17877014', 4, 1, '2021-03-29', '2060-03-29', 0),
(29, 29, 'E0397', 'KARLHOS MARCO', 'QUINDE RODRIGUEZ', 'kquinde@cedepas.org.pe', '2897932', 1, 1, '2021-03-29', '2060-03-29', 0),
(30, 30, 'E0510', 'MILAGROS', 'QUIROZ TORREJON', 'mquiroz@cedepas.org.pe', '44155217', 1, 1, '2021-03-29', '2060-03-29', 0),
(31, 31, 'E0084', 'RONY AQUILES', 'RODRIGUEZ ROMERO', 'rrodriguez@cedepas.org.pe', '18175358', 4, 1, '2021-03-29', '2060-03-29', 0),
(32, 32, 'E0181', 'DANIEL', 'RODRIGUEZ RUIZ', 'drodriguez@cedepas.org.pe', '40068481', 4, 1, '2021-03-29', '2060-03-29', 0),
(33, 33, 'E0063', 'JANET JACQUELINE', 'ROJAS GONZALEZ', 'jrojas@cedepas.org.pe', '18126610', 2, 1, '2021-03-29', '2060-03-29', 0),
(34, 34, 'E0593', 'RICHARD JAVIER', 'ROSILLO ASTUDILLO', 'rrosillo@cedepas.org.pe', '43162714', 4, 1, '2021-03-29', '2060-03-29', 0),
(35, 35, 'E0390', 'TANIA JULISSA', 'RUIZ CORNEJO', 'truiz@cedepas.org.pe', '40392458', 2, 1, '2021-03-29', '2060-03-29', 0),
(36, 36, 'E0092', 'CINTHIA CAROLYN', 'SANCHEZ RAMIREZ', 'csanchez@cedepas.org.pe', '40242073', 3, 1, '2021-03-29', '2060-03-29', 0),
(37, 37, 'E0524', 'NELIDA RICARDINA', 'SERIN CRUZADO', 'nserin@cedepas.org.pe', '40994213', 3, 1, '2021-03-29', '2060-03-29', 0),
(38, 38, 'E0704', 'JUAN CARLOS', 'SILVA COTRINA', 'jsilva@cedepas.org.pe', '42122048', 4, 1, '2021-03-29', '2060-03-29', 0),
(39, 39, 'E0568', 'JUANA ROSA', 'URIOL VILLALOBOS', 'juriol@cedepas.org.pe', '44896824', 4, 1, '2021-03-29', '2060-03-29', 0),
(40, 40, 'E0763', 'CARLOS ANIBAL', 'VILCA CHAVEZ', 'cvilca@cedepas.org.pe', '46352412', 4, 1, '2021-03-29', '2060-03-29', 0),
(41, 41, 'E0765', 'JAVIER OSMAR', 'VILLENA RAMOS', 'jvillena@cedepas.org.pe', '43953715', 4, 1, '2021-03-29', '2060-03-29', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidad_financiera`
--

CREATE TABLE `entidad_financiera` (
  `codEntidadFinanciera` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entidad_financiera`
--

INSERT INTO `entidad_financiera` (`codEntidadFinanciera`, `nombre`) VALUES
(1, 'Manos Unidas por siempre'),
(2, 'Estado Peruano'),
(3, 'manos 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `error_historial`
--

CREATE TABLE `error_historial` (
  `codErrorHistorial` int(11) NOT NULL,
  `codEmpleado` int(11) NOT NULL,
  `controllerDondeOcurrio` varchar(100) NOT NULL,
  `funcionDondeOcurrio` varchar(200) NOT NULL,
  `fechaHora` datetime NOT NULL,
  `ipEmpleado` varchar(40) NOT NULL,
  `descripcionError` varchar(25000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `error_historial`
--

INSERT INTO `error_historial` (`codErrorHistorial`, `codEmpleado`, `controllerDondeOcurrio`, `funcionDondeOcurrio`, `fechaHora`, `ipEmpleado`, `descripcionError`) VALUES
(6, 0, 'RequerimientoBSController', 'index', '2021-04-25 15:45:22', '127.0.0.1', 'Exception: No se ingresó ningún item. in C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Controllers\\RequerimientoBSController.php:147\nStack trace:\n#0 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\RequerimientoBSController->store(Object(Illuminate\\Http\\Request))\n#1 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'store\', Array)\n#2 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(239): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\RequerimientoBSController), \'store\')\n#3 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(196): Illuminate\\Routing\\Route->runController()\n#4 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(685): Illuminate\\Routing\\Route->run()\n#5 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#6 C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Middleware\\ValidarSesion.php(18): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#7 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): App\\Http\\Middleware\\ValidarSesion->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#8 C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Middleware\\Mantenimiento.php(24): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#9 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): App\\Http\\Middleware\\Mantenimiento->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#10 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#11 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#12 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(62): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#18 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(687): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(662): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#27 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(617): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\Cedepas\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Cedepas\\vendor\\fideloper\\proxy\\src\\TrustProxies.php(57): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Fideloper\\Proxy\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(140): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(109): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Cedepas\\public\\index.php(53): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\Cedepas\\server.php(21): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#47 {main}'),
(7, 0, 'RequerimientoBSController', 'store', '2021-04-25 16:19:32', '127.0.0.1', 'Exception: No se ingresó ningún item. in C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Controllers\\RequerimientoBSController.php:147\nStack trace:\n#0 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\RequerimientoBSController->store(Object(Illuminate\\Http\\Request))\n#1 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'store\', Array)\n#2 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(239): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\RequerimientoBSController), \'store\')\n#3 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(196): Illuminate\\Routing\\Route->runController()\n#4 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(685): Illuminate\\Routing\\Route->run()\n#5 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#6 C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Middleware\\ValidarSesion.php(18): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#7 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): App\\Http\\Middleware\\ValidarSesion->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#8 C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Middleware\\Mantenimiento.php(24): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#9 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): App\\Http\\Middleware\\Mantenimiento->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#10 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#11 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#12 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(62): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#18 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(687): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(662): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#27 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(617): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#29 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\Cedepas\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Cedepas\\vendor\\fideloper\\proxy\\src\\TrustProxies.php(57): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Fideloper\\Proxy\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(140): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#44 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(109): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Cedepas\\public\\index.php(53): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#46 C:\\xampp\\htdocs\\Cedepas\\server.php(21): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#47 {main}'),
(8, 11, 'ReposicionGastosController', 'contabilizar', '2021-04-25 23:12:29', '127.0.0.1', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\DetalleReposicionGastos] 121, 45, 2020-02-29, 125, asd, 6, 051, 1, 1, 0, 0 in C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:398\nStack trace:\n#0 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\ForwardsCalls.php(23): Illuminate\\Database\\Eloquent\\Builder->findOrFail(Array)\n#1 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1737): Illuminate\\Database\\Eloquent\\Model->forwardCallTo(Object(Illuminate\\Database\\Eloquent\\Builder), \'findOrFail\', Array)\n#2 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1749): Illuminate\\Database\\Eloquent\\Model->__call(\'findOrFail\', Array)\n#3 C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Controllers\\ReposicionGastosController.php(834): Illuminate\\Database\\Eloquent\\Model::__callStatic(\'findOrFail\', Array)\n#4 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\ReposicionGastosController->contabilizar(\'45*122\')\n#5 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'contabilizar\', Array)\n#6 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(239): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\ReposicionGastosController), \'contabilizar\')\n#7 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(196): Illuminate\\Routing\\Route->runController()\n#8 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(685): Illuminate\\Routing\\Route->run()\n#9 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#10 C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Middleware\\ValidarSesionContador.php(26): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#11 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): App\\Http\\Middleware\\ValidarSesionContador->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#12 C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Middleware\\ValidarSesion.php(18): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#13 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): App\\Http\\Middleware\\ValidarSesion->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 C:\\xampp\\htdocs\\Cedepas\\app\\Http\\Middleware\\Mantenimiento.php(24): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): App\\Http\\Middleware\\Mantenimiento->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(41): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(62): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#24 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(687): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(662): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#33 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(617): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#34 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#35 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(63): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 C:\\xampp\\htdocs\\Cedepas\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\xampp\\htdocs\\Cedepas\\vendor\\fideloper\\proxy\\src\\TrustProxies.php(57): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(167): Fideloper\\Proxy\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(140): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 C:\\xampp\\htdocs\\Cedepas\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(109): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 C:\\xampp\\htdocs\\Cedepas\\public\\index.php(53): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 C:\\xampp\\htdocs\\Cedepas\\server.php(21): require_once(\'C:\\\\xampp\\\\htdocs...\')\n#53 {main}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_rendicion_gastos`
--

CREATE TABLE `estado_rendicion_gastos` (
  `codEstadoRendicion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_rendicion_gastos`
--

INSERT INTO `estado_rendicion_gastos` (`codEstadoRendicion`, `nombre`) VALUES
(0, 'Momentaneo'),
(1, 'Creada'),
(2, 'Aprobada'),
(3, 'Contabilizada'),
(4, 'Observada'),
(5, 'Subsanada'),
(6, 'Rechazada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_reposicion_gastos`
--

CREATE TABLE `estado_reposicion_gastos` (
  `codEstadoReposicion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_reposicion_gastos`
--

INSERT INTO `estado_reposicion_gastos` (`codEstadoReposicion`, `nombre`) VALUES
(1, 'Creada'),
(2, 'Aprobada'),
(3, 'Abonada'),
(4, 'Contabilizada'),
(5, 'Observada'),
(6, 'Subsanada'),
(7, 'Rechazada'),
(8, 'Cancelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_requerimiento_bs`
--

CREATE TABLE `estado_requerimiento_bs` (
  `codEstadoRequerimiento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_requerimiento_bs`
--

INSERT INTO `estado_requerimiento_bs` (`codEstadoRequerimiento`, `nombre`) VALUES
(1, 'Creada'),
(2, 'Aprobada'),
(3, 'Atendida'),
(4, 'Contabilizada'),
(5, 'Observada'),
(6, 'Subsanada'),
(7, 'Rechazada'),
(8, 'Cancelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_solicitud_fondos`
--

CREATE TABLE `estado_solicitud_fondos` (
  `codEstadoSolicitud` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_solicitud_fondos`
--

INSERT INTO `estado_solicitud_fondos` (`codEstadoSolicitud`, `nombre`) VALUES
(1, 'Creada'),
(2, 'Aprobada'),
(3, 'Abonada'),
(4, 'Contabilizada'),
(5, 'Observada'),
(6, 'Subsanada'),
(7, 'Rechazada'),
(8, 'Cancelada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicador_objespecifico`
--

CREATE TABLE `indicador_objespecifico` (
  `codIndicadorObj` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `codObjEspecifico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `indicador_objespecifico`
--

INSERT INTO `indicador_objespecifico` (`codIndicadorObj`, `descripcion`, `codObjEspecifico`) VALUES
(1, 'este esr sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet', 2),
(3, 'eLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u', 4),
(5, 'AJSD JAJDAS ESTA ES MI DESCRIPCION DEL INDICADOR', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicador_resultado`
--

CREATE TABLE `indicador_resultado` (
  `codIndicadorResultado` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `codResultadoEsperado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `indicador_resultado`
--

INSERT INTO `indicador_resultado` (`codIndicadorResultado`, `descripcion`, `codResultadoEsperado`) VALUES
(1, 'viLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u', 1),
(2, 'daadmamsmdsamdas', 1),
(3, '5Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugar_ejecucion`
--

CREATE TABLE `lugar_ejecucion` (
  `codLugarEjecucion` int(11) NOT NULL,
  `codProyecto` int(11) NOT NULL,
  `codDistrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lugar_ejecucion`
--

INSERT INTO `lugar_ejecucion` (`codLugarEjecucion`, `codProyecto`, `codDistrito`) VALUES
(1, 1, 1189),
(5, 1, 1076);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `codMoneda` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `abreviatura` varchar(10) NOT NULL,
  `simbolo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`codMoneda`, `nombre`, `abreviatura`, `simbolo`) VALUES
(1, 'Soles', 'PEN', 'S/'),
(2, 'Dólares', 'USD', '$');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numeracion`
--

CREATE TABLE `numeracion` (
  `codNumeracion` int(11) NOT NULL,
  `nombreDocumento` varchar(50) NOT NULL,
  `año` smallint(6) NOT NULL,
  `numeroLibreActual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `numeracion`
--

INSERT INTO `numeracion` (`codNumeracion`, `nombreDocumento`, `año`, `numeroLibreActual`) VALUES
(1, 'Solicitud de Fondos', 2021, 8),
(2, 'Rendicion de Gastos', 2021, 5),
(3, 'Reposición de Gastos', 2021, 5),
(4, 'Requerimiento de Bienes y Servicios', 2021, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivo_especifico`
--

CREATE TABLE `objetivo_especifico` (
  `codObjEspecifico` int(11) NOT NULL,
  `descripcion` varchar(600) NOT NULL,
  `codProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `objetivo_especifico`
--

INSERT INTO `objetivo_especifico` (`codObjEspecifico`, `descripcion`, `codProyecto`) VALUES
(2, 'Lorem iuia consequuntu', 1),
(3, 'adaLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u', 1),
(4, 'Actividad 1.3: Investigación aplicada para el desarrollo de prototipos de productos con valor agregado derivados de las líneas de negocio priorizadas y potenciales de unidades productivas.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivo_estrategico_cedepas`
--

CREATE TABLE `objetivo_estrategico_cedepas` (
  `codObjetivoEstrategico` int(11) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `codPEI` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `objetivo_estrategico_cedepas`
--

INSERT INTO `objetivo_estrategico_cedepas` (`codObjetivoEstrategico`, `descripcion`, `codPEI`, `item`, `nombre`) VALUES
(10, 'objetivo asdadwadas jja wjdsa iada', 2, 0, ''),
(11, 'este es el plan de este gg 2020', 3, 0, ''),
(28, 'gaassssssssssssssssssss', 5, 0, ''),
(29, 'Hola 155adadadadda', 5, 0, ''),
(49, 'a', 6, 1, 'Ecologia'),
(50, 'adads', 6, 2, 'Sostenibilidad'),
(51, 'adssadadsdsa', 6, 3, 'Hembro'),
(54, 'ada', 7, 1, 'Nuevo pues'),
(55, 'ad', 7, 2, 'asd'),
(56, 'eLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u', 1, 1, 'adada'),
(57, 'Este es el primer obj estrategico de 2025', 4, 1, 'primero'),
(58, 'este es el segundo obj estrat', 4, 2, 'segundo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_estrategico_institucional`
--

CREATE TABLE `plan_estrategico_institucional` (
  `codPEI` int(11) NOT NULL,
  `añoInicio` int(11) NOT NULL,
  `añoFin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plan_estrategico_institucional`
--

INSERT INTO `plan_estrategico_institucional` (`codPEI`, `añoInicio`, `añoFin`) VALUES
(1, 2000, 2004),
(2, 2005, 2009),
(3, 2016, 2020),
(4, 2025, 2030),
(5, 2036, 2041),
(6, 2092, 2098),
(7, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poblacion_beneficiaria`
--

CREATE TABLE `poblacion_beneficiaria` (
  `codPoblacionBeneficiaria` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `codProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `poblacion_beneficiaria`
--

INSERT INTO `poblacion_beneficiaria` (`codPoblacionBeneficiaria`, `descripcion`, `codProyecto`) VALUES
(3, 'a sdja aj sdiajs diajs doaisjdoaijds as dads dsasd', 1),
(4, 'Los niños de las escuelas rurales de un país determinado que comprenden las edades entre 4 y 7 años y tienen síntomas de desnutrición.\r\n\r\nFuente: https://www.ejemplos.co/poblaciones/#ixzz6sgvu1vLe', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `codProvincia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `codDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`codProvincia`, `nombre`, `codDepartamento`) VALUES
(1, 'BAGUA', 1),
(2, 'BONGARA', 1),
(3, 'CHACHAPOYAS', 1),
(4, 'CONDORCANQUI', 1),
(5, 'LUYA', 1),
(6, 'RODRIGUEZ DE MENDOZA', 1),
(7, 'UTCUBAMBA', 1),
(8, 'AIJA', 2),
(9, 'ANTONIO RAYMONDI', 2),
(10, 'ASUNCION', 2),
(11, 'BOLOGNESI', 2),
(12, 'CARHUAZ', 2),
(13, 'CARLOS F.FITZCARRALD', 2),
(14, 'CASMA', 2),
(15, 'CORONGO', 2),
(16, 'HUARAZ', 2),
(17, 'HUARI', 2),
(18, 'HUARMEY', 2),
(19, 'HUAYLAS', 2),
(20, 'MARISCAL LUZURIAGA', 2),
(21, 'OCROS', 2),
(22, 'PALLASCA', 2),
(23, 'POMABAMBA', 2),
(24, 'RECUAY', 2),
(25, 'SANTA', 2),
(26, 'SIHUAS', 2),
(27, 'YUNGAY', 2),
(28, 'ABANCAY', 3),
(29, 'ANDAHUAYLAS', 3),
(30, 'ANTABAMBA', 3),
(31, 'AYMARAES', 3),
(32, 'CHINCHEROS', 3),
(33, 'COTABAMBAS', 3),
(34, 'GRAU', 3),
(35, 'AREQUIPA', 4),
(36, 'CAMANA', 4),
(37, 'CARAVELI', 4),
(38, 'CASTILLA', 4),
(39, 'CAYLLOMA', 4),
(40, 'CONDESUYOS', 4),
(41, 'ISLAY', 4),
(42, 'LA UNION', 4),
(43, 'CANGALLO', 5),
(44, 'HUAMANGA', 5),
(45, 'HUANCA SANCOS', 5),
(46, 'HUANTA', 5),
(47, 'LA MAR', 5),
(48, 'LUCANAS', 5),
(49, 'PARINACOCHAS', 5),
(50, 'PAUCAR DEL SARA SARA', 5),
(51, 'SUCRE', 5),
(52, 'VICTOR FAJARDO', 5),
(53, 'VILCASHUAMAN', 5),
(54, 'CAJABAMBA', 6),
(55, 'CAJAMARCA', 6),
(56, 'CELENDIN', 6),
(57, 'CHOTA', 6),
(58, 'CONTUMAZA', 6),
(59, 'CUTERVO', 6),
(60, 'HUALGAYOC', 6),
(61, 'JAEN', 6),
(62, 'SAN IGNACIO', 6),
(63, 'SAN MARCOS', 6),
(64, 'SAN MIGUEL', 6),
(65, 'SAN PABLO', 6),
(66, 'SANTA CRUZ', 6),
(67, 'ACOMAYO', 7),
(68, 'ANTA', 7),
(69, 'CALCA', 7),
(70, 'CANAS', 7),
(71, 'CANCHIS', 7),
(72, 'CHUMBIVILCAS', 7),
(73, 'CUSCO', 7),
(74, 'ESPINAR', 7),
(75, 'LA CONVENCION', 7),
(76, 'PARURO', 7),
(77, 'PAUCARTAMBO', 7),
(78, 'QUISPICANCHI', 7),
(79, 'URUBAMBA', 7),
(80, 'ACOBAMBA', 8),
(81, 'ANGARAES', 8),
(82, 'CASTROVIRREYNA', 8),
(83, 'CHURCAMPA', 8),
(84, 'HUANCAVELICA', 8),
(85, 'HUAYTARA', 8),
(86, 'TAYACAJA', 8),
(87, 'AMBO', 9),
(88, 'DOS DE MAYO', 9),
(89, 'HUACAYBAMBA', 9),
(90, 'HUAMALIES', 9),
(91, 'HUANUCO', 9),
(92, 'LAURICOCHA', 9),
(93, 'LEONCIO PRADO', 9),
(94, 'MARAÑON', 9),
(95, 'PACHITEA', 9),
(96, 'PUERTO INCA', 9),
(97, 'YAROWILCA', 9),
(98, 'CHINCHA', 10),
(99, 'ICA', 10),
(100, 'NAZCA', 10),
(101, 'PALPA', 10),
(102, 'PISCO', 10),
(103, 'CHANCHAMAYO', 11),
(104, 'CHUPACA', 11),
(105, 'CONCEPCION', 11),
(106, 'HUANCAYO', 11),
(107, 'JAUJA', 11),
(108, 'JUNIN', 11),
(109, 'SATIPO', 11),
(110, 'TARMA', 11),
(111, 'YAULI', 11),
(112, 'ASCOPE', 12),
(113, 'BOLIVAR', 12),
(114, 'CHEPEN', 12),
(115, 'GRAN CHIMU', 12),
(116, 'JULCAN', 12),
(117, 'OTUZCO', 12),
(118, 'PACASMAYO', 12),
(119, 'PATAZ', 12),
(120, 'SANCHEZ CARRION', 12),
(121, 'SANTIAGO DE CHUCO', 12),
(122, 'TRUJILLO', 12),
(123, 'VIRU', 12),
(124, 'CHICLAYO', 13),
(125, 'FERREÑAFE', 13),
(126, 'LAMBAYEQUE', 13),
(127, 'BARRANCA', 14),
(128, 'CAJATAMBO', 14),
(129, 'CALLAO', 14),
(130, 'CANTA', 14),
(131, 'CAÑETE', 14),
(132, 'HUARAL', 14),
(133, 'HUAROCHIRI', 14),
(134, 'HUAURA', 14),
(135, 'LIMA', 14),
(136, 'OYON', 14),
(137, 'YAUYOS', 14),
(138, 'ALTO AMAZONAS', 15),
(139, 'LORETO', 15),
(140, 'MARISCAL R.CASTILLA', 15),
(141, 'MAYNAS', 15),
(142, 'REQUENA', 15),
(143, 'UCAYALI', 15),
(144, 'MANU', 16),
(145, 'TAHUAMANU', 16),
(146, 'TAMBOPATA', 16),
(147, 'GENERAL SANCHEZ CERRO', 17),
(148, 'ILO', 17),
(149, 'MARISCAL NIETO', 17),
(150, 'DANIEL ALCIDES CARRION', 18),
(151, 'OXAPAMPA', 18),
(152, 'PASCO', 18),
(153, 'AYABACA', 19),
(154, 'HUANCABAMBA', 19),
(155, 'MORROPON', 19),
(156, 'PAITA', 19),
(157, 'PIURA', 19),
(158, 'SECHURA', 19),
(159, 'SULLANA', 19),
(160, 'TALARA', 19),
(161, 'AZANGARO', 20),
(162, 'CARABAYA', 20),
(163, 'CHUCUITO', 20),
(164, 'EL COLLAO', 20),
(165, 'HUANCANE', 20),
(166, 'LAMPA', 20),
(167, 'MELGAR', 20),
(168, 'MOHO', 20),
(169, 'PUNO', 20),
(170, 'SAN ANTONIO DE PUTINA', 20),
(171, 'SAN ROMAN', 20),
(172, 'SANDIA', 20),
(173, 'YUNGUYO', 20),
(174, 'BELLAVISTA', 21),
(175, 'EL DORADO', 21),
(176, 'HUALLAGA', 21),
(177, 'LAMAS', 21),
(178, 'MARISCAL CACERES', 21),
(179, 'MOYOBAMBA', 21),
(180, 'PICOTA', 21),
(181, 'RIOJA', 21),
(182, 'SAN MARTIN', 21),
(183, 'TOCACHE', 21),
(184, 'CANDARAVE', 22),
(185, 'JORGE BASADRE', 22),
(186, 'TACNA', 22),
(187, 'TARATA', 22),
(188, 'CONTRALMIRANTE VILLAR', 23),
(189, 'TUMBES', 23),
(190, 'ZARUMILLA', 23),
(191, 'ATALAYA', 24),
(192, 'CORONEL PORTILLO', 24),
(193, 'PADRE ABAD', 24),
(194, 'PURUS', 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `codProyecto` int(11) NOT NULL,
  `codigoPresupuestal` varchar(5) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `codEmpleadoDirector` int(11) DEFAULT NULL,
  `activo` tinyint(4) NOT NULL,
  `codSedePrincipal` int(11) DEFAULT NULL,
  `nombreLargo` varchar(300) DEFAULT NULL,
  `codEntidadFinanciera` int(11) NOT NULL,
  `codPEI` int(11) NOT NULL,
  `objetivoGeneral` varchar(500) NOT NULL,
  `fechaInicio` date NOT NULL,
  `importePresupuestoTotal` float NOT NULL,
  `importeContrapartidaCedepas` float NOT NULL,
  `importeContrapartidaPoblacionBeneficiaria` float NOT NULL,
  `importeContrapartidaOtros` float NOT NULL,
  `codMoneda` int(11) NOT NULL,
  `codTipoFinanciamiento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`codProyecto`, `codigoPresupuestal`, `nombre`, `codEmpleadoDirector`, `activo`, `codSedePrincipal`, `nombreLargo`, `codEntidadFinanciera`, `codPEI`, `objetivoGeneral`, `fechaInicio`, `importePresupuestoTotal`, `importeContrapartidaCedepas`, `importeContrapartidaPoblacionBeneficiaria`, `importeContrapartidaOtros`, `codMoneda`, `codTipoFinanciamiento`) VALUES
(1, '05', 'CONST.MEJORES PRACTICAS - EITI', 0, 1, 1, 'wawa', 2, 4, 'este es mi obj', '2021-02-05', 321, 2, 3, 4, 2, 3),
(2, '06', 'INCREM.CAPAC.SOC CIVIL - FORD', 0, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(3, '10', 'CONSULTORIAS III', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(4, '11', 'FONDOS ROTATORIOS LA LIBERTAD', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(5, '13', 'CONSULTORIAS NEXA', 12, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(6, '14', 'CONSULTORIAS RAURA MINSUR', 12, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(7, '16', 'BECAS-DESCO', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(8, '25', 'SHAHUINDO CUYES Y PALTAS', 4, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(9, '26', 'MEJ.CADENA VALOR CUYES', 4, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(10, '27', 'MEJ. SEGURIDAD ALIMENTARIA', 4, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(11, '28', 'MEJ. SEGURIDAD ALIMENTARIA 3', 4, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(12, '29', 'CONSULTORIAS VARIAS CAJAMARCA', 4, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(13, '37', 'RIMISP', 26, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(14, '43', 'CADENA DE BANANO ORGANICO', 26, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(15, '44', 'CONTRAP. PROD.COMERCIO Y SERV.', 26, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(16, '45', 'CONTRAP.LINEA AGROIN.INNOVADORA', 26, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(17, '46', 'AUTOFINANCIAMIENTO PIURA', 26, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(18, '48', 'NUEVA LINEA AGROIN.INNOVADORA', 29, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(19, '54', 'PLAN ESTRATEGICO IV', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(20, '58', 'DEVOLUCION IGV LA LIBERTAD', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(21, '59', 'PROYECTO CON MANOS UNIDAS', 8, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(22, '65', 'CITE III', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(23, '71', 'MEJ.CADENA PROD.QUINUA', 4, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(24, '74', 'MEJ. SEGURIDAD ALIMENTARIA 2', 4, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(25, '77', 'CONSULTORIAS LAREDO', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(26, '80', 'AUTOFINANCIAMIENTO CAJAMARCA', 4, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(27, '81', 'AUTOFINANCIAMIENTO LA LIBERTAD', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(28, '83', 'CONTRAPARTIDA CITE III', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(29, '86', 'BRECHAS GENERO-FOREST', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(30, '87', 'DIPLOMADOS', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(31, '88', 'VIVERO SAN JOSE', 13, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(32, '89', 'PY. FORESTAL SANTA CRUZ', 14, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(33, '90', 'PROGRAMA MAD', 14, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(34, '91', 'CONSOLIDACION COOPANORTE', 14, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(35, '92', 'PROG.SERV.AGROP.MINERODUCTO', 14, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(36, '93', 'CRIANZA DE ANIMALES MENORES JUPROG', 14, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(37, '94', 'PY. PRODUCTIVO CHIQUIHUANCA', 14, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(38, '95', 'PLAN CAP.LIDERES EN JUSTICIA FISCAL', 0, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(39, '96', 'AUTOFINANCIAMIENTO GPC LIMA', 0, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(40, '97', 'MEJ.FAMILIAS BOLOGNESI ANTAMINA', 14, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0),
(41, '98', 'PART.CIUD.RECONST.GOBERNANZA Y OTROS', 0, 1, 1, 'x', 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_contador`
--

CREATE TABLE `proyecto_contador` (
  `codProyectoContador` int(11) NOT NULL,
  `codEmpleadoContador` int(11) NOT NULL,
  `codProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto_contador`
--

INSERT INTO `proyecto_contador` (`codProyectoContador`, `codEmpleadoContador`, `codProyecto`) VALUES
(167, 11, 1),
(168, 17, 1),
(169, 33, 1),
(170, 35, 1),
(171, 11, 2),
(172, 17, 2),
(173, 33, 2),
(174, 35, 2),
(175, 11, 3),
(176, 17, 3),
(177, 33, 3),
(178, 35, 3),
(179, 11, 4),
(180, 17, 4),
(181, 33, 4),
(182, 35, 4),
(183, 11, 5),
(184, 17, 5),
(185, 33, 5),
(186, 35, 5),
(187, 11, 6),
(188, 17, 6),
(189, 33, 6),
(190, 35, 6),
(191, 11, 7),
(192, 17, 7),
(193, 33, 7),
(194, 35, 7),
(195, 11, 8),
(196, 17, 8),
(197, 33, 8),
(198, 35, 8),
(199, 11, 9),
(200, 17, 9),
(201, 33, 9),
(202, 35, 9),
(203, 11, 10),
(204, 17, 10),
(205, 33, 10),
(206, 35, 10),
(207, 11, 11),
(208, 17, 11),
(209, 33, 11),
(210, 35, 11),
(211, 11, 12),
(212, 17, 12),
(213, 33, 12),
(214, 35, 12),
(215, 11, 13),
(216, 17, 13),
(217, 33, 13),
(218, 35, 13),
(219, 11, 14),
(220, 17, 14),
(221, 33, 14),
(222, 35, 14),
(223, 11, 15),
(224, 17, 15),
(225, 33, 15),
(226, 35, 15),
(227, 11, 16),
(228, 17, 16),
(229, 33, 16),
(230, 35, 16),
(231, 11, 17),
(232, 17, 17),
(233, 33, 17),
(234, 35, 17),
(235, 11, 18),
(236, 17, 18),
(237, 33, 18),
(238, 35, 18),
(239, 11, 19),
(240, 17, 19),
(241, 33, 19),
(242, 35, 19),
(243, 11, 20),
(244, 17, 20),
(245, 33, 20),
(246, 35, 20),
(247, 11, 21),
(248, 17, 21),
(249, 33, 21),
(250, 35, 21),
(251, 11, 22),
(252, 17, 22),
(253, 33, 22),
(254, 35, 22),
(255, 11, 23),
(256, 17, 23),
(257, 33, 23),
(258, 35, 23),
(259, 11, 24),
(260, 17, 24),
(261, 33, 24),
(262, 35, 24),
(263, 11, 25),
(264, 17, 25),
(265, 33, 25),
(266, 35, 25),
(267, 11, 26),
(268, 17, 26),
(269, 33, 26),
(270, 35, 26),
(271, 11, 27),
(272, 17, 27),
(273, 33, 27),
(274, 35, 27),
(275, 11, 28),
(276, 17, 28),
(277, 33, 28),
(278, 35, 28),
(279, 11, 29),
(280, 17, 29),
(281, 33, 29),
(282, 35, 29),
(283, 11, 30),
(284, 17, 30),
(285, 33, 30),
(286, 35, 30),
(287, 11, 31),
(288, 17, 31),
(289, 33, 31),
(290, 35, 31),
(291, 11, 32),
(292, 17, 32),
(293, 33, 32),
(294, 35, 32),
(295, 11, 33),
(296, 17, 33),
(297, 33, 33),
(298, 35, 33),
(299, 11, 34),
(300, 17, 34),
(301, 33, 34),
(302, 35, 34),
(303, 11, 35),
(304, 17, 35),
(305, 33, 35),
(306, 35, 35),
(307, 11, 36),
(308, 17, 36),
(309, 33, 36),
(310, 35, 36),
(311, 11, 37),
(312, 17, 37),
(313, 33, 37),
(314, 35, 37),
(315, 11, 38),
(316, 17, 38),
(317, 33, 38),
(318, 35, 38),
(319, 11, 39),
(320, 17, 39),
(321, 33, 39),
(322, 35, 39),
(323, 11, 40),
(324, 17, 40),
(325, 33, 40),
(326, 35, 40),
(327, 11, 41),
(328, 17, 41),
(329, 33, 41),
(330, 35, 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `codPuesto` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puesto`
--

INSERT INTO `puesto` (`codPuesto`, `nombre`, `estado`) VALUES
(0, 'Admin sistema', 0),
(1, 'Gerente', 0),
(2, 'Contador', 0),
(3, 'Administrador', 0),
(4, 'Empleado', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_proyecto_objestrategicos`
--

CREATE TABLE `relacion_proyecto_objestrategicos` (
  `codRelacion` int(11) NOT NULL,
  `codObjetivoEstrategico` int(11) NOT NULL,
  `codProyecto` int(11) NOT NULL,
  `porcentajeDeAporte` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `relacion_proyecto_objestrategicos`
--

INSERT INTO `relacion_proyecto_objestrategicos` (`codRelacion`, `codObjetivoEstrategico`, `codProyecto`, `porcentajeDeAporte`) VALUES
(2, 49, 6, 0),
(3, 50, 6, 0),
(4, 51, 6, 0),
(6, 49, 6, 0),
(7, 50, 6, 0),
(8, 51, 6, 0),
(9, 28, 5, 0),
(10, 29, 5, 0),
(21, 57, 1, 40),
(22, 58, 1, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rendicion_gastos`
--

CREATE TABLE `rendicion_gastos` (
  `codRendicionGastos` int(11) NOT NULL,
  `codSolicitud` int(11) NOT NULL,
  `codMoneda` int(11) NOT NULL,
  `codigoCedepas` varchar(50) NOT NULL,
  `totalImporteRecibido` float DEFAULT NULL,
  `totalImporteRendido` float DEFAULT NULL,
  `saldoAFavorDeEmpleado` float DEFAULT NULL,
  `resumenDeActividad` varchar(200) NOT NULL,
  `codEstadoRendicion` int(11) NOT NULL,
  `fechaHoraRendicion` datetime DEFAULT NULL,
  `fechaHoraRevisado` datetime DEFAULT NULL,
  `observacion` varchar(500) DEFAULT NULL,
  `codEmpleadoSolicitante` int(11) NOT NULL,
  `codEmpleadoEvaluador` int(11) DEFAULT NULL,
  `codEmpleadoContador` int(11) DEFAULT NULL,
  `cantArchivos` int(11) DEFAULT NULL,
  `terminacionesArchivos` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rendicion_gastos`
--

INSERT INTO `rendicion_gastos` (`codRendicionGastos`, `codSolicitud`, `codMoneda`, `codigoCedepas`, `totalImporteRecibido`, `totalImporteRendido`, `saldoAFavorDeEmpleado`, `resumenDeActividad`, `codEstadoRendicion`, `fechaHoraRendicion`, `fechaHoraRevisado`, `observacion`, `codEmpleadoSolicitante`, `codEmpleadoEvaluador`, `codEmpleadoContador`, `cantArchivos`, `terminacionesArchivos`) VALUES
(1, 1787, 1, 'REN21-000001', 512, 51, -461, 'ga', 3, '2021-04-21 18:15:33', '2021-04-23 12:26:32', NULL, 0, 0, 11, 2, 'xls/txt'),
(2, 1788, 1, 'REN21-000002', 125, 251, 126, 'da', 3, '2021-04-23 12:17:24', '2021-04-23 12:18:06', NULL, 0, 0, 11, 2, 'xls/txt'),
(4, 1789, 2, 'REN21-000003', 125, 5, -120, 'adsdsa', 2, '2021-04-23 15:17:19', '2021-04-25 22:25:20', '', 0, 0, NULL, 0, NULL),
(5, 1790, 2, 'REN21-000004', 125, 143, 18, 'adsasdasdsd asda sasasdsada', 3, '2021-04-25 23:19:14', '2021-04-25 23:19:45', NULL, 0, 0, 11, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reposicion_gastos`
--

CREATE TABLE `reposicion_gastos` (
  `codReposicionGastos` int(11) NOT NULL,
  `codEstadoReposicion` int(11) NOT NULL,
  `totalImporte` float DEFAULT NULL,
  `codProyecto` int(11) NOT NULL,
  `codMoneda` int(11) NOT NULL,
  `codigoCedepas` varchar(30) NOT NULL,
  `girarAOrdenDe` varchar(50) NOT NULL,
  `numeroCuentaBanco` varchar(100) NOT NULL,
  `codBanco` int(11) NOT NULL,
  `resumen` varchar(100) NOT NULL,
  `fechaHoraEmision` datetime NOT NULL,
  `codEmpleadoSolicitante` int(11) NOT NULL,
  `codEmpleadoEvaluador` int(11) DEFAULT NULL,
  `codEmpleadoAdmin` int(11) DEFAULT NULL,
  `codEmpleadoConta` int(11) DEFAULT NULL,
  `fechaHoraRevisionGerente` datetime DEFAULT NULL,
  `fechaHoraRevisionAdmin` datetime DEFAULT NULL,
  `fechaHoraRevisionConta` datetime DEFAULT NULL,
  `observacion` varchar(200) DEFAULT NULL,
  `cantArchivos` tinyint(4) DEFAULT NULL,
  `terminacionesArchivos` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reposicion_gastos`
--

INSERT INTO `reposicion_gastos` (`codReposicionGastos`, `codEstadoReposicion`, `totalImporte`, `codProyecto`, `codMoneda`, `codigoCedepas`, `girarAOrdenDe`, `numeroCuentaBanco`, `codBanco`, `resumen`, `fechaHoraEmision`, `codEmpleadoSolicitante`, `codEmpleadoEvaluador`, `codEmpleadoAdmin`, `codEmpleadoConta`, `fechaHoraRevisionGerente`, `fechaHoraRevisionAdmin`, `fechaHoraRevisionConta`, `observacion`, `cantArchivos`, `terminacionesArchivos`) VALUES
(39, 4, 55, 1, 1, 'REP21-000002', 'admin admin', '212', 1, '112ga', '2021-04-21 15:26:32', 0, 0, 0, 11, '2021-04-23 12:28:14', '2021-04-25 21:49:45', '2021-04-25 21:50:31', NULL, 1, 'jpg'),
(44, 1, 125, 3, 2, 'REP21-000003', 'admin admin', 'adsdsa', 2, 'ads', '2021-04-23 15:01:58', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(45, 4, 163, 1, 1, 'REP21-000004', 'admin admin', '152125', 1, 'asdsad', '2021-04-25 17:47:22', 0, 0, 0, 11, '2021-04-25 23:04:46', '2021-04-25 23:04:56', '2021-04-25 23:13:49', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimiento_bs`
--

CREATE TABLE `requerimiento_bs` (
  `codRequerimiento` int(11) NOT NULL,
  `codigoCedepas` varchar(30) NOT NULL,
  `fechaHoraEmision` datetime NOT NULL,
  `fechaHoraRevision` datetime DEFAULT NULL,
  `fechaHoraAtendido` datetime DEFAULT NULL,
  `fechaHoraConta` datetime DEFAULT NULL,
  `codEmpleadoSolicitante` int(11) NOT NULL,
  `codEmpleadoEvaluador` int(11) DEFAULT NULL,
  `codEmpleadoAdministrador` int(11) DEFAULT NULL,
  `codEmpleadoContador` int(11) DEFAULT NULL,
  `justificacion` varchar(300) NOT NULL,
  `codEstadoRequerimiento` int(11) NOT NULL,
  `cantArchivosEmp` tinyint(4) DEFAULT NULL,
  `nombresArchivosEmp` varchar(500) DEFAULT NULL,
  `cantArchivosAdmin` tinyint(4) DEFAULT NULL,
  `nombresArchivosAdmin` varchar(500) DEFAULT NULL,
  `codProyecto` int(11) NOT NULL,
  `observacion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `requerimiento_bs`
--

INSERT INTO `requerimiento_bs` (`codRequerimiento`, `codigoCedepas`, `fechaHoraEmision`, `fechaHoraRevision`, `fechaHoraAtendido`, `fechaHoraConta`, `codEmpleadoSolicitante`, `codEmpleadoEvaluador`, `codEmpleadoAdministrador`, `codEmpleadoContador`, `justificacion`, `codEstadoRequerimiento`, `cantArchivosEmp`, `nombresArchivosEmp`, `cantArchivosAdmin`, `nombresArchivosAdmin`, `codProyecto`, `observacion`) VALUES
(17, 'REQ21-000014', '2021-04-21 15:17:50', '2021-04-21 16:06:12', '2021-04-21 16:08:37', '2021-04-21 17:29:01', 31, 13, 15, 11, 'YARA', 4, 2, 'PLANTILLA CEDEPAS V16 (1).pdf/PLANTILLA CEDEPAS V16.pdf', 3, 'Marco Lógico- presupuesto.xls/PLANTILLA CEDEPAS V16 (1).pdf/Sistema Cedepas Empleados.xlsx', 3, 'no'),
(18, 'REQ21-000015', '2021-04-21 16:23:42', '2021-04-21 16:35:26', NULL, NULL, 31, 0, NULL, NULL, '552525252525', 5, 1, 'hqdefault.jpg', NULL, NULL, 1, 'esto esta mal'),
(19, 'REQ21-000016', '2021-04-21 16:38:05', '2021-04-21 16:49:22', '2021-04-23 15:49:05', NULL, 0, 0, 0, NULL, 'dsaads', 3, NULL, NULL, 1, NULL, 1, NULL),
(20, 'REQ21-000017', '2021-04-21 17:15:17', '2021-04-21 17:15:42', NULL, NULL, 0, 0, NULL, NULL, '05', 6, 1, 'hqdefault.jpg', NULL, NULL, 1, '456456'),
(21, 'REQ21-000018', '2021-04-21 17:16:14', '2021-04-21 17:16:34', NULL, NULL, 0, 0, NULL, NULL, '05', 7, 1, 'hqdefault.jpg', NULL, NULL, 1, NULL),
(22, 'REQ21-000019', '2021-04-21 17:37:06', '2021-04-21 17:42:28', NULL, NULL, 0, 0, NULL, NULL, '05', 6, 1, 'hqdefault.jpg', NULL, NULL, 1, '656516*65165*'),
(23, 'REQ21-000020', '2021-04-23 15:36:41', '2021-04-23 15:46:33', '2021-04-23 15:47:08', NULL, 0, 0, 0, NULL, 'adsdsadsa', 3, 1, '', 2, NULL, 1, NULL),
(24, 'REQ21-000021', '2021-04-25 15:37:05', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'asddsa', 1, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_esperado`
--

CREATE TABLE `resultado_esperado` (
  `codResultadoEsperado` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `codProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resultado_esperado`
--

INSERT INTO `resultado_esperado` (`codResultadoEsperado`, `descripcion`, `codProyecto`) VALUES
(1, 'hocto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntuá detras', 1),
(2, 'nucto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntu', 1),
(3, 'mim facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maximea', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `codSede` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`codSede`, `nombre`) VALUES
(1, 'Trujillo'),
(2, 'Cajamarca'),
(4, 'Lima'),
(5, 'Santiago de Chuco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_fondos`
--

CREATE TABLE `solicitud_fondos` (
  `codSolicitud` int(11) NOT NULL,
  `codProyecto` int(11) NOT NULL,
  `codigoCedepas` varchar(200) NOT NULL,
  `codEmpleadoSolicitante` int(11) NOT NULL,
  `fechaHoraEmision` datetime NOT NULL,
  `totalSolicitado` float DEFAULT NULL,
  `girarAOrdenDe` varchar(200) NOT NULL,
  `numeroCuentaBanco` varchar(200) NOT NULL,
  `codBanco` int(11) NOT NULL,
  `justificacion` varchar(500) DEFAULT NULL,
  `codEmpleadoEvaluador` int(11) DEFAULT NULL,
  `fechaHoraRevisado` datetime DEFAULT NULL,
  `codEstadoSolicitud` int(11) NOT NULL,
  `fechaHoraAbonado` datetime DEFAULT NULL,
  `observacion` varchar(300) DEFAULT NULL,
  `terminacionArchivo` varchar(10) DEFAULT NULL,
  `codEmpleadoAbonador` int(11) DEFAULT NULL,
  `estaRendida` int(11) DEFAULT '0',
  `codEmpleadoContador` int(11) DEFAULT NULL,
  `codMoneda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitud_fondos`
--

INSERT INTO `solicitud_fondos` (`codSolicitud`, `codProyecto`, `codigoCedepas`, `codEmpleadoSolicitante`, `fechaHoraEmision`, `totalSolicitado`, `girarAOrdenDe`, `numeroCuentaBanco`, `codBanco`, `justificacion`, `codEmpleadoEvaluador`, `fechaHoraRevisado`, `codEstadoSolicitud`, `fechaHoraAbonado`, `observacion`, `terminacionArchivo`, `codEmpleadoAbonador`, `estaRendida`, `codEmpleadoContador`, `codMoneda`) VALUES
(1786, 2, 'SOF21-000002', 31, '2021-04-21 15:32:52', 125, 'RONY AQUILES RODRIGUEZ ROMERO', '125215', 2, 'gaaa', 0, '2021-04-21 17:05:12', 3, '2021-04-23 15:08:38', '', NULL, 0, 0, NULL, 1),
(1787, 1, 'SOF21-000003', 0, '2021-04-21 16:57:21', 512, 'admin admin', '125152', 3, 'adsdsa', 0, '2021-04-21 17:07:40', 3, '2021-04-21 18:14:49', '', NULL, 0, 1, NULL, 1),
(1788, 2, 'SOF21-000004', 0, '2021-04-23 12:15:11', 125, 'admin admin', '214124 124 124214', 1, 'adsdsaas', 0, '2021-04-23 12:15:27', 3, '2021-04-23 12:15:53', '', NULL, 0, 1, NULL, 1),
(1789, 1, 'SOF21-000005', 0, '2021-04-23 15:07:44', 125, 'admin admin', '214124 124 124214', 2, 'adsdsa', 0, '2021-04-23 15:08:08', 3, '2021-04-23 15:08:36', '', NULL, 0, 1, NULL, 2),
(1790, 2, 'SOF21-000006', 0, '2021-04-23 15:07:57', 125, 'admin admin', 'adsdsa', 1, 'adsdsa', 0, '2021-04-23 15:08:10', 3, '2021-04-23 15:08:27', '', NULL, 0, 1, NULL, 2),
(1791, 2, 'SOF21-000007', 0, '2021-04-25 15:41:19', NULL, 'admin admin', '214124 124 124214', 2, 'adsdsa', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_financiamiento`
--

CREATE TABLE `tipo_financiamiento` (
  `codTipoFinanciamiento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_financiamiento`
--

INSERT INTO `tipo_financiamiento` (`codTipoFinanciamiento`, `nombre`) VALUES
(2, 'Cooperación Internacional'),
(3, 'Fondos Nacionales Estatales (Por Donación)'),
(4, 'Fondos Nacionales Estatales (Por Facturación)'),
(5, 'Fondos de la Empresa Privada (Por Donación)'),
(6, 'Fondos de la Empresa Privada (Por Facturación)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad_medida`
--

CREATE TABLE `unidad_medida` (
  `codUnidadMedida` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidad_medida`
--

INSERT INTO `unidad_medida` (`codUnidadMedida`, `nombre`) VALUES
(1, 'Cajas'),
(2, 'Botellas'),
(4, 'Sacos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codUsuario` bigint(20) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `isAdmin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codUsuario`, `usuario`, `password`, `isAdmin`) VALUES
(0, 'admin', '$2y$10$NT382fPkmou2YFXnAfN5V.DghGqNKhA5Ai/DycFWTIQ4dJKmlbXOu', 1),
(1, 'E0428', '$2y$10$YljPRsPhtw5WFBaTCASRT.Ir4oiJg.hnrr9HJMyTU7FkKL7s.0jPy', 0),
(2, 'E0727', '$2y$10$sOv11Z.pdA.VXT9F6xc9Vei8CDvTUyJzixcTCIoCpWNxQlu.bCpkK', 0),
(3, 'E0668', '$2y$10$/RWkviTNQUR74RtzV0/c/uU8b/VKUtpvID79T3CVIqUHLRWeXC3sa', 0),
(4, 'E0004', '$2y$10$6B2FMMXuOQr/yCDMkxALtuOuv7OQNx9waxIfoSNeLc5sWhu7Nh2Jm', 0),
(5, 'E0306', '$2y$10$0SEv392wFNwbh8pYLRRIruYxsYYqWTH8rA7057LTi4gRXP82Pps3G', 0),
(6, 'E0674', '$2y$10$mNsx4Ny6tEZPAF9x88Kbv.hq7UWz35IhrdrGplPaMYOXcT3WW2E3a', 0),
(7, 'E0435', '$2y$10$4K.niVIQpCVksBz6FYmWmeDR3PKWFrPw4//1OsyhkSmGsN7jXQsLG', 0),
(8, 'E0726', '$2y$10$uHX7suTvVYrJmnzGS3Wa6OBiMZOu9ljW6qsG8d5j0OGh/HmyR1Zhm', 0),
(9, 'E0149', '$2y$10$5FeSLEDosSWn0/RTRL9z.OU.MR/kiVPL1vgkznSxaviOQYhTirmg6', 0),
(10, 'E0103', '$2y$10$uc18NPQhQUOGiNJgFQQjVO1NiX5btQ4NF.b7CysAiLD.km04zOmwO', 0),
(11, 'E0729', '$2y$10$Qf.jyHOK3RBltzpEcdv7S.r/wkvAstoX732FfhagZmoTYpREUxhVi', 0),
(12, 'E0787', '$2y$10$iyOfwBFgn.JjWumsFXS2f.S1mLCQFxYgptQEmAsqhF6kJBw0IslAC', 0),
(13, 'E0267', '$2y$10$dX3mghlFuWa2odBaVzuAKOm4rmVq4jGqG7T21ASCsLnj3qZbmKCxS', 0),
(14, 'E0075', '$2y$10$dX8HbBBihyKcFWn3ewdNM.8afv.Ll3zysnkw3HVgrXYsbCIYiJ4fa', 0),
(15, 'E0177', '$2y$10$Yph54a54T6SpdD2Xees8TuRkaAXMnNxAACizg53.UmMIfc7ux2kr6', 0),
(16, 'E0716', '$2y$10$cNcVibkSDiUVy0ZV.TXgueai8dVV.DQnFiO6kfXjStUbg0D5CJHxq', 0),
(17, 'E0677', '$2y$10$NBB/fOD3wR2G.D3G3pWb1evFXDEyHY5LMVIAdGeJNDOXR14tTLgIC', 0),
(18, 'E0269', '$2y$10$sL5e/CIfFhAuTQS1aR83z.XFs7c1gGFToPYoKDpDouuRfMG7WtPvm', 0),
(19, 'E0679', '$2y$10$NCwDv0H4uL9zLGZIscZeO.Lv51Ub9j71zKa/9vpCf2/KSTxXv5Ms.', 0),
(20, 'E0718', '$2y$10$STVAzpu1XGTi28GrDFfxI.K22.y5CLXOOJc30kpyWIyVn1Jr2Lp3m', 0),
(21, 'E0641', '$2y$10$ljaiZxiP/oehs4.2HwjNmee0r04.ciNvJ6U1b2n9f1Fga8p.J2mf2', 0),
(22, 'E0286', '$2y$10$s1jzEZzLBq99YKLY3RtgB.K.RxPqLc5iaDBcA.eHC/f3zw9Tg7cLe', 0),
(23, 'E0454', '$2y$10$tY.2Q2kjnozcE0oX3r8bXuN35z4Anr/Io04gGKVbmYS5Ij376zeDO', 0),
(24, 'E0612', '$2y$10$zwhTljGfmgAHKoUOOtzLieFEeZtAIvxd97Ub8I4W9ekdut/uqfSV2', 0),
(25, 'E0703', '$2y$10$gmYvMJ2fLGeqS9fO1.f2U.Lo0A2kNynQq/orN5grK3wYDS7/aIirO', 0),
(26, 'E0195', '$2y$10$oKBtrWHq507UVIrrAIAaiOE/9jjRxuWiNTsrO/vpkIcn5Y19wnSUi', 0),
(27, 'E0721', '$2y$10$2Dwob02pPUCHAlchkzSaGOIaOv5p76.0.ELFhyQDotiZsTClNdB6m', 0),
(28, 'E0159', '$2y$10$TMqsur7Nc2CrVhsnxw2loOZVg4N0QE4qEzwOWKKebdeSkiiLWJkd6', 0),
(29, 'E0397', '$2y$10$eidazEzgCJEAsz1lC/RpNu8NE9wNtW4mWI76MVTflirCHylF42TBe', 0),
(30, 'E0510', '$2y$10$bXZpO0ZhEZNv/f4W2SOSWOGp72XCUOLXWdxktRIel7OscjCPBfOKq', 0),
(31, 'E0084', '$2y$10$b5q83QgZNtIPKMGy7fSTxeoCRLepBz0O.YE8eq/9GvTuE7lHdy5MW', 0),
(32, 'E0181', '$2y$10$ULX0VbX9LX.LPLTHdXmMOOXt48PkW/85ThPkvpAm6oTltU0JOEzOy', 0),
(33, 'E0063', '$2y$10$VtzXe24cViKh3SbGUPQbL.NG/st2qvFBwPGJGAbwbSJOfhHWKZOQW', 0),
(34, 'E0593', '$2y$10$lavJtTqVaoYCIYr80h8IJ.Ww6dCfvOvxb3edDLBgLSze9D626SjVO', 0),
(35, 'E0390', '$2y$10$N34EQDBFuVSvy1.17cugaOo00ZrCYA0FJeW52iNIwKWyl6sjNF2Zq', 0),
(36, 'E0092', '$2y$10$GL7c12QnyvCCQv.7Zr792O/inIWgTXQILMe.NgO1w3P9QbRLHmylq', 0),
(37, 'E0524', '$2y$10$xCxWWrMPKpw3lR2g7gk49eeP9ERpDD3YwritKzEzk/J7avKK.MHBO', 0),
(38, 'E0704', '$2y$10$kfRj/DV8FfcqF.PpS6Xnz./IzcrapZBRe.EHGcWdT5fnMneqdqMAu', 0),
(39, 'E0568', '$2y$10$va8ue1e/CGekWoQ6QrV/xOM5zbV6FYDD5fBhUJ9wGfzrbn9lgQYwy', 0),
(40, 'E0763', '$2y$10$lMi/qnv17ziI9Q2xVN0pKeiHZMkC/E4m2YqtQrhqf8oEWNOJa0L.S', 0),
(41, 'E0765', '$2y$10$4HA0tTZD/Y3/e26F7e6GreIlygUX/ULUZT2QpN3DoTcdhCmvPhk8a', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivo_proyecto`
--
ALTER TABLE `archivo_proyecto`
  ADD PRIMARY KEY (`codArchivoProyecto`);

--
-- Indices de la tabla `archivo_rend`
--
ALTER TABLE `archivo_rend`
  ADD PRIMARY KEY (`codArchivoRend`);

--
-- Indices de la tabla `archivo_repo`
--
ALTER TABLE `archivo_repo`
  ADD PRIMARY KEY (`codArchivoRepo`);

--
-- Indices de la tabla `archivo_req_admin`
--
ALTER TABLE `archivo_req_admin`
  ADD PRIMARY KEY (`codArchivoReqAdmin`);

--
-- Indices de la tabla `archivo_req_emp`
--
ALTER TABLE `archivo_req_emp`
  ADD PRIMARY KEY (`codArchivoReqEmp`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`codBanco`);

--
-- Indices de la tabla `cdp`
--
ALTER TABLE `cdp`
  ADD PRIMARY KEY (`codTipoCDP`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`codDepartamento`);

--
-- Indices de la tabla `detalle_rendicion_gastos`
--
ALTER TABLE `detalle_rendicion_gastos`
  ADD PRIMARY KEY (`codDetalleRendicion`);

--
-- Indices de la tabla `detalle_reposicion_gastos`
--
ALTER TABLE `detalle_reposicion_gastos`
  ADD PRIMARY KEY (`codDetalleReposicion`);

--
-- Indices de la tabla `detalle_requerimiento_bs`
--
ALTER TABLE `detalle_requerimiento_bs`
  ADD PRIMARY KEY (`codDetalleRequerimiento`);

--
-- Indices de la tabla `detalle_solicitud_fondos`
--
ALTER TABLE `detalle_solicitud_fondos`
  ADD PRIMARY KEY (`codDetalleSolicitud`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`codDistrito`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`codEmpleado`);

--
-- Indices de la tabla `entidad_financiera`
--
ALTER TABLE `entidad_financiera`
  ADD PRIMARY KEY (`codEntidadFinanciera`);

--
-- Indices de la tabla `error_historial`
--
ALTER TABLE `error_historial`
  ADD PRIMARY KEY (`codErrorHistorial`);

--
-- Indices de la tabla `estado_rendicion_gastos`
--
ALTER TABLE `estado_rendicion_gastos`
  ADD PRIMARY KEY (`codEstadoRendicion`);

--
-- Indices de la tabla `estado_reposicion_gastos`
--
ALTER TABLE `estado_reposicion_gastos`
  ADD PRIMARY KEY (`codEstadoReposicion`);

--
-- Indices de la tabla `estado_requerimiento_bs`
--
ALTER TABLE `estado_requerimiento_bs`
  ADD PRIMARY KEY (`codEstadoRequerimiento`);

--
-- Indices de la tabla `estado_solicitud_fondos`
--
ALTER TABLE `estado_solicitud_fondos`
  ADD PRIMARY KEY (`codEstadoSolicitud`);

--
-- Indices de la tabla `indicador_objespecifico`
--
ALTER TABLE `indicador_objespecifico`
  ADD PRIMARY KEY (`codIndicadorObj`);

--
-- Indices de la tabla `indicador_resultado`
--
ALTER TABLE `indicador_resultado`
  ADD PRIMARY KEY (`codIndicadorResultado`);

--
-- Indices de la tabla `lugar_ejecucion`
--
ALTER TABLE `lugar_ejecucion`
  ADD PRIMARY KEY (`codLugarEjecucion`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`codMoneda`);

--
-- Indices de la tabla `numeracion`
--
ALTER TABLE `numeracion`
  ADD PRIMARY KEY (`codNumeracion`);

--
-- Indices de la tabla `objetivo_especifico`
--
ALTER TABLE `objetivo_especifico`
  ADD PRIMARY KEY (`codObjEspecifico`);

--
-- Indices de la tabla `objetivo_estrategico_cedepas`
--
ALTER TABLE `objetivo_estrategico_cedepas`
  ADD PRIMARY KEY (`codObjetivoEstrategico`);

--
-- Indices de la tabla `plan_estrategico_institucional`
--
ALTER TABLE `plan_estrategico_institucional`
  ADD PRIMARY KEY (`codPEI`);

--
-- Indices de la tabla `poblacion_beneficiaria`
--
ALTER TABLE `poblacion_beneficiaria`
  ADD PRIMARY KEY (`codPoblacionBeneficiaria`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`codProvincia`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`codProyecto`);

--
-- Indices de la tabla `proyecto_contador`
--
ALTER TABLE `proyecto_contador`
  ADD PRIMARY KEY (`codProyectoContador`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`codPuesto`);

--
-- Indices de la tabla `relacion_proyecto_objestrategicos`
--
ALTER TABLE `relacion_proyecto_objestrategicos`
  ADD PRIMARY KEY (`codRelacion`);

--
-- Indices de la tabla `rendicion_gastos`
--
ALTER TABLE `rendicion_gastos`
  ADD PRIMARY KEY (`codRendicionGastos`);

--
-- Indices de la tabla `reposicion_gastos`
--
ALTER TABLE `reposicion_gastos`
  ADD PRIMARY KEY (`codReposicionGastos`);

--
-- Indices de la tabla `requerimiento_bs`
--
ALTER TABLE `requerimiento_bs`
  ADD PRIMARY KEY (`codRequerimiento`);

--
-- Indices de la tabla `resultado_esperado`
--
ALTER TABLE `resultado_esperado`
  ADD PRIMARY KEY (`codResultadoEsperado`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`codSede`);

--
-- Indices de la tabla `solicitud_fondos`
--
ALTER TABLE `solicitud_fondos`
  ADD PRIMARY KEY (`codSolicitud`);

--
-- Indices de la tabla `tipo_financiamiento`
--
ALTER TABLE `tipo_financiamiento`
  ADD PRIMARY KEY (`codTipoFinanciamiento`);

--
-- Indices de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  ADD PRIMARY KEY (`codUnidadMedida`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivo_proyecto`
--
ALTER TABLE `archivo_proyecto`
  MODIFY `codArchivoProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `archivo_rend`
--
ALTER TABLE `archivo_rend`
  MODIFY `codArchivoRend` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `archivo_repo`
--
ALTER TABLE `archivo_repo`
  MODIFY `codArchivoRepo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `archivo_req_admin`
--
ALTER TABLE `archivo_req_admin`
  MODIFY `codArchivoReqAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `archivo_req_emp`
--
ALTER TABLE `archivo_req_emp`
  MODIFY `codArchivoReqEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `banco`
--
ALTER TABLE `banco`
  MODIFY `codBanco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cdp`
--
ALTER TABLE `cdp`
  MODIFY `codTipoCDP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `codDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `detalle_rendicion_gastos`
--
ALTER TABLE `detalle_rendicion_gastos`
  MODIFY `codDetalleRendicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `detalle_reposicion_gastos`
--
ALTER TABLE `detalle_reposicion_gastos`
  MODIFY `codDetalleReposicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT de la tabla `detalle_requerimiento_bs`
--
ALTER TABLE `detalle_requerimiento_bs`
  MODIFY `codDetalleRequerimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `detalle_solicitud_fondos`
--
ALTER TABLE `detalle_solicitud_fondos`
  MODIFY `codDetalleSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `codEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `entidad_financiera`
--
ALTER TABLE `entidad_financiera`
  MODIFY `codEntidadFinanciera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `error_historial`
--
ALTER TABLE `error_historial`
  MODIFY `codErrorHistorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estado_rendicion_gastos`
--
ALTER TABLE `estado_rendicion_gastos`
  MODIFY `codEstadoRendicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estado_reposicion_gastos`
--
ALTER TABLE `estado_reposicion_gastos`
  MODIFY `codEstadoReposicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estado_requerimiento_bs`
--
ALTER TABLE `estado_requerimiento_bs`
  MODIFY `codEstadoRequerimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estado_solicitud_fondos`
--
ALTER TABLE `estado_solicitud_fondos`
  MODIFY `codEstadoSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `indicador_objespecifico`
--
ALTER TABLE `indicador_objespecifico`
  MODIFY `codIndicadorObj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `indicador_resultado`
--
ALTER TABLE `indicador_resultado`
  MODIFY `codIndicadorResultado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lugar_ejecucion`
--
ALTER TABLE `lugar_ejecucion`
  MODIFY `codLugarEjecucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `codMoneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `numeracion`
--
ALTER TABLE `numeracion`
  MODIFY `codNumeracion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `objetivo_especifico`
--
ALTER TABLE `objetivo_especifico`
  MODIFY `codObjEspecifico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `objetivo_estrategico_cedepas`
--
ALTER TABLE `objetivo_estrategico_cedepas`
  MODIFY `codObjetivoEstrategico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `plan_estrategico_institucional`
--
ALTER TABLE `plan_estrategico_institucional`
  MODIFY `codPEI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `poblacion_beneficiaria`
--
ALTER TABLE `poblacion_beneficiaria`
  MODIFY `codPoblacionBeneficiaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `codProvincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `codProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `proyecto_contador`
--
ALTER TABLE `proyecto_contador`
  MODIFY `codProyectoContador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT de la tabla `puesto`
--
ALTER TABLE `puesto`
  MODIFY `codPuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `relacion_proyecto_objestrategicos`
--
ALTER TABLE `relacion_proyecto_objestrategicos`
  MODIFY `codRelacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `rendicion_gastos`
--
ALTER TABLE `rendicion_gastos`
  MODIFY `codRendicionGastos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reposicion_gastos`
--
ALTER TABLE `reposicion_gastos`
  MODIFY `codReposicionGastos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `requerimiento_bs`
--
ALTER TABLE `requerimiento_bs`
  MODIFY `codRequerimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `resultado_esperado`
--
ALTER TABLE `resultado_esperado`
  MODIFY `codResultadoEsperado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `codSede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `solicitud_fondos`
--
ALTER TABLE `solicitud_fondos`
  MODIFY `codSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1793;

--
-- AUTO_INCREMENT de la tabla `tipo_financiamiento`
--
ALTER TABLE `tipo_financiamiento`
  MODIFY `codTipoFinanciamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `unidad_medida`
--
ALTER TABLE `unidad_medida`
  MODIFY `codUnidadMedida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codUsuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
