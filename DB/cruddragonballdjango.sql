-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2023 a las 23:23:58
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cruddragonballdjango`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add personajes', 7, 'add_personajes'),
(26, 'Can change personajes', 7, 'change_personajes'),
(27, 'Can delete personajes', 7, 'delete_personajes'),
(28, 'Can view personajes', 7, 'view_personajes');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$9NrXUehfFYZtSERBUPZ42T$yMyJbNHEwEvhxTlmtkrO2l0LcKbB9m0FhHdNp/6sxS8=', '2023-06-11 17:24:11.128671', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2023-06-11 17:19:41.101542');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-11 18:10:09.992741', '1', 'Personajes object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-06-11 18:15:14.741177', '2', 'Personajes object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-06-11 18:35:28.567717', '2', 'Nombre: krillin - Raza: Humano - Descripcion: No se', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'libreria', 'personajes'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-11 07:38:02.184154'),
(2, 'auth', '0001_initial', '2023-06-11 07:38:05.217063'),
(3, 'admin', '0001_initial', '2023-06-11 07:38:05.873151'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-11 07:38:05.963871'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-11 07:38:06.041865'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-11 07:38:06.515850'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-11 07:38:07.039089'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-11 07:38:07.374267'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-11 07:38:07.567277'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-11 07:38:08.454839'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-11 07:38:08.507142'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-11 07:38:08.828128'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-11 07:38:08.940135'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-11 07:38:09.031124'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-11 07:38:09.126133'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-11 07:38:09.164133'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-11 07:38:09.272127'),
(18, 'libreria', '0001_initial', '2023-06-11 07:38:09.456125'),
(19, 'sessions', '0001_initial', '2023-06-11 07:38:09.750905');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0bnf3wau7outsnvr1shg8zzhd4jtexoe', '.eJxVjEEOwiAQRe_C2hCmBaa4dO8ZyMCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-ZnEWIE6_W6D4SHUHfKd6azK2ui5zkLsiD9rltXF6Xg7376BQL99aaTYajWHNhGAUqNFN0SbMSCY6TlZTsA7BKhytywNbp5ldGCCjgkm8P8FNNvk:1q8OnT:5qmKPeSRfOk2t9LpUIW4m1Q9OZutJBkWLi9aknzxQ-g', '2023-06-25 17:24:11.208669');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_personajes`
--

CREATE TABLE `libreria_personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `raza` varchar(100) NOT NULL,
  `descripcion` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libreria_personajes`
--

INSERT INTO `libreria_personajes` (`id`, `nombre`, `imagen`, `raza`, `descripcion`) VALUES
(1, 'Goku', 'imagenes/goku-db.png', 'Saiyajin', 'Goku es el protagonista de Dragon Ball. Es un Saiyan que se convierte en el guerrero más fuerte del universo, protegiendo la Tierra y combatiendo a poderosos enemigos.'),
(2, 'Krillin', 'imagenes/krillin-db.jpg', 'Humano', 'Amigo y compañero de entrenamiento de Goku en su juventud. Es un experto en artes marciales y ha participado en numerosos combates junto a Goku y sus amigos. A pesar de su apariencia pequeña, posee una gran valentía y determinación.'),
(3, 'Yamcha', 'imagenes/yamcha-db.webp', 'Humano', 'Es un personaje que inicialmente fue un bandido del desierto, pero más tarde se convierte en un aliado y miembro del equipo de Goku. Es conocido por su habilidad en el combate y su técnica especial, el \"Puño del Lobo\".'),
(4, 'Maestro Roshi', 'imagenes/roshi-db.jpg', 'Humano', 'Es un anciano sabio y poderoso maestro de artes marciales. Es conocido por su habilidad en el combate y por ser el mentor de Goku y Krilin. A pesar de su apariencia y comportamiento pervertido, es un luchador formidable y posee técnicas poderosas como el Kamehameha.'),
(5, 'Bulma', 'imagenes/bulma-db.png', 'Humano', 'Es una inteligente y talentosa científica. Es una de las primeras amigas de Goku y desempeña un papel importante en la búsqueda de las Esferas del Dragón. A lo largo de la serie, inventa y desarrolla tecnologías avanzadas que ayudan al grupo en sus aventuras.'),
(6, 'Piccolo', 'imagenes/king-piccolo-db.jpg', 'Namekiano', 'Es un guerrero namekiano y uno de los personajes más icónicos de Dragon Ball. Inicialmente fue un enemigo de Goku, pero más tarde se convierte en un aliado valioso. Es conocido por su habilidad en el combate y su técnica especial, el Makankosappo (Explosión Demoníaca Perforadora).'),
(7, 'Yajirobe', 'imagenes/yajirobe-db_ihurbGn.png', 'Humano', 'Es un personaje peculiar que vive en las montañas. Aunque aparenta ser perezoso y glotón, es sorprendentemente fuerte en combate. Ayuda a Goku y sus amigos en varias ocasiones y es conocido por su espada afilada y su apetito voraz.'),
(8, 'Maestro Karin', 'imagenes/karin-db.webp', 'Gato sagrado', 'Es un antiguo y sabio gato sagrado que vive en la Torre de Karin. Él posee una gran sabiduría y conocimiento, y es conocido por su habilidad para otorgar a las personas que escalan la Torre de Karin una gran mejora en su fuerza y habilidades de combate.'),
(9, 'Kamisama', 'imagenes/kami-db.webp', 'Namekiano', 'Es un ser divino y el Dios de la Tierra en Dragon Ball. Es una entidad bondadosa y protectora que vela por el equilibrio y la paz en el planeta. Tiene la capacidad de comunicarse con los seres humanos y los guerreros Z.'),
(10, 'Ten Shin Han', 'imagenes/ten-db.png', 'Humano', 'Es un poderoso artista marcial y un antiguo alumno del Maestro Tsuru. Es conocido por su técnica especial, el Kikoho (Tríada del Sol), que es una técnica de energía destructiva. A lo largo de la serie, se convierte en un valioso aliado de Goku y sus amigos.'),
(11, 'Chaoz', 'imagenes/chaoz-db.webp', 'Humano', 'Es un pequeño y leal guerrero que es amigo cercano de Ten Shin Han. Aunque es de estatura baja, posee habilidades únicas en combate y es conocido por su técnica de vuelo y su telequinesis. Chaoz acompaña a Ten Shin Han en muchas de sus aventuras y luchas.');

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
-- Indices de la tabla `libreria_personajes`
--
ALTER TABLE `libreria_personajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `libreria_personajes`
--
ALTER TABLE `libreria_personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
