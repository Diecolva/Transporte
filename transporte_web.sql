-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2023 a las 00:56:33
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transporte_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Transportistas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cliente', 7, 'add_cliente'),
(26, 'Can change cliente', 7, 'change_cliente'),
(27, 'Can delete cliente', 7, 'delete_cliente'),
(28, 'Can view cliente', 7, 'view_cliente'),
(29, 'Can add vehículo', 8, 'add_vehículo'),
(30, 'Can change vehículo', 8, 'change_vehículo'),
(31, 'Can delete vehículo', 8, 'delete_vehículo'),
(32, 'Can view vehículo', 8, 'view_vehículo'),
(33, 'Can add orden de servicio', 9, 'add_ordendeservicio'),
(34, 'Can change orden de servicio', 9, 'change_ordendeservicio'),
(35, 'Can delete orden de servicio', 9, 'delete_ordendeservicio'),
(36, 'Can view orden de servicio', 9, 'view_ordendeservicio'),
(37, 'Can add cotización', 10, 'add_cotización'),
(38, 'Can change cotización', 10, 'change_cotización'),
(39, 'Can delete cotización', 10, 'delete_cotización'),
(40, 'Can view cotización', 10, 'view_cotización'),
(41, 'Can add bitacora', 11, 'add_bitacora'),
(42, 'Can change bitacora', 11, 'change_bitacora'),
(43, 'Can delete bitacora', 11, 'delete_bitacora'),
(44, 'Can view bitacora', 11, 'view_bitacora'),
(45, 'Can add imagen', 12, 'add_imagen'),
(46, 'Can change imagen', 12, 'change_imagen'),
(47, 'Can delete imagen', 12, 'delete_imagen'),
(48, 'Can view imagen', 12, 'view_imagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$trMVqdhgizIv5ysJHj5UgF$7WrTR5JsI14HRCM6YY3JWANSF0nbNIx8LRXCeSjvHVY=', '2023-07-11 02:09:11.375949', 1, 'admin', '', '', 'transportestdad2012@gmail.com', 1, 1, '2023-07-05 23:05:44.830926'),
(2, 'pbkdf2_sha256$600000$3okRcvdoLYgw6kUgCbEb7a$o2DEXe74UC2TR4pzlnVzYCz0juNDlB1+47hCGgeAbRg=', NULL, 0, 'Douglas', '', '', '', 0, 1, '2023-07-05 23:17:39.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-05 23:08:25.231311', '2', 'Diego', 1, '[{\"added\": {}}]', 10, 1),
(2, '2023-07-05 23:08:32.481774', '2', 'Diego', 3, '', 10, 1),
(3, '2023-07-05 23:17:39.744785', '2', 'Douglas', 1, '[{\"added\": {}}]', 4, 1),
(4, '2023-07-05 23:17:41.220920', '2', 'Douglas', 2, '[]', 4, 1),
(5, '2023-07-05 23:17:50.288731', '1', 'Transportistas', 1, '[{\"added\": {}}]', 3, 1),
(6, '2023-07-05 23:17:59.248099', '2', 'Douglas', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(7, '2023-07-05 23:18:27.957017', '1', 'Diego', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-07-05 23:18:36.602010', '1', 'Bitacora object (1)', 1, '[{\"added\": {}}]', 11, 1),
(9, '2023-07-05 23:18:51.685984', '1', 'SCANIA R500 AZUL', 1, '[{\"added\": {}}]', 8, 1),
(10, '2023-07-06 00:22:36.339525', '1', 'Bitacora object (1)', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(11, '2023-07-06 00:57:30.357823', '1', 'Bitacora object (1)', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(12, '2023-07-07 01:36:52.590642', '4', 'Diego', 1, '[{\"added\": {}}]', 10, 1),
(13, '2023-07-07 02:06:46.457231', '3', 'David', 2, '[]', 10, 1),
(14, '2023-07-11 21:00:51.636812', '1', 'Bitacora 1', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(15, '2023-07-11 21:01:26.981220', '1', 'Bitacora 1', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 11, 1),
(16, '2023-07-12 19:22:53.180966', '1', 'Diego', 2, '[]', 10, 1),
(17, '2023-07-12 19:23:08.201659', '1', 'Diego', 2, '[{\"changed\": {\"fields\": [\"Direcci\\u00f3n\"]}}]', 7, 1),
(18, '2023-07-12 19:27:31.381163', '1', 'SCANIA R500 AZUL', 1, '[{\"added\": {}}]', 8, 1),
(19, '2023-07-12 21:54:28.795962', '1', 'SCANIA R500 AZUL', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-07-12 21:55:01.020160', '2', 'En evaluación', 1, '[{\"added\": {}}]', 9, 1),
(21, '2023-07-12 22:06:58.595849', '3', 'Diego', 1, '[{\"added\": {}}]', 9, 1),
(22, '2023-07-12 22:18:32.018449', '1', 'Bitacora 1', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(11, 'Transporteapp', 'bitacora'),
(7, 'Transporteapp', 'cliente'),
(10, 'Transporteapp', 'cotización'),
(12, 'Transporteapp', 'imagen'),
(9, 'Transporteapp', 'ordendeservicio'),
(8, 'Transporteapp', 'vehículo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-05 23:04:58.424463'),
(2, 'auth', '0001_initial', '2023-07-05 23:04:58.713049'),
(4, 'Transporteapp', '0002_remove_bitacora_orden_de_servicio_and_more', '2023-07-05 23:04:59.352457'),
(5, 'Transporteapp', '0003_alter_cliente_correo_alter_cliente_dirección_and_more', '2023-07-05 23:04:59.479330'),
(6, 'admin', '0001_initial', '2023-07-05 23:04:59.580981'),
(7, 'admin', '0002_logentry_remove_auto_add', '2023-07-05 23:04:59.585982'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-05 23:04:59.589983'),
(9, 'contenttypes', '0002_remove_content_type_name', '2023-07-05 23:04:59.624648'),
(10, 'auth', '0002_alter_permission_name_max_length', '2023-07-05 23:04:59.653617'),
(11, 'auth', '0003_alter_user_email_max_length', '2023-07-05 23:04:59.666622'),
(12, 'auth', '0004_alter_user_username_opts', '2023-07-05 23:04:59.671623'),
(13, 'auth', '0005_alter_user_last_login_null', '2023-07-05 23:04:59.727506'),
(14, 'auth', '0006_require_contenttypes_0002', '2023-07-05 23:04:59.730507'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2023-07-05 23:04:59.735509'),
(16, 'auth', '0008_alter_user_username_max_length', '2023-07-05 23:04:59.749257'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2023-07-05 23:04:59.762259'),
(18, 'auth', '0010_alter_group_name_max_length', '2023-07-05 23:04:59.774201'),
(19, 'auth', '0011_update_proxy_permissions', '2023-07-05 23:04:59.779263'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2023-07-05 23:04:59.794270'),
(21, 'sessions', '0001_initial', '2023-07-05 23:04:59.816275'),
(29, 'Transporteapp', '0001_initial', '2023-07-12 21:25:00.890736'),
(30, 'Transporteapp', '0002_ordendeservicio_cotizacion', '2023-07-12 21:25:00.923332'),
(31, 'Transporteapp', '0003_alter_cotización_cliente_and_more', '2023-07-12 21:25:01.116378'),
(32, 'Transporteapp', '0004_alter_ordendeservicio_cotizacion', '2023-07-12 21:25:01.123378'),
(33, 'Transporteapp', '0005_remove_ordendeservicio_cliente', '2023-07-12 21:25:01.174356'),
(34, 'Transporteapp', '0006_imagen_remove_bitacora_imagen_and_more', '2023-07-12 22:04:21.270107'),
(35, 'Transporteapp', '0007_alter_imagen_imagen', '2023-07-12 22:05:58.131084'),
(36, 'Transporteapp', '0008_remove_imagen_imagen_imagen_archivo', '2023-07-12 22:08:48.966814'),
(37, 'Transporteapp', '0009_remove_bitacora_imagenes_bitacora_imagen_and_more', '2023-07-12 22:17:38.548728'),
(38, 'Transporteapp', '0010_bitacora_imagen2_bitacora_imagen3', '2023-07-12 22:18:07.164819');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('m3tcsralgqiz9f43s1fpnly6p762oe4x', '.eJxVjEEOwiAQRe_C2hCgQNGl-56BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4k7gILU6_WwJ8cN0B3aHemsRW12VOclfkQbucGvHzerh_BwV6-daMSqHP2hjFybAdrQJwiZxFSyoggPYBmULQzvtBDTacs6YRMjtnBi3eH-sqN7o:1qJ2oR:3LkcHRhKWVmu83Oh9Fh_CLD-RzoXdzjhCdLkDuB6gmQ', '2023-07-25 02:09:11.379949');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_bitacora`
--

CREATE TABLE `transporteapp_bitacora` (
  `id` bigint(20) NOT NULL,
  `Orden_de_servicio_id` bigint(20) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL,
  `imagen2` varchar(100) NOT NULL,
  `imagen3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transporteapp_bitacora`
--

INSERT INTO `transporteapp_bitacora` (`id`, `Orden_de_servicio_id`, `imagen`, `imagen2`, `imagen3`) VALUES
(1, 2, 'bitacora_imagenes/donniedarko_sHX7PpA.jpg', 'bitacora_imagenes/dsad.png', 'bitacora_imagenes/efectomariposa.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_cliente`
--

CREATE TABLE `transporteapp_cliente` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dirección` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `teléfono` int(10) UNSIGNED NOT NULL CHECK (`teléfono` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transporteapp_cliente`
--

INSERT INTO `transporteapp_cliente` (`id`, `nombre`, `dirección`, `correo`, `teléfono`) VALUES
(1, 'Diego', '', 'diecolva95@gmail.com', 979614931);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_cotización`
--

CREATE TABLE `transporteapp_cotización` (
  `id` bigint(20) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `fechaSolicitud` date NOT NULL,
  `peso` int(10) UNSIGNED NOT NULL CHECK (`peso` >= 0),
  `dimensiones` varchar(50) DEFAULT NULL,
  `fechaInicio` date NOT NULL,
  `lugarOrigen` varchar(50) NOT NULL,
  `lugarDestino` varchar(50) NOT NULL,
  `cliente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transporteapp_cotización`
--

INSERT INTO `transporteapp_cotización` (`id`, `servicio`, `fechaSolicitud`, `peso`, `dimensiones`, `fechaInicio`, `lugarOrigen`, `lugarDestino`, `cliente_id`) VALUES
(1, 'Mudanza', '2023-07-12', 10000, '', '2023-07-16', 'Antofagasta', 'Valdivia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_ordendeservicio`
--

CREATE TABLE `transporteapp_ordendeservicio` (
  `id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `numeroSeguimiento` int(10) UNSIGNED NOT NULL CHECK (`numeroSeguimiento` >= 0),
  `comentario` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `valor` double NOT NULL,
  `vehiculo_id` bigint(20) NOT NULL,
  `cotizacion_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transporteapp_ordendeservicio`
--

INSERT INTO `transporteapp_ordendeservicio` (`id`, `fecha`, `numeroSeguimiento`, `comentario`, `estado`, `valor`, `vehiculo_id`, `cotizacion_id`) VALUES
(2, '2023-07-12', 51068, 'Prueba', 'En evaluación', 500000, 1, 1),
(3, '2023-07-12', 58081, 'Prueba', 'En evaluación', 465444, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_ordendeservicio_transportista`
--

CREATE TABLE `transporteapp_ordendeservicio_transportista` (
  `id` bigint(20) NOT NULL,
  `ordendeservicio_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transporteapp_ordendeservicio_transportista`
--

INSERT INTO `transporteapp_ordendeservicio_transportista` (`id`, `ordendeservicio_id`, `user_id`) VALUES
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_vehículo`
--

CREATE TABLE `transporteapp_vehículo` (
  `id` bigint(20) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `año` int(11) NOT NULL,
  `patente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transporteapp_vehículo`
--

INSERT INTO `transporteapp_vehículo` (`id`, `modelo`, `año`, `patente`) VALUES
(1, 'SCANIA R500 AZUL', 2023, 'SC - RV - 90');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `transporteapp_bitacora`
--
ALTER TABLE `transporteapp_bitacora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Transporteapp_bitaco_Orden_de_servicio_id_d7eb62a9_fk_Transport` (`Orden_de_servicio_id`);

--
-- Indices de la tabla `transporteapp_cliente`
--
ALTER TABLE `transporteapp_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transporteapp_cotización`
--
ALTER TABLE `transporteapp_cotización`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Transporteapp_cotiza_cliente_id_ed60b775_fk_Transport` (`cliente_id`);

--
-- Indices de la tabla `transporteapp_ordendeservicio`
--
ALTER TABLE `transporteapp_ordendeservicio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numeroSeguimiento` (`numeroSeguimiento`),
  ADD KEY `Transporteapp_ordend_vehiculo_id_341b6193_fk_Transport` (`vehiculo_id`),
  ADD KEY `Transporteapp_ordendeservicio_cotizacion_id_9fe401e8` (`cotizacion_id`);

--
-- Indices de la tabla `transporteapp_ordendeservicio_transportista`
--
ALTER TABLE `transporteapp_ordendeservicio_transportista`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Transporteapp_ordendeser_ordendeservicio_id_user__7b42a953_uniq` (`ordendeservicio_id`,`user_id`),
  ADD KEY `Transporteapp_ordend_user_id_33d43296_fk_auth_user` (`user_id`);

--
-- Indices de la tabla `transporteapp_vehículo`
--
ALTER TABLE `transporteapp_vehículo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `transporteapp_bitacora`
--
ALTER TABLE `transporteapp_bitacora`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `transporteapp_cliente`
--
ALTER TABLE `transporteapp_cliente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `transporteapp_cotización`
--
ALTER TABLE `transporteapp_cotización`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `transporteapp_ordendeservicio`
--
ALTER TABLE `transporteapp_ordendeservicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transporteapp_ordendeservicio_transportista`
--
ALTER TABLE `transporteapp_ordendeservicio_transportista`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transporteapp_vehículo`
--
ALTER TABLE `transporteapp_vehículo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `transporteapp_bitacora`
--
ALTER TABLE `transporteapp_bitacora`
  ADD CONSTRAINT `Transporteapp_bitaco_Orden_de_servicio_id_d7eb62a9_fk_Transport` FOREIGN KEY (`Orden_de_servicio_id`) REFERENCES `transporteapp_ordendeservicio` (`id`);

--
-- Filtros para la tabla `transporteapp_cotización`
--
ALTER TABLE `transporteapp_cotización`
  ADD CONSTRAINT `Transporteapp_cotiza_cliente_id_ed60b775_fk_Transport` FOREIGN KEY (`cliente_id`) REFERENCES `transporteapp_cliente` (`id`);

--
-- Filtros para la tabla `transporteapp_ordendeservicio`
--
ALTER TABLE `transporteapp_ordendeservicio`
  ADD CONSTRAINT `Transporteapp_ordend_cotizacion_id_9fe401e8_fk_Transport` FOREIGN KEY (`cotizacion_id`) REFERENCES `transporteapp_cotización` (`id`),
  ADD CONSTRAINT `Transporteapp_ordend_vehiculo_id_341b6193_fk_Transport` FOREIGN KEY (`vehiculo_id`) REFERENCES `transporteapp_vehículo` (`id`);

--
-- Filtros para la tabla `transporteapp_ordendeservicio_transportista`
--
ALTER TABLE `transporteapp_ordendeservicio_transportista`
  ADD CONSTRAINT `Transporteapp_ordend_ordendeservicio_id_6bc10b32_fk_Transport` FOREIGN KEY (`ordendeservicio_id`) REFERENCES `transporteapp_ordendeservicio` (`id`),
  ADD CONSTRAINT `Transporteapp_ordend_user_id_33d43296_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
