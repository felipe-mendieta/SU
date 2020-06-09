-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2020 at 11:43 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `fecha`) VALUES
(1, 'vistas/img/slide/slide1/orquesta.jpg', 'slideOpcion1', '', '', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"20%\",\r\n	\"left\": \"10%\",\r\n	\"right\": \"\"\r\n}', '{\"texto\": \"Descubre y atiende a eventos.\" ,\"color\": \"#FFFF\"}', '{\"texto\": \"Planifica y vende tus entradas.\" ,\"color\": \"#FFFF\"}', '', '', '#', '2020-06-09 06:23:22'),
(2, 'vistas/img/slide/slide2/empanadas.jpg', 'slideOpcion1', '', '', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"20%\",\r\n	\"left\": \"10%\",\r\n	\"right\": \"\"\r\n}', '{\"texto\": \"Tómate un descanso\" ,\"color\": \"#FFFF\"}', '{\"texto\": \"Disfruta de un café, un pastel o una cerveza.\" ,\"color\": \"#FFFF\"}', '{\"texto\": \"Lleva a tus amigos!\" ,\"color\": \"#FFFF\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-06-09 06:24:55'),
(3, 'vistas/img/slide/slide3/fondo2.jpg', 'slideOpcion2', 'vistas/img/slide/slide3/iphone.png', '{\r\n	\"width\": \"35%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\",\r\n	\"right\": \"\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"¿Deseeas comprar o vender?\" ,\"color\": \"#eee\"}', '{\"texto\": \"Publica tus productos y míralos irse.\" ,\"color\": \"#ccc\"}', '{\"texto\": \"¡Obtén ese celular que tanto querías!\" ,\"color\": \"#aaa\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-06-09 06:28:36'),
(4, 'vistas/img/slide/slide4/fondo3.jpg', 'slideOpcion1', '', '', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"20%\",\r\n	\"left\": \"10%\",\r\n	\"right\": \"\"\r\n}', '{\"texto\": \"Ofrece tus servicios mientras haces amigos\" ,\"color\": \"#FFFF\"}', '{\"texto\": \"¿Necesitas tutorías? Ponte en contacto con alguien disponible.\" ,\"color\": \"#FFFF\"}', '{\"texto\": \"Ofrece y encuentra cualquier tipo de servicio.\" ,\"color\": \"#FFFF\"}', '', '', '2020-06-09 06:28:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
