-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2020 a las 04:16:49
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `email`, `foto`, `password`, `perfil`, `estado`, `fecha`) VALUES
(6, 'Felipe Mendieta', 'felipe.mendieta98@ucuenca.edu.ec', 'vistas/img/perfiles/455.png', '$2a$07$asxx54ahjppf45sd87a5auEcb6YcjpXBNPZiq9lJZrviCujQFpR8W', 'administrador', 1, '2020-08-06 08:18:15'),
(7, 'Davicho Pinos', 'alex.pinos@ucuenca.edu.ec', 'vistas/img/perfiles/637.png', '$2a$07$asxx54ahjppf45sd87a5auEcb6YcjpXBNPZiq9lJZrviCujQFpR8W', 'administrador', 1, '2020-08-06 08:15:38'),
(8, 'Priscilla Cedillo', 'priscila.cedillo@ucuenca.edu.ec', 'vistas/img/perfiles/339.png', '$2a$07$asxx54ahjppf45sd87a5au7o42P/h1WU6ykKEZPBs5ctSnVvPNFve', 'administrador', 1, '2020-08-07 03:13:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeceras`
--

CREATE TABLE `cabeceras` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `palabrasClaves` text COLLATE utf8_spanish_ci NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cabeceras`
--

INSERT INTO `cabeceras` (`id`, `ruta`, `titulo`, `descripcion`, `palabrasClaves`, `portada`, `fecha`) VALUES
(1, 'inicio', 'Tienda Virtual', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia', 'Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse', 'vistas/img/cabeceras/default.jpg', '2017-11-17 14:58:16'),
(2, 'desarrollo-web', 'Desarrollo Web', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia', 'Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse', 'vistas/img/cabeceras/web.jpg', '2017-11-17 14:59:28'),
(5, 'conciertos', 'Conciertos', 'Conciertos de la orquesta sinfónica o de los estudiantes de la Universidad de Cuenca', 'concierto,orquesta,artes', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:19:31'),
(6, 'fiestas', 'Fiestas', 'Fiestas de la facultades de la Universidad de Cuenca. Generalmente fiestas de egresados o de gala de la universidad.', 'fiesta,egresados', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:23:56'),
(7, 'paseos', 'Paseos', 'Paseos de inicio de ciclo, bienvenida de los de primer ciclo,etc.', 'paseo,bienvenida', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:25:18'),
(8, 'universidad', 'Universidad', 'Eventos que realiza la universidad.', 'universidad', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:30:41'),
(9, 'libros', 'Libros', 'Los estudiantes pueden intercambiar libros.', 'trueque,cambio,libro', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:32:13'),
(10, 'tecnologia', 'Tecnología', 'Artículos tecnológicos ', 'tecnologia,tecnología', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:33:47'),
(11, 'videojuegos', 'Videojuegos', 'Cambio de juegos de video.', 'juego', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:34:16'),
(12, 'varios', 'Varios', 'Artículos variados para truequear.', 'trueque,varios', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:35:33'),
(13, 'computadores', 'Computadores', 'Compra de computadores entre estudiantes. Generalmente usados', 'calculadora,usado', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:41:14'),
(14, 'celulares', 'Celulares', 'Venta de celulares', 'celular', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 07:44:57'),
(15, 'paseo-inicio-de-ciclo', 'Paseo Inicio de Ciclo', 'Comienza el ciclo disfrutando el mejor paseo por el comienzo de clases. Conoce gente nueva, te esperamos.', 'paseo,bienbebida', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 08:06:42'),
(16, 'fiesta-inicio-de-ciclo', 'Fiesta Inicio de Ciclo', 'Fiesta de inicio de ciclo, no te lo puedes perder. Te esperamos.', 'inicio,ciclo', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 08:46:46'),
(17, 'calculo-de-varias-variables', 'Calculo de varias variables', 'Libro de ingeniería de intercambio.', 'libro', 'vistas/img/cabeceras/default/default.jpg', '2020-08-06 08:50:10'),
(19, 'entradas-conferencia-magistral', 'Entradas conferencia magistral', 'Conferencia acerca de inteligencia artificial. ', 'conferencia', 'vistas/img/cabeceras/entradas-conferencia-magistral.jpg', '2020-08-07 03:28:47'),
(20, 'entradas-evento-microsoft', 'Entradas evento microsoft', 'Reunion 13 años Microsoft Ucuenca', 'microsoft,comunidad', 'vistas/img/cabeceras/default/default.jpg', '2020-08-07 04:23:15'),
(21, 'taller-manualidades', 'Taller manualidades', 'Taller de manualidades, instrumentos incluidos', 'manualidades,artes', 'vistas/img/cabeceras/default/default.jpg', '2020-08-07 04:26:01'),
(22, 'taller-manualidades', 'Taller manualidades', 'Taller manualidades, facultad de artes. Instrumentos incluidos.', 'velas,artes,manualidades', 'vistas/img/cabeceras/default/default.jpg', '2020-08-07 04:27:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `estado`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(1, 'EVENTOS', 'eventos', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 03:18:11'),
(2, 'TRUEQUES', 'trueques', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:10:09'),
(4, 'TECNOLOGÍA', 'tecnologia', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-03-13 00:06:23'),
(5, 'CURSOS', 'cursos', 1, 1, 9.99, 0, 'vistas/img/ofertas/cursos.jpg', '2018-03-29 23:59:59', '2020-08-06 04:20:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 8, 505, 0, '', '2020-08-07 01:08:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPayu` text COLLATE utf8_spanish_ci NOT NULL,
  `merchantIdPayu` int(11) NOT NULL,
  `accountIdPayu` int(11) NOT NULL,
  `apiKeyPayu` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`, `modoPayu`, `merchantIdPayu`, `accountIdPayu`, `apiKeyPayu`) VALUES
(1, 19, 1, 2, 10, 15, 'EC', 'sandbox', 'AYKH-zV-AaOSjCyS7Sk85mQrCnKgi6JATHZLScxb0T0HsYu7sjWYQ84DF6nTLB36xdhf4Qts2qsQnEl8', 'EJwj7gwgbySjmG3Free_mBzKOiBjxC8GUrveqaLYcwR4j7vLjWF0t0ekzHpeMV-x9Mnq8oS6aGGWCvXL', 'sandbox', 508029, 512321, '4Vj8eK4rloUd272L48hsrarnUA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci,
  `pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `envio`, `metodo`, `email`, `direccion`, `pais`, `cantidad`, `detalle`, `pago`, `fecha`) VALUES
