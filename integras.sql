-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2017 a las 18:36:40
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catering`
--

CREATE TABLE `catering` (
  `id` int(11) NOT NULL,
  `horaLlegada` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `horaInicio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `horaFin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noComensales` int(11) NOT NULL,
  `observComensales` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observMenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `especificaciones` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `catering`
--

INSERT INTO `catering` (`id`, `horaLlegada`, `horaInicio`, `horaFin`, `Tipo`, `noComensales`, `observComensales`, `observMenu`, `especificaciones`, `id_servicio`) VALUES
(1, '14:00', '14:30', '17:00', 'Inauguración de la cafetería', 20, 'Es la primera vez que tratamos con ellos,debemos darles la mejor impresión posible del negocio.', 'Tenemos un menú sencillo,no será problema para las empleadas extra.', 'La duración del catering puede aumentar si contamos con más clientes de lo esperado.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CIF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Domicilio_Fiscal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CP` int(11) NOT NULL,
  `Municipio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Provincia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `No_Cuenta_Bancaria` int(11) NOT NULL,
  `Persona_Contacto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Telefono_Contacto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TelefonoMovil_Contacto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Razon_Social` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `CIF`, `Domicilio_Fiscal`, `CP`, `Municipio`, `Provincia`, `No_Cuenta_Bancaria`, `Persona_Contacto`, `Telefono_Contacto`, `TelefonoMovil_Contacto`, `Razon_Social`) VALUES
(5, 'Manuel Ávila García', 'B56214945', 'Calle Juan de Austria', 46900, 'Torrent', 'Valencia', 54652456, 'Manuel Ávila García', '961564458', '607460557', 'Symfony S.A'),
(6, 'Carla Fernandez Pons', '51236984', 'Carrer Esteve Paluzié', 46470, 'Catarroja', 'Valencia', 42513680, 'Carla Fernandez Pons', '964468527', '607468552', 'Muebles Catarroja'),
(7, 'Laura Navarro Fortea', 'G42563285', 'Carrer Sant Josep', 46210, 'Picaña', 'Valencia', 45236952, 'Juan Medina Gómez', '962013357', '610225498', 'Cafeteía Centre Cultural de Picanya');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limpieza`
--

CREATE TABLE `limpieza` (
  `id` int(11) NOT NULL,
  `productos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `especificaciones` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `limpieza`
--

INSERT INTO `limpieza` (`id`, `productos`, `especificaciones`, `id_servicio`) VALUES
(1, 'La empleada tiene disponible los productos necesarios en la habitación de almacenamiento.', 'Al trabajar con ordenadores es importante que a la hora de limpiar tengan cuidado para no desconectar cables.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `id` int(11) NOT NULL,
  `material` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `especificaciones` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otro`
--

CREATE TABLE `otro` (
  `id` int(11) NOT NULL,
  `Especificaciones` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(11) NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `Persona_contacto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Telefono_contacto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha` datetime NOT NULL,
  `Observaciones` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `cliente`, `Persona_contacto`, `Telefono_contacto`, `Direccion`, `Fecha`, `Observaciones`, `Estado`, `Tipo`) VALUES
(1, 5, 'Manuel Ávila García', '961564458', 'Calle Juan de Austria Torrent Valencia', '2017-02-27 08:30:00', 'Para acceder a algunas salas es necesario que las empleadas pidan las llaves correspondientes en recepción.', 'Activo', 'Limpieza'),
(2, 7, 'Laura Navarro Fortea', '610225498', 'Cafeteía Centre Cultural de Picanya', '2017-03-02 14:30:00', 'Necesitamos empleadas que tengan experiencia tratando con clientes.', 'Activo', 'Catering');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciosdeunatrabajadora`
--

CREATE TABLE `serviciosdeunatrabajadora` (
  `trabajadora_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `serviciosdeunatrabajadora`
--

INSERT INTO `serviciosdeunatrabajadora` (`trabajadora_id`, `servicio_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadora`
--

CREATE TABLE `trabajadora` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha_Alta` date NOT NULL,
  `Puesto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `No_Cuenta_Banco` int(11) NOT NULL,
  `No_Seguridad_Social` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DNI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `trabajadora`
--

INSERT INTO `trabajadora` (`id`, `Nombre`, `Apellidos`, `Direccion`, `Fecha_Alta`, `Puesto`, `No_Cuenta_Banco`, `No_Seguridad_Social`, `DNI`, `Fecha_Nac`, `Telefono`, `Estado`) VALUES
(1, 'Juana', 'Díaz Santamaría', 'Carrer La Senyera 15 B Picaña', '2017-02-21', 'Limpiadora', 65246952, '28 12345678 40', '25486251H', '1988-11-18', 607458112, 'Disponible'),
(2, 'María', 'De la Cruz Navarro', 'Calle Sedaví 12 Puerta 5', '1976-01-02', 'Cocinera', 73654268, '14 5436985233', '73216745A', '1970-09-19', 96125447, 'Disponible'),
(3, 'Clara', 'Fernandez Fernandez', 'Calle del Doctor Gómez Ferrer 21 25 Picaña', '2016-10-04', 'Limpiadora', 421365214, '55 12365842 66', '42312541G', '1977-07-17', 652152235, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `roles`) VALUES
(1, 'Corifeus', 'transylv@gmail.com', '$2y$13$gX0WBwXFdQ821kZmLpe6PeGMJwVALsao0QKCHctj/OV43h.XaT8iq', '["ROLE_ADMIN"]'),
(2, 'Admin201', 'Admin201@gmail.com', '$2y$13$Q.JsNL4z0SLbr3L1wGwVK.frawmLTNll0BuL/IQIKXXBRcK917xLu', '["ROLE_ADMIN"]'),
(3, 'AnaAdmin', 'AnaAdmin@gmail.com', '$2y$13$vnlrCEsfI7v2EqgqiYVvcO1xi6/DcAs7sj1ZAamJ3F1yo6Ve2VW0y', '["ROLE_ADMIN"]');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `limpieza`
--
ALTER TABLE `limpieza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `otro`
--
ALTER TABLE `otro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CB86F22AF41C9B25` (`cliente`);

--
-- Indices de la tabla `serviciosdeunatrabajadora`
--
ALTER TABLE `serviciosdeunatrabajadora`
  ADD PRIMARY KEY (`trabajadora_id`,`servicio_id`),
  ADD KEY `IDX_CBEAF321B765AD0B` (`trabajadora_id`),
  ADD KEY `IDX_CBEAF32171CAA3E7` (`servicio_id`);

--
-- Indices de la tabla `trabajadora`
--
ALTER TABLE `trabajadora`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FE99647AE92867B1` (`DNI`),
  ADD UNIQUE KEY `UNIQ_FE99647A38916829` (`Telefono`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catering`
--
ALTER TABLE `catering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `limpieza`
--
ALTER TABLE `limpieza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `otro`
--
ALTER TABLE `otro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `trabajadora`
--
ALTER TABLE `trabajadora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `FK_CB86F22AF41C9B25` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `serviciosdeunatrabajadora`
--
ALTER TABLE `serviciosdeunatrabajadora`
  ADD CONSTRAINT `FK_CBEAF32171CAA3E7` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CBEAF321B765AD0B` FOREIGN KEY (`trabajadora_id`) REFERENCES `trabajadora` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
