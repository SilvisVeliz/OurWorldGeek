-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2021 a las 23:59:48
-- Versión del servidor: 10.4.14-MariaDB-log
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shoperiageek`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacoracliente`
--

CREATE TABLE `bitacoracliente` (
  `idBitacoraCliente` int(20) NOT NULL,
  `idCliente` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `actividad_realizada` varchar(50) NOT NULL,
  `informacion_actual` text NOT NULL,
  `informacion_anterior` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacoracliente`
--

INSERT INTO `bitacoracliente` (`idBitacoraCliente`, `idCliente`, `fecha`, `actividad_realizada`, `informacion_actual`, `informacion_anterior`) VALUES
(2, 17, '2021-06-01 23:48:57', 'Se actualizo un cliente', 'informacion anterior: Veronica Pedroza veronicapedrozza@hotmail.com 4492451243 0254fe608a953ee1f3bcced45fd208f617d', 'informacion actual: Veronica Pedrozas veronicapedrozza@hotmail.com 4492451243 0 254fe608a953ee1f3bcced45fd208f617d'),
(3, 17, '2021-06-01 23:56:24', 'Se actualizo un cliente', 'informacion anterior: Veronica Pedrozas veronicapedrozza@hotmail.com 4492451243 0254fe608a953ee1f3bcced45fd208f617d', 'informacion actual: Veronica Pedroza veronicapedrozza@hotmail.com 4492451243 0 254fe608a953ee1f3bcced45fd208f617d'),
(4, 23, '2021-06-04 05:26:07', 'Se inserto nuevo cliente', 'informacion actual: Manuel Medina alexmedinatrejo@hotmail.com 4491234567 0 299c87400128d408cdcda0e4b3ff0e66fa', ''),
(5, 23, '2021-06-04 05:37:27', 'Se ELIMINO un cliente', 'informacion anterior: Manuel Medina alexmedinatrejo@hotmail.com 4491234567 0299c87400128d408cdcda0e4b3ff0e66fa', ''),
(6, 24, '2021-06-04 05:38:11', 'Se inserto nuevo cliente', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa', ''),
(7, 24, '2021-06-04 18:03:02', 'Se actualizo un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa'),
(8, 24, '2021-06-04 18:06:12', 'Se actualizo un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa'),
(9, 24, '2021-06-04 18:06:26', 'Se actualizo un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa'),
(10, 24, '2021-06-04 18:08:50', 'Se actualizo un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa'),
(11, 24, '2021-06-04 18:10:09', 'Se actualizo un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa'),
(12, 24, '2021-06-04 18:11:57', 'Se actualizo un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa'),
(13, 24, '2021-06-04 18:12:24', 'Se actualizo un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa'),
(14, 24, '2021-06-04 18:15:54', 'Se actualizo un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', 'informacion actual: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0 309c87400128d408cdcda0e4b3ff0e66fa'),
(15, 24, '2021-06-06 20:21:14', 'Se ELIMINO un cliente', 'informacion anterior: Alex Wake alexmedinatrejo@hotmail.com 4491234567 0309c87400128d408cdcda0e4b3ff0e66fa', ''),
(16, 9, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: ALEX MEDINA TREJO ALEXMEDINA@GMAIL.COM 4494494498 0 9PazzWord', ''),
(17, 18, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: BERE NARANJO GONZALEZ NAGOB@GMAIL.COM 4494494499 0 18NAGOB1', ''),
(18, 19, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: ALEXIS CAMPOS NARANJO CANAA@GMAIL.COM 4494395685 0 19CANAA', ''),
(19, 20, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: SERGIO ALEJANDRO CAMPOS HERNANDEZ CASH@GMAIL.COM 4494789658 0 20CASH1', ''),
(20, 21, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: DIEGO ISMAEL BERUMEN CEDILLO BECD@GMAIL.COM 4496588665 0 21BECD1', ''),
(21, 22, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: AURORA ESCALANTE  PALAFOX ESPA@GMAIL.COM 4968569569 0 22ESPA1', ''),
(22, 23, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: JOYCELENE FABIOLA ESTRADA BARBA ESBJ@GMAIL.COM 546695486 0 23ESBJ1', ''),
(23, 24, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: ERNESTO PEREZ NOVARA PENX@GMAIL.COM 12541564827 0 24PENX1', ''),
(24, 25, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: LEONARDO DANIEL FARIAS ROSAS FARL@GMAIL.COM 5917863518 0 25FARL1', ''),
(25, 26, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: RAMON ANDRES FIERROS ROSALES FIRR@GMAIL.COM 9347861584 0 26FIRR1', ''),
(26, 27, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: OMAR GERARDO  PUENTE TORRES PUTX@GMAIL.COM 3617932864 0 28PUTX1', ''),
(27, 28, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: MARTHA ALICIA GUTIERREZ ORTIZ GUOM@GMAIL.COM 5791483614 0 28GUOM1', ''),
(28, 29, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: ROSALIA JIMENES GONZALES JIGR@GMAILCOM 2103942617 0 29JIGR1', ''),
(29, 30, '2021-06-06 20:23:10', 'Se inserto nuevo cliente', 'informacion actual: MARIA FERNANDA  FRANCO ESQUIVEL  FREM@GMAIL.COM 3641092781 0 30FREM1', ''),
(30, 31, '2021-06-06 20:58:56', 'Se inserto nuevo cliente', 'informacion actual: Alexandro Jimenez AleJimenez@gmail.com 4498765672 30 30Pazzworda', ''),
(31, 32, '2021-06-06 21:00:31', 'Se inserto nuevo cliente', 'informacion actual: Eduardo Macias EduMac8777@gmail.com 4497673133 31 32passwordEdu', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacoraempleado`
--

CREATE TABLE `bitacoraempleado` (
  `idBitacoraEmpleado` int(20) NOT NULL,
  `idEmpleado` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `responsable` varchar(30) NOT NULL,
  `actividad_realizada` varchar(50) NOT NULL,
  `informacion_actual` text NOT NULL,
  `informacion_anterior` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacoraempleado`
--

INSERT INTO `bitacoraempleado` (`idBitacoraEmpleado`, `idEmpleado`, `fecha`, `responsable`, `actividad_realizada`, `informacion_actual`, `informacion_anterior`) VALUES
(1, 6, '2021-05-11 23:32:29', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Guadalupe Ssandoval lupis123@yahoo.com 123456789 Vendedor 1002 0 28 516e811154326823d6e34db27eecb013', ''),
(2, 1, '2021-06-04 16:49:45', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios ElePala90@gmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(3, 1, '2021-06-04 17:28:21', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(4, 1, '2021-06-04 17:55:51', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(5, 1, '2021-06-04 17:58:57', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(6, 1, '2021-06-04 18:03:02', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(7, 1, '2021-06-04 18:06:12', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(8, 1, '2021-06-04 18:06:26', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(9, 1, '2021-06-04 18:08:50', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(10, 1, '2021-06-04 18:10:08', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(11, 1, '2021-06-04 18:11:57', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(12, 1, '2021-06-04 18:12:24', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(13, 1, '2021-06-04 18:15:54', 'root@localhost', 'Se actualizo un empleado', 'informacion actual: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae', 'informacion anterior: Eleazar Palacios alexmedinatrejo@hotmail.com 4567890321 Administrador 8900 1 19 fe196833cc573a26b141ff1d2a35c9ae'),
(14, 7, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Misael Rivas MisRiv98@gmail.com 4567890322 Administrador 9000 1 19 Pazzword1', ''),
(15, 8, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Alejandro Juárez AleJua98@gmail.com 4669871431 Administrador 5770 2 20 Pazzword2', ''),
(16, 9, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Manuel Medina ManMed99@gmail.com 3215678905 Vendedor 5770 3 21 Pazzword3', ''),
(17, 10, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Alejandro Trejo AleTre99@gmail.com 4498907857 Vendedor 1309 0 23 Pazzword4', ''),
(18, 11, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Erik Muñoz EriMuñ12@gmail.com 5568091436 Vendedor 1300 0 24 Pazzword5', ''),
(19, 12, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Alfredo Campos AlfCam13@yahoo.com 123456780 Vendedor 1102 0 28 Pazzword6', ''),
(20, 13, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Daniel Acevedo DanAce34@yahoo.com 123455622 Vendedor 4569 0 28 Pazzword7', ''),
(21, 14, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Yael Nevado YaeNev987@yahoo.com 7658299651 Vendedor 7659 0 28 Pazzword8', ''),
(22, 15, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Silvia Serrano SilSer187@yahoo.com 8763991773 Vendedor 8773 0 28 Pazzword9', ''),
(23, 16, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Luis Cabrera LuiCab22@yahoo.com 8769296612 Vendedor 1827 0 28 Pazzword10', ''),
(24, 17, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Enrique Gonzales EnrGon892@yahoo.com 2876128388 Vendedor 1002 0 28 Pazzword11', ''),
(25, 18, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Ricardo Snowheart RicSno1@yahoo.com 4494567872 Vendedor 1876 0 28 Pazzword12', ''),
(26, 19, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Elizabeth Medrano EliMed99@yahoo.com 4498765678 Vendedor 1765 0 28 Pazzword13', ''),
(27, 20, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Angel Martínez AngMar44@yahoo.com 4498765679 Administrador 1766 0 28 Pazzword14', ''),
(28, 21, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Damian Mendoza DamMen@yahoo.com 4498765680 Aux de ventas 1767 0 28 Pazzword15', ''),
(29, 22, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Erick Hermosillo EriHer@yahoo.com 4498765681 Aux de ventas 1768 0 28 Pazzword16', ''),
(30, 23, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Vivian Guzman VivGuz@yahoo.com 4498765682 Aux de ventas 1769 0 28 Pazzword17', ''),
(31, 24, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Memo Bernal MemBer@yahoo.com 4498765683 Mostrador 1770 0 28 Pazzword18', ''),
(32, 25, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Victoria Hernandez VicHer@yahoo.com 4498765684 Tecnico 1771 0 28 Pazzword19', ''),
(33, 26, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Jazmín León JazLeo@yahoo.com 4498765685 Vendedor 1772 0 28 Pazzword20', ''),
(34, 27, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Alexa Ramos AleRam@yahoo.com 4498765686 Vendedor 1773 0 28 Pazzword21', ''),
(35, 28, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Mauricio Gaytan MauGat@yahoo.com 4498765687 Vendedor 1774 0 28 Pazzword22', ''),
(36, 29, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Andrei Alvarez AndAla@yahoo.com 4498765688 Vendedor 1775 0 28 Pazzword23', ''),
(37, 30, '2021-06-06 20:57:08', 'root@localhost', 'Se inserto nuevo empleado', 'informacion actual: Jurgen Martinez JurMar@yahoo.com 4498765689 Vendedor 1776 0 28 Pazzword24', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacoraproducto`
--

CREATE TABLE `bitacoraproducto` (
  `idBitacoraProducto` int(20) NOT NULL,
  `idProducto` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `responsable` varchar(30) NOT NULL,
  `actividad_realizada` varchar(50) NOT NULL,
  `informacion_actual` text NOT NULL,
  `informacion_anterior` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacoraproducto`
--

INSERT INTO `bitacoraproducto` (`idBitacoraProducto`, `idProducto`, `fecha`, `responsable`, `actividad_realizada`, `informacion_actual`, `informacion_anterior`) VALUES
(1, 1, '2020-12-04 23:11:29', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camiseta The Warriors grupo L 220.00 200.00 camiseta tamaño L 1 1 1', ''),
(2, 1, '2020-12-06 07:40:55', 'root@localhost', 'Se ELIMINO un producto', 'informacion anterior: camiseta The Warriors grupo L 220.00 200.00 camiseta tamaño L 1 11', ''),
(3, 1, '2020-12-06 07:41:30', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camiseta The Warriors grupo L 220.00 200.00 camiseta tamaño L 1 1 1', ''),
(4, 2, '2020-12-06 07:41:30', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camiseta The Warriors grupo M 220.00 0.00 camiseta tamaño M 1 1 1', ''),
(5, 3, '2020-12-06 07:41:30', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camiseta The Warriors grupo S 220.00 0.00 camiseta tamaño S 1 1 1', ''),
(6, 4, '2020-12-06 07:41:30', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camiseta el Padrino L 349.00 0.00 camisa tamaño L 2 1 1', ''),
(7, 5, '2020-12-06 07:41:30', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camiseta el Padrino S 349.00 0.00 camisa tamaño S 2 1 1', ''),
(8, 6, '2020-12-06 07:41:30', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camiseta La Chaqueta Metalica  599.00 0.00 camiseta tamaño XXL 3 1 1', ''),
(9, 7, '2020-12-06 07:41:30', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camiseta La Chaqueta Metalica  599.00 0.00 camiseta tamaño XL 3 1 1', ''),
(10, 8, '2020-12-06 07:41:30', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura deus ex mankind divided 499.00 0.00 figura de 30 cm 4 2 3', ''),
(11, 9, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: taza crusader kings 239.00 0.00 taza adornada 5 2 3', ''),
(12, 10, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: taza city skylines 199.00 0.00 taza 6 2 3', ''),
(13, 11, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura pop Dune: Lady Jessica 699.00 0.00 figura Dune 7 3 2', ''),
(14, 12, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura pop Dune: Duncan Idaho 899.00 0.00 figura Dune 7 3 2', ''),
(15, 13, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura porp Dune: Duke Leto 700.00 0.00 figura dune 7 3 2', ''),
(16, 14, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura porp Dune: Baron Karkon 759.00 0.00 figura dune 7 3 2', ''),
(17, 15, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura qposket kimetsu no yaib 499.00 0.00 figura Tanjiro 14 cm 8 4 2', ''),
(18, 16, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura banpresto Saint Seiya M 439.00 0.00 figura banpresto 16 cm 9 4 2', ''),
(19, 17, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura qposket kimetsu no yaib 499.00 0.00 figura Vib Nezuko 12 cm 8 4 2', ''),
(20, 18, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: figura Banpresto One Piece Luf 899.00 0.00 figura One piece 13 cm 9 4 2', ''),
(21, 19, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: Display mazos star realms colo 199.00 0.00 juego de cartas 6pz 10 5 3', ''),
(22, 20, '2020-12-06 07:41:31', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: gorra Hora de Aventura 199.00 0.00 gorra 11 6 1', ''),
(23, 20, '2021-06-01 23:51:24', 'root@localhost', 'Se actualizo un producto', 'informacion actual: gorra Hora de Aventura 199.00 0.00 gorra 6 1', 'informacion anterior: Gorra Hora de Aventura 199.00 0.00 gorra 6 1'),
(24, 20, '2021-06-01 23:51:36', 'root@localhost', 'Se actualizo un producto', 'informacion actual: Gorra Hora de Aventura 199.00 0.00 gorra 6 1', 'informacion anterior: Gorra Hora De Aventura 199.00 0.00 gorra 6 1'),
(25, 19, '2021-06-01 23:53:09', 'root@localhost', 'Se actualizo un producto', 'informacion actual: Display mazos star realms colo 199.00 0.00 juego de cartas 6pz 5 3', 'informacion anterior: Display mazos Star realms colo 199.00 0.00 juego de cartas 6pz 5 3'),
(26, 19, '2021-06-01 23:53:18', 'root@localhost', 'Se actualizo un producto', 'informacion actual: Display mazos Star realms colo 199.00 0.00 juego de cartas 6pz 5 3', 'informacion anterior: Display mazos star realms colo 199.00 0.00 juego de cartas 6pz 5 3'),
(27, 38, '2021-06-06 01:52:13', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: camisa Zelda 400.00 300.00 Camiseta con el logo de Zelda en la espanda 1 2', ''),
(28, 38, '2021-06-06 21:24:46', 'root@localhost', 'Se ELIMINO un producto', 'informacion anterior: camisa Zelda 400.00 300.00 Camiseta con el logo de Zelda en la espanda 12', ''),
(29, 21, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: all out 190.00 180.00 blue ray all out 31 22', ''),
(30, 22, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: DRAGON BALL 300.00 299.90 BLUE RAY DE DRAGON 31 22', ''),
(31, 23, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: FIREWORKS 320.00 299.90 BLUE RAY DE FIREWORKS 31 22', ''),
(32, 24, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: Action Comics 1 2000000.00 200000.00 Comic de Action Comics 23 18', ''),
(33, 25, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: BATMAN 1000 360.00 299.00 COMIC DE BATMAN 23 18', ''),
(34, 26, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: SUPERMAN 224 360.00 299.00 COMIC DE SUPERMAN VOLUMEN 224 23 18', ''),
(35, 27, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: SUPERMAN 320 360.00 299.00 COMIC DE SUPERMAN VOLUMEN 320 23 18', ''),
(36, 47, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: HARRY POTER Y LA PIEDRA FILOSO 400.00 259.00 LIBRO DE HP 26 5', ''),
(37, 48, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: HARRY POTER Y EL PRISIONERO DE 400.00 259.00 LIBRO DE HP 26 5', ''),
(38, 28, '2021-06-06 21:28:05', 'root@localhost', 'Se inserto nuevo producto', 'informacion actual: CAPA DE GRYFFINDOR 400.00 259.00 CAPA MEDIANA DE LA CASAS DE GRYFFINDOR 26 5', ''),
(39, 47, '2021-06-06 21:31:25', 'root@localhost', 'Se actualizo un producto', 'informacion actual: HARRY POTER Y LA PIEDRA FILOSO 400.00 259.00 LIBRO DE HP 26 5', 'informacion anterior: HARRY POTER Y LA PIEDRA FILOSO 400.00 259.00 LIBRO DE HP 26 5'),
(40, 48, '2021-06-06 21:31:33', 'root@localhost', 'Se actualizo un producto', 'informacion actual: HARRY POTER Y EL PRISIONERO DE 400.00 259.00 LIBRO DE HP 26 5', 'informacion anterior: HARRY POTER Y EL PRISIONERO DE 400.00 259.00 LIBRO DE HP 26 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacoraproveedor`
--

CREATE TABLE `bitacoraproveedor` (
  `idBitacoraProveedor` int(20) NOT NULL,
  `idProveedor` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `responsable` varchar(30) NOT NULL,
  `actividad_realizada` varchar(50) NOT NULL,
  `informacion_actual` text NOT NULL,
  `informacion_anterior` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacoraproveedor`
--

INSERT INTO `bitacoraproveedor` (`idBitacoraProveedor`, `idProveedor`, `fecha`, `responsable`, `actividad_realizada`, `informacion_actual`, `informacion_anterior`) VALUES
(0, 4, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Spartan Spartangeek@hotmail.com 4927816918 1', ''),
(0, 5, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: GryffindorStore HP@gmail.com 4568574079 2', ''),
(0, 6, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: MexiOtaku MxOtaku@gmail.com 26975936425 3', ''),
(0, 7, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Mochilon Mochilas@gmail.com 36969556746 3', ''),
(0, 8, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Fantasias Fanta@outlook.com 36969556743 6', ''),
(0, 9, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Animaniaticos Animes@gmail.com 65416149561 2', ''),
(0, 10, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Collaron Collares.ags@gmail.com 6556568238 6', ''),
(0, 11, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: pulseritas diego61@gmail.com 556454694813 9', ''),
(0, 12, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Valentinos Vale@gmail.com 36914752698 23', ''),
(0, 13, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: SpeedDuck SD@gmail.com 5444782076 17', ''),
(0, 14, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Cositas y Cosotas CC@gmail.com 2079648261 15', ''),
(0, 15, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Panini Panini.oficial@gmail.com 6917624381 1', ''),
(0, 16, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Zero Two ZT@gmail.com 2691843620 16', ''),
(0, 17, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Marvelitas marvel@gmail.com 54698546456 29', ''),
(0, 18, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Decitas Dece@gmail.com 3079461834 4', ''),
(0, 19, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Las Bolas del Dragon LBD@gmail.com 5556328548 12', ''),
(0, 20, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Playeras Gimenez PG@gmail.com 5582077913 18', ''),
(0, 21, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Accesorios Lupe AL@gmail.com 2176943820 14', ''),
(0, 22, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Friki plaza FP@gmail.com 4595462175 3', ''),
(0, 23, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: FRIOS Frios.mx@gmail.com 1594736184 27', ''),
(0, 24, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Humales Humos@gmail.com 3654928176 25', ''),
(0, 25, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: TecZone TZ@outlook.com 26763254565 13', ''),
(0, 26, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Mause Gamer MG@gmail.com 2176349813 10', ''),
(0, 27, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: De la Rosa DR@gmail.com 2097448831 30', ''),
(0, 28, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Bolson Bolsas@gmail.com 1274196235 16', ''),
(0, 29, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: Nientiendo Nientiendo@hotmail.com 2076663315 8', ''),
(0, 30, '2021-06-06 21:36:32', 'root@localhost', 'Se inserto nuevo proveedor', 'informacion actual: REDION red@gmail.com 1465184624 3', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idCategoria` int(20) NOT NULL,
  `nombreCategoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idCategoria`, `nombreCategoria`) VALUES
(1, 'camisetas de cine'),
(2, 'catalogo gaya'),
(3, 'figuras cine'),
(4, 'figuras manga'),
(5, 'juegos de cartas'),
(6, 'caricaturas'),
(7, 'MANGAS'),
(8, 'LIBROS'),
(9, 'COMICS'),
(10, 'Collares'),
(11, 'VIDEOJUEGOS'),
(12, 'CONSOLAS'),
(13, 'Posters'),
(14, 'Mochilas'),
(15, 'Estampas'),
(16, 'Chapas'),
(17, 'Pulseras'),
(18, 'Cosplays'),
(19, 'Tazas'),
(20, 'Audifonos'),
(21, 'Juegos de mesa'),
(22, 'Articulos de Colecci'),
(23, 'DC'),
(24, 'MARVEL'),
(25, 'INDEPENDIENTE'),
(26, 'HARRY POTTER'),
(27, 'STARWARS'),
(28, 'SERIES'),
(29, 'PELICULAS'),
(30, 'ACCESORIOS'),
(31, 'ANIME');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(20) NOT NULL,
  `nombreCliente` varchar(30) NOT NULL,
  `apellidoCliente` varchar(30) NOT NULL,
  `emailCliente` varchar(30) NOT NULL,
  `telefonoCliente` varchar(12) NOT NULL,
  `idImagen` int(20) NOT NULL,
  `idDireccion` int(20) NOT NULL,
  `passwordCliente` varchar(200) NOT NULL,
  `codigoAcceso` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombreCliente`, `apellidoCliente`, `emailCliente`, `telefonoCliente`, `idImagen`, `idDireccion`, `passwordCliente`, `codigoAcceso`) VALUES
(1, 'Rosalia', 'Manriquez', 'RosaMan132@gmail.com', '5590875634', 1, 4, '700ab2794a2699c28cb3b5955f40ef83', 0),
(2, 'Maria Josefa', 'Saiz', 'MaJoSa@outlook.com', '2229087564', 1, 5, 'fe196833cc573a26b141ff1d2a35c9ae', 0),
(3, 'Axel', 'Quintero', 'Axelito23@gmail.com', '6798234019', 1, 6, 'b9c91ac2d8398eb00af4e165cbf251fd', 0),
(4, 'Isidro', 'Martinez', 'ILYisi0@hotmail.com', '5634243091', 1, 7, '0ee19b7f9245b22d0cac71378f11afab', 0),
(5, 'Palmira', 'Alegre', 'AlePal009@gmail.com', '6344657893', 1, 8, 'de2a196cb812ef8abdb8f168dc2542c8', 0),
(6, 'Xenia de Miguel', 'Anguiano', 'XeniaAnguiano2001@yahoo.com', '9086740581', 1, 9, 'eaf9d75b284899052f06020cd02abf71', 0),
(7, 'Ruth', 'Rivero', 'RRUItv1@gmail.com', '5590091634', 1, 10, 'e4507bfbb85ab8ff5e22c1ac8923fba7', 0),
(8, 'Maria Victoria', 'Ojeda', 'MVO@hotmail.com', '4491234567', 1, 11, '839c33f02c40067ed1bcd1da7381a7b7', 0),
(9, 'ALEX', 'MEDINA TREJO', 'ALEXMEDINA@GMAIL.COM', '4494494498', 0, 9, 'PazzWord', 0),
(10, 'Yurena', 'Arias', 'yureyure2@gmail.com', '1209768542', 1, 13, '2b637a75e5d51d4e81c2d6e17d56955f', 0),
(11, 'Carmen', 'Tudelo', 'tudelitok@hotmail.com', '3349053894', 1, 14, '2b637a75e5d51d4e81c2d6e17d56955f', 0),
(12, 'Laura', 'Perdomo', 'lauraperdom0@gmail.com', '5545907612', 1, 15, '2b637a75e5d51d4e81c2d6e17d56955f', 0),
(13, 'Amanda Rosal', 'Palacios', 'amandarosalpala@hotmail.com', '7074041532', 1, 16, 'cb1603a5b22dd6823a3e42c6896140be', 0),
(14, 'Alexandro', 'Ares', 'aares@outlook.com', '6098763450', 1, 17, 'fe196833cc573a26b141ff1d2a35c9ae', 0),
(15, 'Miquel', 'Lloret', 'Loraloramiq@gmail.com', '4460981238', 1, 18, 'e743d0d097d5047f21b1020ef93dec9c', 0),
(16, 'SILVIA RAQUEL', 'SERRANO VELIZ', 'silviaraquel110@gmail.com', '4493442718', 0, 22, 'cef4df772ab6d1020c8c7780ff31931e', 0),
(17, 'Veronica', 'Pedroza', 'veronicapedrozza@hotmail.com', '4492451243', 0, 25, '4fe608a953ee1f3bcced45fd208f617d', 0),
(18, 'BERE', 'NARANJO GONZALEZ', 'NAGOB@GMAIL.COM', '4494494499', 0, 18, 'NAGOB1', 0),
(19, 'ALEXIS', 'CAMPOS NARANJO', 'CANAA@GMAIL.COM', '4494395685', 0, 19, 'CANAA', 0),
(20, 'SERGIO ALEJANDRO', 'CAMPOS HERNANDEZ', 'CASH@GMAIL.COM', '4494789658', 0, 20, 'CASH1', 0),
(21, 'DIEGO ISMAEL', 'BERUMEN CEDILLO', 'BECD@GMAIL.COM', '4496588665', 0, 21, 'BECD1', 0),
(22, 'AURORA', 'ESCALANTE  PALAFOX', 'ESPA@GMAIL.COM', '4968569569', 0, 22, 'ESPA1', 0),
(23, 'JOYCELENE FABIOLA', 'ESTRADA BARBA', 'ESBJ@GMAIL.COM', '546695486', 0, 23, 'ESBJ1', 0),
(24, 'ERNESTO', 'PEREZ NOVARA', 'PENX@GMAIL.COM', '12541564827', 0, 24, 'PENX1', 0),
(25, 'LEONARDO DANIEL', 'FARIAS ROSAS', 'FARL@GMAIL.COM', '5917863518', 0, 25, 'FARL1', 0),
(26, 'RAMON ANDRES', 'FIERROS ROSALES', 'FIRR@GMAIL.COM', '9347861584', 0, 26, 'FIRR1', 0),
(27, 'OMAR GERARDO ', 'PUENTE TORRES', 'PUTX@GMAIL.COM', '3617932864', 0, 28, 'PUTX1', 0),
(28, 'MARTHA ALICIA', 'GUTIERREZ ORTIZ', 'GUOM@GMAIL.COM', '5791483614', 0, 28, 'GUOM1', 0),
(29, 'ROSALIA', 'JIMENES GONZALES', 'JIGR@GMAILCOM', '2103942617', 0, 29, 'JIGR1', 0),
(30, 'MARIA FERNANDA ', 'FRANCO ESQUIVEL ', 'FREM@GMAIL.COM', '3641092781', 0, 30, 'FREM1', 0),
(31, 'Alexandro', 'Jimenez', 'AleJimenez@gmail.com', '4498765672', 30, 30, 'Pazzworda', 0),
(32, 'Eduardo', 'Macias', 'EduMac8777@gmail.com', '4497673133', 31, 32, 'passwordEdu', 0);

--
-- Disparadores `cliente`
--
DELIMITER $$
CREATE TRIGGER `ClienteDelete` AFTER DELETE ON `cliente` FOR EACH ROW BEGIN
INSERT INTO bitacoracliente(idCliente,actividad_realizada,informacion_actual)
VALUES(OLD.idCliente,'Se ELIMINO un cliente', concat('informacion anterior: ',OLD.nombreCliente,' ',OLD.apellidoCliente,' ',OLD.emailCliente,' ',OLD.telefonoCliente,' ',OLD.idImagen,'',OLD.idDireccion, '', OLD.passwordCliente));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ClienteInsertar` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
INSERT INTO bitacoracliente(idCliente,actividad_realizada,informacion_actual)
VALUES(NEW.idCliente,'Se inserto nuevo cliente',concat('informacion actual: ',NEW.nombreCliente,' ',NEW.apellidoCliente,' ',NEW.emailCliente,' ',NEW.telefonoCliente,' ',NEW.idImagen,' ',NEW.idDireccion, '', NEW.passwordCliente));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ClienteUpdate` AFTER UPDATE ON `cliente` FOR EACH ROW BEGIN
INSERT INTO bitacoracliente(idCliente,actividad_realizada,informacion_actual, informacion_anterior)
VALUES(OLD.idCliente,'Se actualizo un cliente',concat('informacion anterior: ',OLD.nombreCliente,' ',OLD.apellidoCliente,' ',OLD.emailCliente,' ',OLD.telefonoCliente,' ',OLD.idImagen,'',OLD.idDireccion, '', OLD.passwordCliente), concat('informacion actual: ',NEW.nombreCliente,' ',NEW.apellidoCliente,' ',NEW.emailCliente,' ',NEW.telefonoCliente,' ',NEW.idImagen,' ',NEW.idDireccion, '', NEW.passwordCliente));

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `idComentario` int(20) NOT NULL,
  `idCliente` int(20) NOT NULL,
  `idProducto` int(20) NOT NULL,
  `Comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`idComentario`, `idCliente`, `idProducto`, `Comentario`) VALUES
(1, 15, 16, 'Venía en perfecto estado, muy pequeña, pero el tamaño ya lo indican'),
(2, 1, 5, 'Llego demasiado pequeña, a pesar que pedí la talla S.'),
(3, 11, 16, 'Muy cara como para el tamaño del producto'),
(4, 11, 3, 'Me quedó perfecta, muy bonita'),
(5, 6, 7, 'Muy grande'),
(6, 9, 12, 'Hermoso, llego a tiempo'),
(7, 2, 12, 'Se tardó un poco en llegar, en buen estado'),
(8, 4, 11, 'Hermosa'),
(9, 7, 8, 'Esta de buen tamaño'),
(10, 14, 3, 'Me quedo muy apretada.'),
(11, 14, 6, 'Demasiado grande, la tela muy suave'),
(12, 3, 5, 'Muy bonita'),
(13, 5, 20, 'Muy cute, aunque es del tamaño para un niño.'),
(14, 8, 13, 'Muy bonito, casi completo la colección'),
(15, 13, 6, 'Muy bien hecha, perfecto para mi talla'),
(16, 10, 13, 'Buen tamaño, entrega a tiempo'),
(17, 12, 19, 'Muy completas las cartas, divertido.'),
(18, 13, 9, 'Muy bonita taza, sirve de adorno, muy amplia y cabe suficiente'),
(19, 15, 16, 'Recibido en tiempo y forma'),
(20, 1, 5, 'El repartidor era muy guapo'),
(21, 11, 16, 'Muy genial la atención y el tiempo de entrega'),
(22, 11, 3, 'Me quedó perfecta, muy bonita'),
(23, 6, 7, 'Muy pequeña'),
(24, 9, 12, 'Genial, justo lo que necesitaba'),
(25, 2, 12, 'Llego rapido y en buen estado'),
(26, 4, 11, 'Hermosa'),
(27, 7, 8, 'Llego en un tiempo muy tardado'),
(28, 14, 3, 'Justo lo que quería para mi hijo'),
(29, 14, 6, 'Esta hecha de buen material a pesar del precio'),
(30, 3, 5, 'Muy buena calidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `idPedido` int(20) NOT NULL,
  `idProducto` int(20) NOT NULL,
  `cantidadCompra` int(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallepedido`
--

INSERT INTO `detallepedido` (`idPedido`, `idProducto`, `cantidadCompra`, `status`) VALUES
(1, 16, 1, 'Completado'),
(2, 5, 1, 'completado'),
(3, 13, 1, 'completado'),
(3, 16, 1, 'completado'),
(4, 7, 1, 'completado'),
(5, 12, 1, 'completado'),
(6, 12, 1, 'completado'),
(7, 11, 1, 'completado'),
(8, 8, 1, 'completado'),
(9, 3, 1, 'completado'),
(9, 6, 1, 'completado'),
(10, 5, 1, 'Completado'),
(11, 20, 1, 'Completado'),
(12, 13, 1, 'Completado'),
(13, 6, 1, 'Completado'),
(13, 9, 1, 'Completado'),
(14, 13, 1, 'Completado'),
(15, 9, 1, 'Completado'),
(16, 20, 1, 'Completado'),
(17, 2, 1, 'Completado'),
(18, 18, 1, 'Completado'),
(18, 18, 1, 'Completado'),
(19, 11, 1, 'Pendiente'),
(20, 13, 1, 'Completado'),
(21, 18, 1, 'Pendiente'),
(22, 2, 1, 'Pendiente'),
(23, 18, 1, 'Pendiente'),
(24, 19, 1, 'Pendiente'),
(25, 20, 1, 'Pendiente'),
(26, 7, 1, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `idDireccion` int(20) NOT NULL,
  `calle` varchar(30) NOT NULL,
  `colonia` varchar(30) NOT NULL,
  `codigoPostal` int(5) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  `numeroInterio` smallint(6) NOT NULL,
  `numeroExterior` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`idDireccion`, `calle`, `colonia`, `codigoPostal`, `Estado`, `numeroInterio`, `numeroExterior`) VALUES
(1, 'Destornillador Nave', 'Pol Store', 41008, 'Aguascalientes', 2, 5),
(2, '31Pte juarez', 'Colonia Esmeralda', 72400, 'Aguascalientes', 0, 2),
(3, 'centro de la comunidad', 'san antonio', 45678, 'Aguascalientes', 43, 1),
(4, 'calle Agustin Lara', 'Ex-Normal tuxtepec', 68370, 'Guerrero', 909, 0),
(5, 'av independencia', 'centro tuxtepex', 68300, 'Sinaloa', 241, 69),
(6, 'carretera loma alta', 'lomas del pedregal', 68306, 'Veracruz', 2345, 0),
(7, 'av 10 de mayo', 'la piragua', 60978, 'Guadalajara', 243, 9),
(8, 'calle matamoros', 'temazcal', 12093, 'Ciudad de Mexico', 31, 0),
(9, 'av Sebastian ortiz', 'ma. luisa', 69045, 'Baja california sur', 404, 3),
(10, 'aldama', 'lazaro cardenas', 68320, 'Guerrero', 1231, 0),
(11, 'avenida niños herores', 'boxtha chico', 34560, 'Guanajuato', 31, 4),
(12, 'plaza constitucion', 'demacu', 66786, 'Monterrey', 234, 1),
(13, 'adolfo lopez mateos', 'santa maria amajac', 20298, 'Chihuahua', 1236, 1),
(14, 'felipe angeles', 'San Antonio', 45678, 'Queretaro', 123, 0),
(15, 'caynajay', 'lagunilla', 90870, 'Baja california norte', 10, 0),
(16, 'jose maria morelos', 'bomintzac', 9768, 'Sonora', 12, 0),
(17, 'Ejército Mexicano', 'fresno', 46758, 'Tlaxcala', 906, 2),
(18, 'av 16 de julio', 'caxuxi', 90878, 'Aguascalientes', 2343, 7),
(19, 'calle montario', 'vicente guerrero', 78932, 'Guerrero', 133, 0),
(20, 'av mariano polero', 'palmero', 89321, 'Michoacan', 890, 500),
(21, 'palomito viajero', 'sierra madre', 90832, 'Yucatan', 233, 1),
(22, 'de la loma', 'lomitas', 20199, 'Aguascalientes', 0, 508),
(23, 'chapulin', 'chapulin', 29080, 'Aguascalientes', 1, 290),
(24, 'fianchetito', 'lomas del gambito', 90340, 'san luis potosi', 0, 2342),
(25, 'franchesco riviera', 'autores', 20900, 'Aguascalientes', 234, 1),
(26, 'palmeras altas', 'De la palma', 90890, 'Nuevo León', 123, 1),
(27, 'del santoral', 'sontis', 20900, 'Guanajuato', 140, 3),
(28, 'del valle', 'valles', 12340, 'Durango', 0, 43),
(29, 'Calle de la F', 'Abecedario', 12678, 'Aguascalientes', 0, 129),
(30, 'Calle Bonita', 'Adjetivos', 12345, 'Aguascalientes', 0, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int(20) NOT NULL,
  `nombreEmpleado` varchar(30) NOT NULL,
  `apellidoEmpleado` varchar(30) NOT NULL,
  `emailEmpleado` varchar(30) NOT NULL,
  `telefonoEmpleado` varchar(12) NOT NULL,
  `acceso` varchar(20) NOT NULL,
  `Suledo` decimal(10,0) NOT NULL,
  `idImagen` int(20) NOT NULL,
  `idDireccion` int(20) NOT NULL,
  `passwordEmpleado` varchar(200) NOT NULL,
  `codigoAcceso` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `nombreEmpleado`, `apellidoEmpleado`, `emailEmpleado`, `telefonoEmpleado`, `acceso`, `Suledo`, `idImagen`, `idDireccion`, `passwordEmpleado`, `codigoAcceso`) VALUES
(1, 'Eleazar', 'Palacios', 'alexmedinatrejo@hotmail.com', '4567890321', 'Administrador', '8900', 1, 19, 'fe196833cc573a26b141ff1d2a35c9ae', 263948),
(2, 'Ana Lizbeth', 'Covarrubias', 'AnaLiz91@gmail.com', '4669871430', 'Administrador', '5670', 2, 20, '028d8b722c6b3ccc786f774b402e30c8', 0),
(3, 'Gerardo', 'Montañez', 'GeraMon92@gmail.com', '3215678904', 'Vendedor', '5670', 3, 21, '29f91d161732d4da03314773209c79f6', 0),
(4, 'Yahaira', 'Ornelas', 'YahairaOrnelas@gmail.com', '4498907856', 'Vendedor', '1209', 0, 23, 'dad0f4f285ff837167b89106b9341678', 0),
(5, 'ana lizette', 'villalobos', 'ana.lizette02@gmail.com', '5568091435', 'Vendedor', '1200', 0, 24, '294c05193c5a7bdf56994343d00cc1a5', 0),
(6, 'Guadalupe', 'Ssandoval', 'lupis123@yahoo.com', '123456789', 'Vendedor', '1002', 0, 28, '516e811154326823d6e34db27eecb013', 0),
(7, 'Misael', 'Rivas', 'MisRiv98@gmail.com', '4567890322', 'Administrador', '9000', 1, 19, 'Pazzword1', 0),
(8, 'Alejandro', 'Juárez', 'AleJua98@gmail.com', '4669871431', 'Administrador', '5770', 2, 20, 'Pazzword2', 0),
(9, 'Manuel', 'Medina', 'ManMed99@gmail.com', '3215678905', 'Vendedor', '5770', 3, 21, 'Pazzword3', 0),
(10, 'Alejandro', 'Trejo', 'AleTre99@gmail.com', '4498907857', 'Vendedor', '1309', 0, 23, 'Pazzword4', 0),
(11, 'Erik', 'Muñoz', 'EriMuñ12@gmail.com', '5568091436', 'Vendedor', '1300', 0, 24, 'Pazzword5', 0),
(12, 'Alfredo', 'Campos', 'AlfCam13@yahoo.com', '123456780', 'Vendedor', '1102', 0, 28, 'Pazzword6', 0),
(13, 'Daniel', 'Acevedo', 'DanAce34@yahoo.com', '123455622', 'Vendedor', '4569', 0, 28, 'Pazzword7', 0),
(14, 'Yael', 'Nevado', 'YaeNev987@yahoo.com', '7658299651', 'Vendedor', '7659', 0, 28, 'Pazzword8', 0),
(15, 'Silvia', 'Serrano', 'SilSer187@yahoo.com', '8763991773', 'Vendedor', '8773', 0, 28, 'Pazzword9', 0),
(16, 'Luis', 'Cabrera', 'LuiCab22@yahoo.com', '8769296612', 'Vendedor', '1827', 0, 28, 'Pazzword10', 0),
(17, 'Enrique', 'Gonzales', 'EnrGon892@yahoo.com', '2876128388', 'Vendedor', '1002', 0, 28, 'Pazzword11', 0),
(18, 'Ricardo', 'Snowheart', 'RicSno1@yahoo.com', '4494567872', 'Vendedor', '1876', 0, 28, 'Pazzword12', 0),
(19, 'Elizabeth', 'Medrano', 'EliMed99@yahoo.com', '4498765678', 'Vendedor', '1765', 0, 28, 'Pazzword13', 0),
(20, 'Angel', 'Martínez', 'AngMar44@yahoo.com', '4498765679', 'Administrador', '1766', 0, 28, 'Pazzword14', 0),
(21, 'Damian', 'Mendoza', 'DamMen@yahoo.com', '4498765680', 'Aux de ventas', '1767', 0, 28, 'Pazzword15', 0),
(22, 'Erick', 'Hermosillo', 'EriHer@yahoo.com', '4498765681', 'Aux de ventas', '1768', 0, 28, 'Pazzword16', 0),
(23, 'Vivian', 'Guzman', 'VivGuz@yahoo.com', '4498765682', 'Aux de ventas', '1769', 0, 28, 'Pazzword17', 0),
(24, 'Memo', 'Bernal', 'MemBer@yahoo.com', '4498765683', 'Mostrador', '1770', 0, 28, 'Pazzword18', 0),
(25, 'Victoria', 'Hernandez', 'VicHer@yahoo.com', '4498765684', 'Tecnico', '1771', 0, 28, 'Pazzword19', 0),
(26, 'Jazmín', 'León', 'JazLeo@yahoo.com', '4498765685', 'Vendedor', '1772', 0, 28, 'Pazzword20', 0),
(27, 'Alexa', 'Ramos', 'AleRam@yahoo.com', '4498765686', 'Vendedor', '1773', 0, 28, 'Pazzword21', 0),
(28, 'Mauricio', 'Gaytan', 'MauGat@yahoo.com', '4498765687', 'Vendedor', '1774', 0, 28, 'Pazzword22', 0),
(29, 'Andrei', 'Alvarez', 'AndAla@yahoo.com', '4498765688', 'Vendedor', '1775', 0, 28, 'Pazzword23', 0),
(30, 'Jurgen', 'Martinez', 'JurMar@yahoo.com', '4498765689', 'Vendedor', '1776', 0, 28, 'Pazzword24', 0);

--
-- Disparadores `empleado`
--
DELIMITER $$
CREATE TRIGGER `EmpleadoDelete` AFTER DELETE ON `empleado` FOR EACH ROW BEGIN
INSERT INTO bitacoraempleado(idEmpleado,responsable,actividad_realizada,informacion_actual)
VALUES(OLD.idEmpleado,CURRENT_USER,'Se ELIMINO un empleado',concat('informacion anterior: ',OLD.nombreEmpleado,' ',OLD.apellidoEmpleado,' ',OLD.emailEmpleado,' ',OLD.telefonoEmpleado,' ',OLD.acceso,' ',OLD.Suledo,' ', OLD.idImagen,' ', OLD.idDireccion,' ', OLD.passwordEmpleado));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `EmpleadoInsertar` AFTER INSERT ON `empleado` FOR EACH ROW BEGIN
INSERT INTO bitacoraempleado(idEmpleado,responsable,actividad_realizada,informacion_actual)
VALUES(NEW.idEmpleado,CURRENT_USER,'Se inserto nuevo empleado',concat('informacion actual: ',NEW.nombreEmpleado,' ',NEW.apellidoEmpleado,' ',NEW.emailEmpleado,' ',NEW.telefonoEmpleado,' ',NEW.acceso,' ', NEW.Suledo,' ', NEW.idImagen,' ', NEW.idDireccion,' ', NEW.passwordEmpleado));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `EmpleadoUpdate` AFTER UPDATE ON `empleado` FOR EACH ROW BEGIN
INSERT INTO bitacoraempleado(idEmpleado,responsable,actividad_realizada,informacion_actual, informacion_anterior)
VALUES(OLD.idEmpleado,CURRENT_USER,'Se actualizo un empleado',concat('informacion actual: ',OLD.nombreEmpleado,' ',OLD.apellidoEmpleado,' ',OLD.emailEmpleado,' ',OLD.telefonoEmpleado,' ',OLD.acceso,' ',OLD.Suledo,' ', OLD.idImagen,' ', OLD.idDireccion,' ', OLD.passwordEmpleado), concat('informacion anterior: ',NEW.nombreEmpleado,' ',NEW.apellidoEmpleado,' ',NEW.emailEmpleado,' ',NEW.telefonoEmpleado,' ',NEW.acceso,' ', NEW.Suledo,' ', NEW.idImagen,' ', NEW.idDireccion,' ', NEW.passwordEmpleado));

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `idImagen` int(20) NOT NULL,
  `nombreImagen` varchar(50) NOT NULL,
  `tamaÃ±oImagen` decimal(10,3) NOT NULL,
  `direccionImagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`idImagen`, `nombreImagen`, `tamaÃ±oImagen`, `direccionImagen`) VALUES
(1, 'Empleado1', '200.000', 'dasfasdf.png'),
(2, 'Empleado2', '200.000', 'asdf.png'),
(3, 'Empleado3', '200.000', 'asdf.png'),
(4, 'camisaWarriorsL', '200.000', './img/theWarriors_cinePlayeraL.jpg'),
(5, 'camisaWarriorsM', '200.000', './img/theWarriors_cinePlayeraM.jpg'),
(6, 'camisaWarriorsS', '200.000', './img/theWarriors_cinePlayeraS.jpg'),
(7, 'camisaPadrinoL', '200.000', './img/elPadrino_cinePlayeraL.jpg'),
(8, 'camisaPadrinoS', '200.000', './img/elPadrino_cinePlayeraS.jpg'),
(9, 'camisetoMetalXXL', '200.000', './img/laChaquetaMetalica_cinePlayeraXXL.jpg'),
(10, 'camisaMetalXL', '200.000', './img/laChaquetaMetalica_cinePlayeraXL.jpg'),
(11, 'figuraDeus', '200.000', './img/ProductosdeDeus.png'),
(12, 'tazaCKings', '200.000', './img/tazacrusaderskings.png'),
(13, 'tazaCSkylines', '200.000', './img/skylines.png'),
(14, 'figuraLadyJessica', '200.000', './img/product19figuraAkizukiKC.png'),
(15, 'figuraDuncanIdaho', '200.000', './img/product21figuraCapitanJamesTStarTrek.png'),
(16, 'figuraDukeLeto', '200.000', './img/figurabanpresto_SaintSeiyaM.jpg'),
(17, 'figuraBaronKarkon', '200.000', './img/funko-star-wars-pop-the-mandalorian-cara-\r\n\r\ndune.jpg'),
(18, 'figuraTanjiro', '200.000', './img/shopFiguraR2D2C3P0.png'),
(19, 'figuraBanpresto', '200.000', './img/product20figuraKenStreetFighter.png'),
(20, 'figuraNezuko', '200.000', './img/png-clipart-r2-d2-c-3po-chewbacca-droid-sideshow-collectibles-star-wars-star-wars-episode-vii-metal.png'),
(21, 'figuraOnePiece', '200.000', './img/product17figuraZoroOP.png'),
(22, 'juegoCartas', '200.000', './img/product13juegoMesaResidentEvil.png'),
(23, 'gorraHoraAventura', '200.000', './img/Gorra-hora-de-aventura-jake-S.jpg'),
(24, 'Capa Harry Potter', '200.000', './img/CapaHProja.jpg'),
(25, 'Comic #1 Action Comics', '200.000', './img/ActionComics1.jpg'),
(26, 'Comic de Batman #1000', '200.000', './img/BATMAN1000.jpg'),
(27, 'Comic #224 de Superman', '200.000', './img/Superman224.jpg'),
(28, 'Comic #320 Superman', '200.000', './img/Superman320.jpg'),
(29, 'Anime completo DragonBall', '200.000', './img/DragonBall.jpg'),
(30, 'Anime completo FireWorks', '200.000', './img/FireWorks.jpg'),
(31, 'Libro Harry Potter 1', '200.000', './img/HPLaPiedraFilosofal.jpg'),
(32, 'Libro Harry Potter 3', '200.000', './img/HPElPrisioneroDeAzkaban.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idProducto` int(20) NOT NULL,
  `cantidadInventario` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`idProducto`, `cantidadInventario`) VALUES
(1, 900),
(2, 512),
(3, 87),
(4, 190),
(5, 892),
(6, 123),
(7, 654),
(8, 293),
(9, 984),
(10, 264),
(11, 276),
(12, 132),
(13, 87),
(14, 23),
(15, 89),
(16, 243),
(17, 768),
(18, 12),
(19, 321),
(20, 201),
(21, 0),
(22, 0),
(23, 0),
(24, 200),
(25, 200),
(26, 200),
(27, 200),
(28, 200),
(29, 200),
(30, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

CREATE TABLE `metodopago` (
  `idMetodo` int(20) NOT NULL,
  `nombreMetodo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `metodopago`
--

INSERT INTO `metodopago` (`idMetodo`, `nombreMetodo`) VALUES
(1, 'PayPal'),
(2, 'efectivo en entrega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int(20) NOT NULL,
  `idCliente` int(20) NOT NULL,
  `fechaPedido` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `costoTotal` decimal(10,2) NOT NULL,
  `idMetodo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idCliente`, `fechaPedido`, `costoTotal`, `idMetodo`) VALUES
(1, 15, '2020-08-16 05:00:00', '439.00', 1),
(2, 1, '2019-09-07 05:00:00', '349.00', 1),
(3, 11, '2020-01-09 06:00:00', '659.00', 1),
(4, 6, '2020-12-10 06:00:00', '599.00', 1),
(5, 9, '2020-05-10 05:00:00', '899.00', 1),
(6, 2, '2020-11-01 06:00:00', '899.00', 1),
(7, 4, '2020-08-13 05:00:00', '699.00', 1),
(8, 7, '2020-07-19 05:00:00', '499.00', 1),
(9, 14, '2020-10-06 05:00:00', '819.00', 1),
(10, 3, '2020-09-13 05:00:00', '349.00', 1),
(11, 5, '2020-09-16 05:00:00', '199.00', 1),
(12, 8, '2020-05-05 05:00:00', '700.00', 1),
(13, 13, '2020-06-12 05:00:00', '838.00', 1),
(14, 10, '2020-04-08 05:00:00', '700.00', 1),
(15, 12, '2020-03-13 06:00:00', '199.00', 2),
(16, 12, '2021-06-06 21:23:01', '199.00', 1),
(17, 7, '2021-06-06 21:23:08', '220.00', 1),
(18, 1, '2021-06-06 21:23:14', '899.00', 2),
(19, 4, '2021-04-10 11:45:00', '699.00', 1),
(20, 18, '2021-11-03 08:09:00', '700.00', 2),
(21, 4, '2021-05-03 06:56:00', '899.00', 2),
(22, 18, '2021-05-09 17:28:00', '220.00', 1),
(23, 15, '2021-05-11 10:27:00', '899.00', 2),
(24, 11, '2021-05-10 07:30:00', '199.00', 2),
(25, 9, '2021-05-07 14:19:00', '199.00', 1),
(26, 1, '2021-05-02 12:51:00', '599.00', 1),
(27, 1, '2021-06-06 21:24:09', '1000.00', 2),
(28, 2, '2021-06-06 21:24:09', '1220.00', 1),
(29, 3, '2021-06-06 21:24:09', '1229.99', 1),
(30, 4, '2021-06-06 21:24:09', '999.99', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idProducto` int(20) NOT NULL,
  `nombreProducto` varchar(30) NOT NULL,
  `precioOriginal` decimal(10,2) NOT NULL,
  `precioDescuento` decimal(10,2) DEFAULT NULL,
  `descripcion` varchar(50) NOT NULL,
  `idCategoria` int(20) NOT NULL,
  `idProveedor` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombreProducto`, `precioOriginal`, `precioDescuento`, `descripcion`, `idCategoria`, `idProveedor`) VALUES
(1, 'camiseta The Warriors grupo L', '220.00', '200.00', 'camiseta tamaño L', 1, 1),
(2, 'camiseta The Warriors grupo M', '220.00', '0.00', 'camiseta tamaño M', 1, 1),
(3, 'camiseta The Warriors grupo S', '220.00', '0.00', 'camiseta tamaño S', 1, 1),
(4, 'camiseta el Padrino L', '349.00', '0.00', 'camisa tamaño L', 1, 1),
(5, 'camiseta el Padrino S', '349.00', '0.00', 'camisa tamaño S', 1, 1),
(6, 'camiseta La Chaqueta Metalica ', '599.00', '0.00', 'camiseta tamaño XXL', 1, 1),
(7, 'camiseta La Chaqueta Metalica ', '599.00', '0.00', 'camiseta tamaño XL', 1, 1),
(8, 'figura deus ex mankind divided', '499.00', '0.00', 'figura de 30 cm', 2, 3),
(9, 'taza crusader kings', '239.00', '0.00', 'taza adornada', 2, 3),
(10, 'taza city skylines', '199.00', '0.00', 'taza', 2, 3),
(11, 'figura pop Dune: Lady Jessica', '699.00', '0.00', 'figura Dune', 3, 2),
(12, 'figura pop Dune: Duncan Idaho', '899.00', '0.00', 'figura Dune', 3, 2),
(13, 'figura porp Dune: Duke Leto', '700.00', '0.00', 'figura dune', 3, 2),
(14, 'figura porp Dune: Baron Karkon', '759.00', '0.00', 'figura dune', 3, 2),
(15, 'figura qposket kimetsu no yaib', '499.00', '0.00', 'figura Tanjiro 14 cm', 4, 2),
(16, 'figura banpresto Saint Seiya M', '439.00', '0.00', 'figura banpresto 16 cm', 4, 2),
(17, 'figura qposket kimetsu no yaib', '499.00', '0.00', 'figura Vib Nezuko 12 cm', 4, 2),
(18, 'figura Banpresto One Piece Luf', '899.00', '0.00', 'figura One piece 13 cm', 4, 2),
(19, 'Display mazos star realms colo', '199.00', '0.00', 'juego de cartas 6pz', 5, 3),
(20, 'Gorra Hora De Aventura', '199.00', '0.00', 'gorra', 6, 1),
(21, 'all out', '190.00', '180.00', 'blue ray all out', 31, 22),
(22, 'DRAGON BALL', '300.00', '299.90', 'BLUE RAY DE DRAGON', 31, 22),
(23, 'FIREWORKS', '320.00', '299.90', 'BLUE RAY DE FIREWORKS', 31, 22),
(24, 'Action Comics 1', '2000000.00', '200000.00', 'Comic de Action Comics', 23, 18),
(25, 'BATMAN 1000', '360.00', '299.00', 'COMIC DE BATMAN', 23, 18),
(26, 'SUPERMAN 224', '360.00', '299.00', 'COMIC DE SUPERMAN VOLUMEN 224', 23, 18),
(27, 'SUPERMAN 320', '360.00', '299.00', 'COMIC DE SUPERMAN VOLUMEN 320', 23, 18),
(28, 'CAPA DE GRYFFINDOR', '400.00', '259.00', 'CAPA MEDIANA DE LA CASAS DE GRYFFINDOR', 26, 5),
(29, 'HARRY POTER Y LA PIEDRA FILOSO', '400.00', '259.00', 'LIBRO DE HP', 26, 5),
(30, 'HARRY POTER Y EL PRISIONERO DE', '400.00', '259.00', 'LIBRO DE HP', 26, 5);

--
-- Disparadores `producto`
--
DELIMITER $$
CREATE TRIGGER `ProductoDelete` AFTER DELETE ON `producto` FOR EACH ROW BEGIN
INSERT INTO bitacoraproducto(idProducto,responsable,actividad_realizada,informacion_actual)
VALUES(OLD.idProducto,CURRENT_USER,'Se ELIMINO un producto',concat('informacion anterior: ',OLD.nombreProducto,' ',OLD.precioOriginal,' ',OLD.precioDescuento,' ',OLD.descripcion,' ',OLD.idCategoria,'',OLD.idProveedor));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ProductoInsertar` AFTER INSERT ON `producto` FOR EACH ROW BEGIN
INSERT INTO bitacoraproducto(idProducto,responsable,actividad_realizada,informacion_actual)
VALUES(NEW.idProducto,CURRENT_USER,'Se inserto nuevo producto',concat('informacion actual: ',NEW.nombreProducto,' ',NEW.precioOriginal,' ',NEW.precioDescuento,' ',NEW.descripcion,' ',NEW.idCategoria,' ',NEW.idProveedor));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ProductoUpdate` AFTER UPDATE ON `producto` FOR EACH ROW BEGIN
INSERT INTO bitacoraproducto(idProducto,responsable,actividad_realizada,informacion_actual, informacion_anterior)
VALUES(OLD.idProducto,CURRENT_USER,'Se actualizo un producto',concat('informacion actual: ',OLD.nombreProducto,' ',OLD.precioOriginal,' ',OLD.precioDescuento,' ',OLD.descripcion,' ',OLD.idCategoria,' ',OLD.idProveedor), concat('informacion anterior: ',NEW.nombreProducto,' ',NEW.precioOriginal,' ',NEW.precioDescuento,' ',NEW.descripcion,' ',NEW.idCategoria,' ',NEW.idProveedor));

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_imagen`
--

CREATE TABLE `producto_imagen` (
  `idImagen` int(20) NOT NULL,
  `idProducto` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_imagen`
--

INSERT INTO `producto_imagen` (`idImagen`, `idProducto`) VALUES
(4, 1),
(5, 2),
(6, 3),
(7, 4),
(8, 5),
(9, 6),
(10, 7),
(11, 8),
(12, 9),
(13, 10),
(14, 11),
(15, 12),
(16, 13),
(17, 14),
(18, 15),
(19, 16),
(20, 17),
(21, 18),
(22, 19),
(23, 20),
(24, 28),
(25, 24),
(26, 25),
(27, 26),
(28, 27),
(29, 22),
(30, 23),
(31, 29),
(32, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProveedor` int(20) NOT NULL,
  `nombreProveedor` varchar(30) NOT NULL,
  `emailProveedor` varchar(50) NOT NULL,
  `telefonoProveedor` varchar(12) NOT NULL,
  `idDireccion` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idProveedor`, `nombreProveedor`, `emailProveedor`, `telefonoProveedor`, `idDireccion`) VALUES
(1, 'Last Level', 'info@lastlevel.es', '34954368899', 2),
(2, 'Geek Corner', 'contacto@geekcorner.mx', '2228895097', 1),
(3, 'SuperGeek', 'mayoreo@supergeek.com.mx', '2228895097', 3),
(4, 'Spartan', 'Spartangeek@hotmail.com', '4927816918', 1),
(5, 'GryffindorStore', 'HP@gmail.com', '4568574079', 2),
(6, 'MexiOtaku', 'MxOtaku@gmail.com', '26975936425', 3),
(7, 'Mochilon', 'Mochilas@gmail.com', '36969556746', 3),
(8, 'Fantasias', 'Fanta@outlook.com', '36969556743', 6),
(9, 'Animaniaticos', 'Animes@gmail.com', '65416149561', 2),
(10, 'Collaron', 'Collares.ags@gmail.com', '6556568238', 6),
(11, 'pulseritas', 'diego61@gmail.com', '556454694813', 9),
(12, 'Valentinos', 'Vale@gmail.com', '36914752698', 23),
(13, 'SpeedDuck', 'SD@gmail.com', '5444782076', 17),
(14, 'Cositas y Cosotas', 'CC@gmail.com', '2079648261', 15),
(15, 'Panini', 'Panini.oficial@gmail.com', '6917624381', 1),
(16, 'Zero Two', 'ZT@gmail.com', '2691843620', 16),
(17, 'Marvelitas', 'marvel@gmail.com', '54698546456', 29),
(18, 'Decitas', 'Dece@gmail.com', '3079461834', 4),
(19, 'Las Bolas del Dragon', 'LBD@gmail.com', '5556328548', 12),
(20, 'Playeras Gimenez', 'PG@gmail.com', '5582077913', 18),
(21, 'Accesorios Lupe', 'AL@gmail.com', '2176943820', 14),
(22, 'Friki plaza', 'FP@gmail.com', '4595462175', 3),
(23, 'FRIOS', 'Frios.mx@gmail.com', '1594736184', 27),
(24, 'Humales', 'Humos@gmail.com', '3654928176', 25),
(25, 'TecZone', 'TZ@outlook.com', '26763254565', 13),
(26, 'Mause Gamer', 'MG@gmail.com', '2176349813', 10),
(27, 'De la Rosa', 'DR@gmail.com', '2097448831', 30),
(28, 'Bolson', 'Bolsas@gmail.com', '1274196235', 16),
(29, 'Nientiendo', 'Nientiendo@hotmail.com', '2076663315', 8),
(30, 'REDION', 'red@gmail.com', '1465184624', 3);

--
-- Disparadores `proveedor`
--
DELIMITER $$
CREATE TRIGGER `ProveedorDelete` AFTER DELETE ON `proveedor` FOR EACH ROW BEGIN
INSERT INTO bitacoraproveedor(idProveedor,responsable,actividad_realizada,informacion_actual)
VALUES(OLD.idProveedor,CURRENT_USER,'Se ELIMINO un proveedor', concat('informacion anterior: ',OLD.nombreProveedor,' ',OLD.emailProveedor,' ',OLD.telefonoProveedor,' ',OLD.idDireccion));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ProveedorInsertar` AFTER INSERT ON `proveedor` FOR EACH ROW BEGIN
INSERT INTO bitacoraproveedor(idProveedor,responsable,actividad_realizada,informacion_actual)
VALUES(NEW.idProveedor,CURRENT_USER,'Se inserto nuevo proveedor',concat('informacion actual: ',NEW.nombreProveedor,' ',NEW.emailProveedor,' ',NEW.telefonoProveedor,' ',NEW.idDireccion));


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ProveedorUpdate` AFTER UPDATE ON `proveedor` FOR EACH ROW BEGIN
INSERT INTO bitacoraproveedor(idProveedor,responsable,actividad_realizada,informacion_actual, informacion_anterior)
VALUES(OLD.idProveedor,CURRENT_USER,'Se actualizo un proveedor',concat('informacion actual: ',OLD.nombreProveedor,' ',OLD.emailProveedor,' ',OLD.telefonoProveedor,' ',OLD.idDireccion), concat('informacion actual: ',NEW.nombreProveedor,' ',NEW.emailProveedor,' ',NEW.telefonoProveedor,' ',NEW.idDireccion));
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacoracliente`
--
ALTER TABLE `bitacoracliente`
  ADD PRIMARY KEY (`idBitacoraCliente`);

--
-- Indices de la tabla `bitacoraempleado`
--
ALTER TABLE `bitacoraempleado`
  ADD PRIMARY KEY (`idBitacoraEmpleado`);

--
-- Indices de la tabla `bitacoraproducto`
--
ALTER TABLE `bitacoraproducto`
  ADD PRIMARY KEY (`idBitacoraProducto`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idComentario`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`idDireccion`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`idImagen`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`idMetodo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacoracliente`
--
ALTER TABLE `bitacoracliente`
  MODIFY `idBitacoraCliente` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `bitacoraempleado`
--
ALTER TABLE `bitacoraempleado`
  MODIFY `idBitacoraEmpleado` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `bitacoraproducto`
--
ALTER TABLE `bitacoraproducto`
  MODIFY `idBitacoraProducto` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idCategoria` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idComentario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `idDireccion` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idEmpleado` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `idImagen` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  MODIFY `idMetodo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idProducto` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idProveedor` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
