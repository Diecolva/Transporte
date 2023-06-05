-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2023 a las 00:43:12
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
(25, 'Can add vehículo', 7, 'add_vehículo'),
(26, 'Can change vehículo', 7, 'change_vehículo'),
(27, 'Can delete vehículo', 7, 'delete_vehículo'),
(28, 'Can view vehículo', 7, 'view_vehículo'),
(29, 'Can add cliente', 8, 'add_cliente'),
(30, 'Can change cliente', 8, 'change_cliente'),
(31, 'Can delete cliente', 8, 'delete_cliente'),
(32, 'Can view cliente', 8, 'view_cliente'),
(33, 'Can add bitacora', 9, 'add_bitacora'),
(34, 'Can change bitacora', 9, 'change_bitacora'),
(35, 'Can delete bitacora', 9, 'delete_bitacora'),
(36, 'Can view bitacora', 9, 'view_bitacora'),
(37, 'Can add cotización', 10, 'add_cotización'),
(38, 'Can change cotización', 10, 'change_cotización'),
(39, 'Can delete cotización', 10, 'delete_cotización'),
(40, 'Can view cotización', 10, 'view_cotización');

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
(1, 'pbkdf2_sha256$600000$8vo6x2pzXTqKSUbVwe0uzD$0+meLRFECMfEYketic1OKX6TRSSTSqzT0d/r+OHR2bg=', '2023-05-16 02:14:48.714778', 1, 'tda', '', '', 'transportestda2012@gmail.com', 1, 1, '2023-05-01 21:48:23.119127'),
(2, 'pbkdf2_sha256$600000$RnHhEdNUstBBP2ZC8SJk0m$ykk2yCKQzRE0X3gbhEUuwwhgCTMUXystpk4F6hbrOq0=', NULL, 0, 'Douglas', '', '', '', 1, 1, '2023-05-01 21:49:09.000000');

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
(1, '2023-05-01 21:48:44.071756', '1', 'Transportistas', 1, '[{\"added\": {}}]', 3, 1),
(2, '2023-05-01 21:49:09.502499', '2', 'Douglas', 1, '[{\"added\": {}}]', 4, 1),
(3, '2023-05-01 21:49:14.180295', '2', 'Douglas', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(4, '2023-05-01 21:49:19.033695', '2', 'Douglas', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(5, '2023-05-08 21:26:38.288765', '2', 'Administradores', 1, '[{\"added\": {}}]', 3, 1),
(6, '2023-05-08 21:26:58.967618', '2', 'Administradores', 3, '', 3, 1);

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
(9, 'Transporteapp', 'bitacora'),
(8, 'Transporteapp', 'cliente'),
(10, 'Transporteapp', 'cotización'),
(7, 'Transporteapp', 'vehículo');

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
(1, 'contenttypes', '0001_initial', '2023-05-01 21:47:40.712080'),
(2, 'auth', '0001_initial', '2023-05-01 21:47:40.992352'),
(3, 'admin', '0001_initial', '2023-05-01 21:47:41.140610'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-01 21:47:41.145611'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-01 21:47:41.149612'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-01 21:47:41.179468'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-01 21:47:41.207535'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-01 21:47:41.217537'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-01 21:47:41.221537'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-01 21:47:41.256534'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-01 21:47:41.257535'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-01 21:47:41.261537'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-01 21:47:41.270538'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-01 21:47:41.279117'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-01 21:47:41.287277'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-01 21:47:41.290929'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-01 21:47:41.300133'),
(18, 'sessions', '0001_initial', '2023-05-01 21:47:41.316038'),
(19, 'Transporteapp', '0001_initial', '2023-05-01 21:47:54.605900');

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
('80kb786ksrykr8jk9200a2u98u1o0342', '.eJxVjMsOwiAQRf-FtSEwPMq4dO83kCkMUjU0Ke3K-O_apAvd3nPOfYlI21rj1nmJUxZnocXpdxspPbjtIN-p3WaZ5rYu0yh3RR60y-uc-Xk53L-DSr1-a2-chYJBEzGHQgUdFlKkwIHWzqKiga0qBcibZLwiNhazw0GHHADE-wPYyDdD:1pykDA:P1SWz7I4Te2rDwq83jqx6fqs7ZtKMUXCKHKR1OxYg2A', '2023-05-30 02:14:48.716778'),
('v94dwxbzbhw8k9s330y4dwt4ukuj8pl5', '.eJxVjMsOwiAQRf-FtSEwPMq4dO83kCkMUjU0Ke3K-O_apAvd3nPOfYlI21rj1nmJUxZnocXpdxspPbjtIN-p3WaZ5rYu0yh3RR60y-uc-Xk53L-DSr1-a2-chYJBEzGHQgUdFlKkwIHWzqKiga0qBcibZLwiNhazw0GHHADE-wPYyDdD:1ptbyP:8JNYHTCnIzVoLvhFEriZm7ItnUzIqDWL39ktX7ytD6I', '2023-05-15 22:26:21.538970'),
('xep5njfn01thhwsh7myik6usaqeswms5', '.eJxVjMsOwiAQRf-FtSEwPMq4dO83kCkMUjU0Ke3K-O_apAvd3nPOfYlI21rj1nmJUxZnocXpdxspPbjtIN-p3WaZ5rYu0yh3RR60y-uc-Xk53L-DSr1-a2-chYJBEzGHQgUdFlKkwIHWzqKiga0qBcibZLwiNhazw0GHHADE-wPYyDdD:1ptbsz:eb3JO9Xbwm7LWHtYtPKuzMV5DXXnUz515WFRHahlRTM', '2023-05-15 22:20:45.260987');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_bitacora`
--

CREATE TABLE `transporteapp_bitacora` (
  `id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `numeroSeguimiento` int(10) UNSIGNED NOT NULL CHECK (`numeroSeguimiento` >= 0),
  `comentario` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `valor` double NOT NULL,
  `cliente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_bitacora_transportista`
--

CREATE TABLE `transporteapp_bitacora_transportista` (
  `id` bigint(20) NOT NULL,
  `bitacora_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_cotización`
--

CREATE TABLE `transporteapp_cotización` (
  `id` bigint(20) NOT NULL,
  `servicio` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fechaSolicitud` date NOT NULL,
  `numeroSeguimiento` int(10) UNSIGNED NOT NULL CHECK (`numeroSeguimiento` >= 0),
  `peso` int(10) UNSIGNED NOT NULL CHECK (`peso` >= 0),
  `dimensiones` int(11) NOT NULL,
  `fechaInicio` date NOT NULL,
  `lugarOrigen` varchar(50) NOT NULL,
  `lugarDestino` varchar(50) NOT NULL,
  `cliente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporteapp_vehículo`
--

CREATE TABLE `transporteapp_vehículo` (
  `id` bigint(20) NOT NULL,
  `modelo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `Transporteapp_bitaco_cliente_id_068d5644_fk_Transport` (`cliente_id`);

--
-- Indices de la tabla `transporteapp_bitacora_transportista`
--
ALTER TABLE `transporteapp_bitacora_transportista`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Transporteapp_bitacora_t_bitacora_id_user_id_6cd8cdd0_uniq` (`bitacora_id`,`user_id`),
  ADD KEY `Transporteapp_bitaco_user_id_d24d9f2d_fk_auth_user` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `transporteapp_bitacora`
--
ALTER TABLE `transporteapp_bitacora`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transporteapp_bitacora_transportista`
--
ALTER TABLE `transporteapp_bitacora_transportista`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transporteapp_cliente`
--
ALTER TABLE `transporteapp_cliente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transporteapp_cotización`
--
ALTER TABLE `transporteapp_cotización`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transporteapp_vehículo`
--
ALTER TABLE `transporteapp_vehículo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `Transporteapp_bitaco_cliente_id_068d5644_fk_Transport` FOREIGN KEY (`cliente_id`) REFERENCES `transporteapp_cliente` (`id`);

--
-- Filtros para la tabla `transporteapp_bitacora_transportista`
--
ALTER TABLE `transporteapp_bitacora_transportista`
  ADD CONSTRAINT `Transporteapp_bitaco_bitacora_id_560c724f_fk_Transport` FOREIGN KEY (`bitacora_id`) REFERENCES `transporteapp_bitacora` (`id`),
  ADD CONSTRAINT `Transporteapp_bitaco_user_id_d24d9f2d_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `transporteapp_cotización`
--
ALTER TABLE `transporteapp_cotización`
  ADD CONSTRAINT `Transporteapp_cotiza_cliente_id_ed60b775_fk_Transport` FOREIGN KEY (`cliente_id`) REFERENCES `transporteapp_cliente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