(1, 8, 505, 2, 'paypal', 'sb-7sif42825699@personal.example.com', '1 Main St, San Jose, CA, 95131', 'US', 1, 'Entradas conferencia magistral-Ninguna', '2', '2020-08-07 01:08:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `id_usuario`, `id_producto`, `fecha`) VALUES
(1, 9, 469, '2018-03-26 22:03:34'),
(2, 9, 469, '2018-03-26 22:03:35'),
(3, 9, 467, '2018-03-26 22:03:39'),
(4, 9, 3, '2018-03-26 22:03:43'),
(5, 9, 469, '2018-03-26 22:03:54'),
(6, 9, 470, '2018-03-26 22:03:57'),
(7, 9, 467, '2018-03-26 22:04:00'),
(8, 9, 4, '2018-03-26 22:04:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `nuevosUsuarios` int(11) NOT NULL,
  `nuevasVentas` int(11) NOT NULL,
  `nuevasVisitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `nuevosUsuarios`, `nuevasVentas`, `nuevasVisitas`) VALUES
(1, 2, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `apiFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `pixelFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `googleAnalytics` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `apiFacebook`, `pixelFacebook`, `googleAnalytics`, `fecha`) VALUES
(1, '#000000', '#ffffff', '#454b54', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[{\"red\":\"fa-facebook\",\"estilo\":\"facebookBlanco\",\"url\":\"http://facebook.com/\",\"activo\":1},{\"red\":\"fa-youtube\",\"estilo\":\"youtubeBlanco\",\"url\":\"http://youtube.com/\",\"activo\":1},{\"red\":\"fa-twitter\",\"estilo\":\"twitterBlanco\",\"url\":\"http://twitter.com/\",\"activo\":1},{\"red\":\"fa-google-plus\",\"estilo\":\"google-plusBlanco\",\"url\":\"http://google.com/\",\"activo\":1},{\"red\":\"fa-instagram\",\"estilo\":\"instagramBlanco\",\"url\":\"http://instagram.com/\",\"activo\":1}]', '\r\n      		<script>   window.fbAsyncInit = function() {     FB.init({       appId      : \'631387077509801\',       cookie     : true,       xfbml      : true,       version    : \'v7.0\'     });            FB.AppEvents.logPageView();             };    (function(d, s, id){      var js, fjs = d.getElementsByTagName(s)[0];      if (d.getElementById(id)) {return;}      js = d.createElement(s); js.id = id;      js.src = \"https://connect.facebook.net/en_US/sdk.js\";      fjs.parentNode.insertBefore(js, fjs);    }(document, \'script\', \'facebook-jssdk\'));  </script>', '\r\n  			<!-- Facebook Pixel Code --> 	<script> 	  !function(f,b,e,v,n,t,s) 	  {if(f.fbq)return;n=f.fbq=function(){n.callMethod? 	  n.callMethod.apply(n,arguments):n.queue.push(arguments)}; 	  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\'; 	  n.queue=[];t=b.createElement(e);t.async=!0; 	  t.src=v;s=b.getElementsByTagName(e)[0]; 	  s.parentNode.insertBefore(t,s)}(window, document,\'script\', 	  \'https://connect.facebook.net/en_US/fbevents.js\'); 	  fbq(\'init\', \'131737410786111\'); 	  fbq(\'track\', \'PageView\'); 	</script> 	<noscript><img height=\"1\" width=\"1\" style=\"display:none\" 	  src=\"https://www.facebook.com/tr?id=149877372404434&ev=PageView&noscript=1\" 	/></noscript> <!-- End Facebook Pixel Code -->    \r\n  			', '  \r\n  				<!-- Global site tag (gtag.js) - Google Analytics --> 	<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-999999-1\"></script> 	<script> 	  window.dataLayer = window.dataLayer || []; 	  function gtag(){dataLayer.push(arguments);} 	  gtag(\'js\', new Date());  	  gtag(\'config\', \'UA-9999999-1\'); 	</script>      \r\n            \r\n            \r\n            \r\n      ', '2020-08-06 03:27:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `estado`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `peso`, `entrega`, `fecha`) VALUES
(503, 1, 23, 'fisico', 'fiesta-inicio-de-ciclo', 1, 'Fiesta Inicio de Ciclo', 'Fiesta de inicio de ciclo, no te lo puedes perder. Te esperamos....', 'Fiesta de inicio de ciclo, no te lo puedes perder. Te esperamos.', '[{\"foto\":\"vistas/img/multimedia/fiesta-inicio-de-ciclo/party.png\"}]', '{\"Talla\":[],\"Color\":[],\"Marca\":[]}', 10, 'vistas/img/productos/fiesta-inicio-de-ciclo.png', 4, 0, 0, 0, 0, 0, 0, 0, 0, '', '2020-08-18 00:00:00', 0, 0, '2020-08-07 01:09:19'),
(505, 1, 25, 'fisico', 'entradas-conferencia-magistral', 1, 'Entradas conferencia magistral', 'Conferencia acerca de inteligencia artificial. ...', 'Conferencia acerca de inteligencia artificial. ', '[{\"foto\":\"vistas/img/multimedia/entradas-conferencia-magistral/inteligencia.jpeg\"},{\"foto\":\"vistas/img/multimedia/entradas-conferencia-magistral/conferencia.jpeg\"}]', '{\"Talla\":[],\"Color\":[],\"Marca\":[\"Ninguna\"]}', 2, 'vistas/img/productos/entradas-conferencia-magistral.jpg', 10, 1, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0, 0, '2020-08-07 01:09:26'),
(508, 1, 25, 'fisico', 'taller-manualidades', 1, 'Taller manualidades', 'Taller manualidades, facultad de artes. Instrumentos incluidos....', 'Taller manualidades, facultad de artes. Instrumentos incluidos.', '[{\"foto\":\"vistas/img/multimedia/taller-manualidades/velas.jpeg\"},{\"foto\":\"vistas/img/multimedia/taller-manualidades/velasvar.jpeg\"}]', '{\"Talla\":[],\"Color\":[],\"Marca\":[]}', 5, 'vistas/img/productos/taller-manualidades.jpg', 3, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0, 0, '2020-08-07 01:04:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
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
  `orden` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `nombre`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `orden`, `fecha`) VALUES
(2, 'CURSO', 'vistas/img/slide/default/back_default.jpg', 'slideOpcion2', 'vistas/img/slide/slide2/curso.png', '{\"top\":\"10\",\"right\":\"\",\"left\":\"15\",\"width\":\"30\"}', '{\"top\":\"15\",\"right\":\"15\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"CURSOS DE PROGRAMACIÓN\",\"color\":\"#333\"}', '{\"texto\":\"Califica a tus profesores\",\"color\":\"#777\"}', '{\"texto\":\"Obtén beneficios extra\",\"color\":\"#888\"}', 'VER PRODUCTO', '#', 3, '2020-08-06 04:18:27'),
(3, 'MÓVIL', 'vistas/img/slide/slide3/fondo2.jpg', 'slideOpcion2', 'vistas/img/slide/slide3/iphone.png', '{\"top\":\"10\",\"right\":\"\",\"left\":\"10\",\"width\":\"35\"}', '{\"top\":\"15\",\"right\":\"15\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"¿Deseas comprar o vender?\",\"color\":\"#eee\"}', '{\"texto\":\"Publica tus productos y obtén tus ganancias.\",\"color\":\"#ccc\"}', '{\"texto\":\"¡Obtén ese celular que tanto querías!\",\"color\":\"#aaa\"}', 'VER PRODUCTO', '#', 4, '2020-08-06 04:17:26'),
(4, 'EMPANADA', 'vistas/img/slide/slide4/fondo.jpg', 'slideOpcion1', '', '{\"top\":\"\",\"right\":\"\",\"left\":\"\",\"width\":\"\"}', '{\"top\":\"20\",\"right\":\"\",\"left\":\"10\",\"width\":\"40\"}', '{\"texto\":\"Tómate un descanso\",\"color\":\"#ffffff\"}', '{\"texto\":\"Disfruta de un café, un pastel o una cerveza.\",\"color\":\"#ffffff\"}', '{\"texto\":\"¡Lleva a tus amigos!\",\"color\":\"#ffffff\"}', '', '', 1, '2020-08-06 04:10:58'),
(6, 'ORQUESTA', 'vistas/img/slide/slide6/fondo.jpg', 'slideOpcion1', '', '{\"top\":\"\",\"right\":\"0\",\"left\":\"\",\"width\":\"0\"}', '{\"top\":\"20\",\"right\":\"\",\"left\":\"15\",\"width\":\"40\"}', '{\"texto\":\"Descubre y atiende a eventos.\",\"color\":\"#ffffff\"}', '{\"texto\":\"Planifica y vende tus entradas.\",\"color\":\"#ffffff\"}', '{\"texto\":\"\",\"color\":\"#ffffff\"}', 'VER EVENTO', '#', 5, '2020-08-06 04:15:57'),
(7, 'TUTORIAS', 'vistas/img/slide/slide7/fondo.jpg', 'slideOpcion1', '', '{\"top\":\"\",\"right\":\"\",\"left\":\"\",\"width\":\"\"}', '{\"top\":\"20\",\"right\":\"\",\"left\":\"15\",\"width\":\"40\"}', '{\"texto\":\"Ofrece tus servicios mientras haces amigos\",\"color\":\"#ffffff\"}', '{\"texto\":\"¿Necesitas tutorías? Ponte en contacto con alguien disponible.\",\"color\":\"#ffffff\"}', '{\"texto\":\"Ofrece y encuentra cualquier tipo de servicio.\",\"color\":\"#ffffff\"}', 'VER PRODUCTO', '#', 2, '2020-08-06 04:15:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `estado`, `ofertadoPorCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(0, 'Celulares', 4, 'celulares', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:59:51'),
(18, 'Desarrollo Web', 5, 'desarrollo-web', 1, 1, 1, 9.99, 0, 'vistas/img/ofertas/cursos.jpg', '2018-03-29 23:59:59', '2020-08-06 04:20:33'),
(19, 'Aplicaciones Móviles', 5, 'aplicaciones-moviles', 1, 1, 1, 9.99, 0, 'vistas/img/ofertas/cursos.jpg', '2018-03-29 23:59:59', '2020-08-06 04:20:33'),
(20, 'Diseño Gráfico', 5, 'diseno-grafico', 1, 1, 1, 9.99, 0, 'vistas/img/ofertas/cursos.jpg', '2018-03-29 23:59:59', '2020-08-06 04:20:33'),
(21, 'Marketing Digital', 5, 'marketing-digital', 1, 1, 1, 9.99, 0, 'vistas/img/ofertas/cursos.jpg', '2018-03-29 23:59:59', '2020-08-06 04:20:33'),
(22, 'Conciertos', 1, 'conciertos', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:19:31'),
(23, 'Fiestas', 1, 'fiestas', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:23:56'),
(24, 'Paseos', 1, 'paseos', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:25:18'),
(25, 'Universidad', 1, 'universidad', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:30:41'),
(26, 'Libros', 2, 'libros', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:32:13'),
(27, 'Tecnología', 2, 'tecnologia', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:39:54'),
(28, 'Videojuegos', 2, 'videojuegos', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:34:16'),
(29, 'Varios', 2, 'varios', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:35:33'),
(30, 'Computadores', 4, 'computadores', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2020-08-06 07:41:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`) VALUES
(16, 'FELIPE', '$2a$07$asxx54ahjppf45sd87a5auNv.eCseagOQB62cput5c6QTTJqjqz86', 'fmenrollments@gmail.com', 'directo', '', 0, 'f6593581ef73e04015c72de9963164db', '2020-08-05 04:48:19'),
(18, 'felipe mendieta', '$2a$07$asxx54ahjppf45sd87a5auNv.eCseagOQB62cput5c6QTTJqjqz86', 'felipe.mendieta98@ucuenca.edu.ec', 'directo', '', 0, '28498df5a1a198836639568843938d21', '2020-08-06 08:20:49'),
(19, 'Felipe Mendieta', 'null', 'jfmendieta0219@gmail.com', 'facebook', 'http://graph.facebook.com/3353940577995959/picture?type=large', 0, 'null', '2020-08-06 03:07:01'),
(20, 'ALEX DAVID PINOS PALACIOS', 'null', 'alex.pinos@ucuenca.edu.ec', 'google', 'https://lh3.googleusercontent.com/a-/AOh14Ggza8sNmdqXRujlsY-qbbkgZpvzV6crP6wGxhqq=s96-c', 0, 'null', '2020-08-07 01:01:58'),
(21, 'fdsafklj', '$2a$07$asxx54ahjppf45sd87a5aub7LdtrTXnn.ZQdALsthndsluPeTbv.a', 'lalatorreslaloca@gmail.com', 'directo', '', 1, '7323f2c5c7c571d0db5fd0b7fe654e20', '2020-08-07 01:47:13'),
(22, 'asdfdsf', '$2a$07$asxx54ahjppf45sd87a5auVUN29k0//dWkzLo4ias1ljMdjdKvDI.', 'asdfsd@gmail.com', 'directo', '', 1, '7ad9ae2984fb008ff725719deb91753a', '2020-08-07 01:48:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspaises`
--

CREATE TABLE `visitaspaises` (
  `id` int(11) NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspaises`
--

INSERT INTO `visitaspaises` (`id`, `pais`, `codigo`, `cantidad`, `fecha`) VALUES
(1, 'Derecho', 'US', 2, '2020-08-06 06:32:46'),
(2, 'Ingenieria', 'JP', 70, '2020-08-06 06:32:54'),
(3, 'Arquitectura', 'ES', 10, '2020-08-06 06:33:02'),
(4, 'Artes', 'CO', 5, '2020-08-06 06:35:57'),
(5, 'CCQQ', 'CN', 3, '2020-08-06 06:33:19'),
(6, 'Filosofia', 'DE', 34, '2020-08-06 06:33:30'),
(7, 'Economia', 'MX', 8, '2020-08-06 06:33:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspersonas`
--

CREATE TABLE `visitaspersonas` (
  `id` int(11) NOT NULL,
  `ip` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `visitas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspersonas`
--

INSERT INTO `visitaspersonas` (`id`, `ip`, `pais`, `visitas`, `fecha`) VALUES
(1, '153.202.197.216', 'Ingenieria', 1, '2020-08-06 06:34:40'),
(3, '249.170.168.184', 'Arquitectura', 1, '2020-08-06 06:36:18'),
(6, '234.13.198.119', 'Artes', 1, '2020-08-06 06:37:34'),
(7, '141.46.61.241', 'Filosofia', 1, '2020-08-06 06:40:18'),
(8, '40.179.75.60', 'Derecho', 1, '2020-08-06 06:39:35'),
(9, '153.205.198.22', 'Ingenieria', 1, '2020-08-06 06:40:36'),
(10, '148.21.177.158', 'Derecho', 1, '2020-08-06 06:39:38'),
(11, '40.224.125.226', 'Derecho', 1, '2020-08-06 06:39:41'),
(12, '10.98.135.68', 'CCQQ', 1, '2020-08-06 06:40:52'),
(13, '23.121.157.131', 'Derecho', 1, '2020-08-06 06:39:44'),
(17, '8.12.238.123', 'Derecho', 1, '2020-08-06 06:39:48'),
(18, '148.21.177.158', 'Derecho', 1, '2020-08-06 06:39:52'),
(19, '153.202.197.216', 'Ingeneria', 1, '2020-08-06 06:38:39'),
(27, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:38:43'),
(31, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:38:45'),
(32, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:38:48'),
(33, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:38:51'),
(34, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:38:53'),
(35, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:38:57'),
(36, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:39:00'),
(37, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:39:03'),
(38, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:39:07'),
(39, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:39:10'),
(40, '153.205.198.22', 'Ingeneria', 1, '2020-08-06 06:39:13'),
(41, '153.205.198.22', 'Japan', 1, '2017-12-19 12:54:21'),
(42, '153.205.198.22', 'Unknown', 1, '2017-12-30 15:41:47'),
(43, '153.205.198.22', 'Japan', 1, '2018-01-02 15:46:52'),
(44, '153.205.198.22', 'Japan', 1, '2018-01-03 13:54:29'),
(45, '153.205.198.22', 'Japan', 1, '2018-01-04 16:54:03'),
(46, '153.205.198.22', 'Japan', 1, '2018-01-05 17:17:05'),
(47, '153.205.198.22', 'Japan', 1, '2018-01-08 13:57:21'),
(48, '153.205.198.22', 'Japan', 1, '2018-01-09 15:46:40'),
(49, '153.205.198.22', 'Japan', 1, '2018-01-10 20:34:12'),
(50, '153.205.198.22', 'Japan', 1, '2018-01-11 14:08:56'),
(51, '153.205.198.22', 'Japan', 1, '2018-01-15 18:10:09'),
(52, '153.205.198.22', 'Japan', 1, '2018-01-16 16:15:33'),
(53, '153.205.198.22', 'Japan', 1, '2018-01-17 21:39:17'),
(54, '153.205.198.22', 'Japan', 1, '2018-01-18 20:16:09'),
(55, '153.205.198.22', 'Japan', 1, '2018-01-19 15:05:32'),
(56, '153.205.198.22', 'Japan', 1, '2018-01-22 14:38:48'),
(57, '153.205.198.22', 'Japan', 1, '2018-01-25 15:44:30'),
(58, '153.205.198.22', 'Japan', 1, '2018-01-26 21:24:38'),
(59, '153.205.198.22', 'Japan', 1, '2018-01-29 20:45:50'),
(60, '153.205.198.22', 'Japan', 1, '2018-01-30 22:32:35'),
(61, '153.205.198.22', 'Japan', 1, '2018-01-31 18:35:33'),
(62, '153.205.198.22', 'Japan', 1, '2018-02-07 17:37:45'),
(63, '153.205.198.22', 'Japan', 1, '2018-02-13 16:52:37'),
(64, '153.205.198.22', 'Japan', 1, '2018-02-14 13:33:04'),
(65, '153.205.198.22', 'Japan', 1, '2018-02-16 13:50:44'),
(66, '153.205.198.22', 'Japan', 1, '2018-02-23 17:06:23'),
(67, '153.205.198.22', 'Japan', 1, '2018-03-02 17:25:19'),
(68, '153.205.198.22', 'Japan', 1, '2018-03-03 12:06:54'),
(69, '153.205.198.22', 'Japan', 1, '2018-03-05 16:27:57'),
(70, '153.205.198.22', 'Japan', 1, '2018-03-06 17:59:36'),
(71, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(72, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(73, '153.205.198.22', 'Japan', 1, '2018-03-12 19:38:37'),
(74, '153.205.198.22', 'Japan', 1, '2018-03-13 20:35:47'),
(75, '153.205.198.22', 'Japan', 1, '2018-03-14 19:41:17'),
(76, '153.205.198.22', 'Japan', 1, '2018-03-15 16:41:11'),
(77, '153.205.198.22', 'Japan', 1, '2018-03-16 19:21:45'),
(78, '153.205.198.22', 'Japan', 1, '2018-03-17 12:23:58'),
(79, '153.205.198.22', 'Japan', 1, '2018-03-19 00:38:47'),
(80, '153.205.198.22', 'Japan', 1, '2018-03-19 12:57:20'),
(81, '153.205.198.22', 'Japan', 1, '2018-03-20 20:33:33'),
(82, '153.205.198.22', 'Japan', 1, '2018-03-21 19:30:58'),
(83, '153.205.198.22', 'Japan', 1, '2018-03-23 19:41:03'),
(84, '153.205.198.22', 'Japan', 1, '2018-03-26 12:42:06'),
(85, '153.205.198.22', 'Japan', 1, '2018-03-27 13:26:30'),
(86, '163.172.160.190', 'France', 1, '2018-03-27 23:23:14'),
(87, '153.205.198.22', 'Japan', 1, '2020-08-02 00:59:21'),
(88, '153.205.198.22', 'Japan', 1, '2020-08-03 21:40:37'),
(89, '153.205.198.22', 'Japan', 1, '2020-08-04 05:11:40'),
(90, '153.205.198.22', 'Japan', 1, '2020-08-05 05:00:47'),
(91, '153.205.198.22', 'Japan', 1, '2020-08-06 05:22:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
