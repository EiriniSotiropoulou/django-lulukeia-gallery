-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 09 Ιουν 2019 στις 14:02:37
-- Έκδοση διακομιστή: 10.1.31-MariaDB
-- Έκδοση PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `projectdb_18`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `artgallery`
--

CREATE TABLE `artgallery` (
  `galleryID` int(11) NOT NULL,
  `galleryName` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `e-mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `artgallery`
--

INSERT INTO `artgallery` (`galleryID`, `galleryName`, `telephone`, `e-mail`) VALUES
(1, 'National New York Gallery', '123456789', 'newyorkgallery@gmail.com');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `artmovement`
--

CREATE TABLE `artmovement` (
  `artisticID` int(11) NOT NULL,
  `artisticName` varchar(50) NOT NULL,
  `smallDescription` varchar(500) DEFAULT NULL,
  `rating` double DEFAULT '0',
  `countRate` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `artmovement`
--

INSERT INTO `artmovement` (`artisticID`, `artisticName`, `smallDescription`, `rating`, `countRate`) VALUES
(1, 'High Renaissance', 'The Renaissance\n (UK: /r??ne?s?ns/, US: /r?n??s??ns/)[1] is a period in European history, covering the span \n between the 14th and 17th centuries. It is an extension of the Middle Ages,[2] and is bridged by the Age \n of Enlightenment to modern history. It grew in fragments, with the very first traces found seemingly in Italy,\n coming to cover much of Europe, for some scholars marking the beginning of the modern age.', 4, 3),
(2, 'Impressionism', 'Impressionism is a 19th-century art movement characterised\n by relatively small, thin, yet visible brush strokes, open composition, emphasis on \n accurate depiction of light in its changing qualities (often accentuating the effects \n of the passage of time), ordinary subject matter, inclusion of movement as a crucial \n element of human perception and experience, and unusual visual angles. Impressionism \n originated with a group of Paris-based artists whose independent exhibitions brought \n them ', 4, 2),
(3, 'Expressionism', 'Expressionism was a \nmodernist movement, initially in poetry and painting, originating in Germany at the \nbeginning of the 20th century. Its typical trait is to present the world solely from a \nsubjective perspective, distorting it radically for emotional effect in order to evoke\n moods or ideas.[1][2] Expressionist artists sought to express the meaning[3] of\n emotional experience rather than physical reality.[3][4]', 4.5, 2);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `auth_permission`
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
(25, 'Can add music category', 7, 'add_musiccategory'),
(26, 'Can change music category', 7, 'change_musiccategory'),
(27, 'Can delete music category', 7, 'delete_musiccategory'),
(28, 'Can view music category', 7, 'view_musiccategory'),
(29, 'Can add music series', 8, 'add_musicseries'),
(30, 'Can change music series', 8, 'change_musicseries'),
(31, 'Can delete music series', 8, 'delete_musicseries'),
(32, 'Can view music series', 8, 'view_musicseries'),
(33, 'Can add music base', 9, 'add_musicbase'),
(34, 'Can change music base', 9, 'change_musicbase'),
(35, 'Can delete music base', 9, 'delete_musicbase'),
(36, 'Can view music base', 9, 'view_musicbase'),
(37, 'Can add gallery', 10, 'add_gallery'),
(38, 'Can change gallery', 10, 'change_gallery'),
(39, 'Can delete gallery', 10, 'delete_gallery'),
(40, 'Can view gallery', 10, 'view_gallery'),
(41, 'Can add paint', 11, 'add_paint'),
(42, 'Can change paint', 11, 'change_paint'),
(43, 'Can delete paint', 11, 'delete_paint'),
(44, 'Can view paint', 11, 'view_paint'),
(45, 'Can add artgallery', 12, 'add_artgallery'),
(46, 'Can change artgallery', 12, 'change_artgallery'),
(47, 'Can delete artgallery', 12, 'delete_artgallery'),
(48, 'Can view artgallery', 12, 'view_artgallery'),
(49, 'Can add artmovement', 13, 'add_artmovement'),
(50, 'Can change artmovement', 13, 'change_artmovement'),
(51, 'Can delete artmovement', 13, 'delete_artmovement'),
(52, 'Can view artmovement', 13, 'view_artmovement'),
(53, 'Can add auth group', 14, 'add_authgroup'),
(54, 'Can change auth group', 14, 'change_authgroup'),
(55, 'Can delete auth group', 14, 'delete_authgroup'),
(56, 'Can view auth group', 14, 'view_authgroup'),
(57, 'Can add auth group permissions', 15, 'add_authgrouppermissions'),
(58, 'Can change auth group permissions', 15, 'change_authgrouppermissions'),
(59, 'Can delete auth group permissions', 15, 'delete_authgrouppermissions'),
(60, 'Can view auth group permissions', 15, 'view_authgrouppermissions'),
(61, 'Can add auth permission', 16, 'add_authpermission'),
(62, 'Can change auth permission', 16, 'change_authpermission'),
(63, 'Can delete auth permission', 16, 'delete_authpermission'),
(64, 'Can view auth permission', 16, 'view_authpermission'),
(65, 'Can add auth user', 17, 'add_authuser'),
(66, 'Can change auth user', 17, 'change_authuser'),
(67, 'Can delete auth user', 17, 'delete_authuser'),
(68, 'Can view auth user', 17, 'view_authuser'),
(69, 'Can add auth user groups', 18, 'add_authusergroups'),
(70, 'Can change auth user groups', 18, 'change_authusergroups'),
(71, 'Can delete auth user groups', 18, 'delete_authusergroups'),
(72, 'Can view auth user groups', 18, 'view_authusergroups'),
(73, 'Can add auth user user permissions', 19, 'add_authuseruserpermissions'),
(74, 'Can change auth user user permissions', 19, 'change_authuseruserpermissions'),
(75, 'Can delete auth user user permissions', 19, 'delete_authuseruserpermissions'),
(76, 'Can view auth user user permissions', 19, 'view_authuseruserpermissions'),
(77, 'Can add django admin log', 20, 'add_djangoadminlog'),
(78, 'Can change django admin log', 20, 'change_djangoadminlog'),
(79, 'Can delete django admin log', 20, 'delete_djangoadminlog'),
(80, 'Can view django admin log', 20, 'view_djangoadminlog'),
(81, 'Can add django content type', 21, 'add_djangocontenttype'),
(82, 'Can change django content type', 21, 'change_djangocontenttype'),
(83, 'Can delete django content type', 21, 'delete_djangocontenttype'),
(84, 'Can view django content type', 21, 'view_djangocontenttype'),
(85, 'Can add django migrations', 22, 'add_djangomigrations'),
(86, 'Can change django migrations', 22, 'change_djangomigrations'),
(87, 'Can delete django migrations', 22, 'delete_djangomigrations'),
(88, 'Can view django migrations', 22, 'view_djangomigrations'),
(89, 'Can add django session', 23, 'add_djangosession'),
(90, 'Can change django session', 23, 'change_djangosession'),
(91, 'Can delete django session', 23, 'delete_djangosession'),
(92, 'Can view django session', 23, 'view_djangosession'),
(93, 'Can add isrented', 24, 'add_isrented'),
(94, 'Can change isrented', 24, 'change_isrented'),
(95, 'Can delete isrented', 24, 'delete_isrented'),
(96, 'Can view isrented', 24, 'view_isrented'),
(97, 'Can add likespaint', 25, 'add_likespaint'),
(98, 'Can change likespaint', 25, 'change_likespaint'),
(99, 'Can delete likespaint', 25, 'delete_likespaint'),
(100, 'Can view likespaint', 25, 'view_likespaint'),
(101, 'Can add main paint', 26, 'add_mainpaint'),
(102, 'Can change main paint', 26, 'change_mainpaint'),
(103, 'Can delete main paint', 26, 'delete_mainpaint'),
(104, 'Can view main paint', 26, 'view_mainpaint'),
(105, 'Can add painter', 27, 'add_painter'),
(106, 'Can change painter', 27, 'change_painter'),
(107, 'Can delete painter', 27, 'delete_painter'),
(108, 'Can view painter', 27, 'view_painter'),
(109, 'Can add room', 28, 'add_room'),
(110, 'Can change room', 28, 'change_room'),
(111, 'Can delete room', 28, 'delete_room'),
(112, 'Can view room', 28, 'view_room'),
(113, 'Can add user', 29, 'add_user'),
(114, 'Can change user', 29, 'change_user'),
(115, 'Can delete user', 29, 'delete_user'),
(116, 'Can view user', 29, 'view_user'),
(117, 'Can add likesartmovement', 30, 'add_likesartmovement'),
(118, 'Can change likesartmovement', 30, 'change_likesartmovement'),
(119, 'Can delete likesartmovement', 30, 'delete_likesartmovement'),
(120, 'Can view likesartmovement', 30, 'view_likesartmovement'),
(121, 'Can add likespainter', 31, 'add_likespainter'),
(122, 'Can change likespainter', 31, 'change_likespainter'),
(123, 'Can delete likespainter', 31, 'delete_likespainter'),
(124, 'Can view likespainter', 31, 'view_likespainter');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(3, 'pbkdf2_sha256$120000$YpXRs8YHHlpd$UV3/wUc+/oUdd/vCjXSV57NYCEAC3kmQewuuQLCoz5A=', NULL, 1, 'eirhnh', '', '', 'eirhnhsotiropoulou@gmail.com', 1, 1, '2019-04-17 11:19:17.873065'),
(5, 'pbkdf2_sha256$120000$Ln2keY1UHNR2$h64oH/gXNg3CfxSGV1idmnTk3OIFa/okdeWl2g8aluI=', '2019-04-27 17:29:03.891629', 1, 'dafniventza', '', '', 'dafnispir@gmail.com', 1, 1, '2019-04-27 17:27:10.638748'),
(6, 'pbkdf2_sha256$120000$SuOnb5JTM4IX$yJBbxipQxo8ETswQFu0P9R4/P7LuUx9snNf4jqC+tJ4=', '2019-06-04 07:31:39.280629', 1, 'test', '', '', 'test@gmail.com', 1, 1, '2019-05-14 14:14:09.161604'),
(7, 'pbkdf2_sha256$120000$jaz3xF7khAgp$FFk1NXUJpcDSRt35XeEuu4NQ4ls7IXyIl8a02aTBDKM=', '2019-05-25 00:33:02.234965', 0, 'dafnispir@gmail.com', '', '', 'dafnispir@gmail.com', 0, 1, '2019-05-25 00:33:01.408376'),
(8, 'pbkdf2_sha256$120000$Jzu9J7DEJtDI$be4NiTR2LiNQdN/afCnepEy1P7dw+tnUzleua63Pcgg=', '2019-05-31 23:36:17.017176', 1, 'lulukos', '', '', 'lulukos@gmail.com', 1, 1, '2019-05-31 23:36:07.756868'),
(9, 'pbkdf2_sha256$120000$2hBDFCWFpA2U$x5P7mhw8cE1mGi2zBPXhF4z4Je+FdYy1hGY3c5ln2Ic=', '2019-06-01 00:32:57.107346', 0, 'test123', '', '', 'test123@gmail.com', 0, 1, '2019-06-01 00:32:11.908870'),
(10, 'pbkdf2_sha256$120000$AhDGnY0zRk40$9bi6/s0ObFJV6jX5Awg3p7O7S5+tYx3hcBl4NuPxPRM=', '2019-06-01 00:41:41.916916', 0, 'lily', '', '', 'lily@gata.com', 0, 1, '2019-06-01 00:41:41.103336'),
(11, 'pbkdf2_sha256$120000$KKGFVIqGaOoA$GfiO/mNugnNIu3M/RUwjoFn2CVOKgnLeY/B44jZA1Uk=', '2019-06-04 07:22:17.857697', 0, 'test11111', '', '', 'test11111@gmail.com', 0, 1, '2019-06-04 07:22:16.913634'),
(12, 'pbkdf2_sha256$120000$jCwi6sbgUaET$YQtQVz+gDhVzcvIkUzRTFoTvDh3aleelOLKP9bUUhMc=', '2019-06-04 07:23:16.988340', 0, 'test111444', '', '', 'test111444@gmail.com', 0, 1, '2019-06-04 07:23:16.184284'),
(13, 'pbkdf2_sha256$120000$cLeyDAt0VnXH$6klN/R7uzsVnmxwpBeUUluxdigJ+fkrzC/Mz4jvmxGQ=', '2019-06-04 07:24:13.708732', 0, 'sakis', '', '', 'sakis@rouvas.com', 0, 1, '2019-06-04 07:24:12.832673'),
(14, 'pbkdf2_sha256$120000$ZMlTWpVpzRQU$YluIfJJJOj2MsS0MrChL4EI9Dq/pQq3b0NSAoUouHV4=', '2019-06-04 07:24:55.431959', 0, 'sakis_rouvas', '', '', 'sakis_rouvas@gmail.com', 0, 1, '2019-06-04 07:24:54.599903'),
(15, 'pbkdf2_sha256$120000$3Kv6FlOl01Fd$Q/JM9rZZvq3jnOsQT2C23PrDyf87soyUGiWNClnFvfU=', '2019-06-04 07:25:45.385477', 0, 'sakis_rouvas12', '', '', 'sakis_rouvas12@gmail.com', 0, 1, '2019-06-04 07:25:44.561421'),
(16, 'pbkdf2_sha256$120000$qvVCz7Te5mGo$xIfkHLztd8WuJ65wm+1mwnOq25uCl4rswtsC/GN+6VE=', '2019-06-04 07:27:09.242884', 0, 'pepito', '', '', 'pepito@gmail.com', 0, 1, '2019-06-04 07:27:08.374824');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-04-27 17:27:38.710501', '1', 'dafni', 3, '', 4, 5),
(2, '2019-04-27 17:27:38.716563', '2', 'dafni12', 3, '', 4, 5),
(3, '2019-04-27 17:27:38.722296', '4', 'DafniSpyridoula', 3, '', 4, 5);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'main', 'artgallery'),
(13, 'main', 'artmovement'),
(14, 'main', 'authgroup'),
(15, 'main', 'authgrouppermissions'),
(16, 'main', 'authpermission'),
(17, 'main', 'authuser'),
(18, 'main', 'authusergroups'),
(19, 'main', 'authuseruserpermissions'),
(20, 'main', 'djangoadminlog'),
(21, 'main', 'djangocontenttype'),
(22, 'main', 'djangomigrations'),
(23, 'main', 'djangosession'),
(10, 'main', 'gallery'),
(24, 'main', 'isrented'),
(30, 'main', 'likesartmovement'),
(25, 'main', 'likespaint'),
(31, 'main', 'likespainter'),
(26, 'main', 'mainpaint'),
(9, 'main', 'musicbase'),
(7, 'main', 'musiccategory'),
(8, 'main', 'musicseries'),
(11, 'main', 'paint'),
(27, 'main', 'painter'),
(28, 'main', 'room'),
(29, 'main', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-11 02:19:33.419211'),
(2, 'auth', '0001_initial', '2019-04-11 02:19:34.377074'),
(3, 'admin', '0001_initial', '2019-04-11 02:19:34.659735'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-11 02:19:34.690757'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-11 02:19:34.725785'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-11 02:19:34.928117'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-11 02:19:35.041619'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-11 02:19:35.153779'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-11 02:19:35.186802'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-11 02:19:35.265002'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-11 02:19:35.273774'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-11 02:19:35.304804'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-11 02:19:35.487182'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-11 02:19:35.597591'),
(15, 'sessions', '0001_initial', '2019-04-11 02:19:35.670067'),
(16, 'main', '0001_initial', '2019-06-04 03:46:35.388578'),
(17, 'main', '0002_auto_20190604_1209', '2019-06-04 09:10:02.712757'),
(18, 'main', '0003_auto_20190606_1051', '2019-06-06 07:51:37.387473');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4dy7avtlsw1zmn524ja10u2vqlemdyxc', 'MzFkZGFiZDIwNjA2OWRhODczZmMyMWU3OTZjY2U1NjdhMGJmZTQxYjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTAxZGUwMzVmN2I3NmUyMDE0NDljYjEzYmE2ZGM3YTRlMTViNTg0In0=', '2019-05-28 15:45:47.191045'),
('69z97dtio9qm6q3lkiykx1vg1zgyihyr', 'MjNkNjU1MjYyOTNkNDAxOWE2Y2Q4ZGM2NDhmYzdmZDU3YjFhZGI4YTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNGQwZDM0MzJiMjU1NWJmNDA1YWY2Y2FhZTFmZDZhOWVkYWVjOGE2In0=', '2019-06-08 00:33:02.258981'),
('bn90pp8lyax4w5w82fhrkuus68hopc8m', 'MjllNDU1NzQwNDVjODllZjhmY2E1NzRhZmQ5YjhiOGRhY2IwZDVkNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZWFlMmM0NzY5YzhkMDczOTkxNWUzOGZjYWIwZTRkMmU0YWViOGJhIn0=', '2019-05-01 11:17:43.727480'),
('m0ty4iz6qaa2yuxrvdrhugl9cnwygyv9', 'MTQzNTgwMWE4NzE5MzkwNmQxNTVhZTUzYmExZWRhNDE2ZDFlMDQwMzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwODJjZTg5NGRjMWU3YmNjYjU4Y2RkZDcxNGEyYjY3ZTg1MWY5OTliIn0=', '2019-06-14 23:36:17.030188'),
('pgehg2uclwmfo6sika54o7yh62ifaur2', 'MzFkZGFiZDIwNjA2OWRhODczZmMyMWU3OTZjY2U1NjdhMGJmZTQxYjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYTAxZGUwMzVmN2I3NmUyMDE0NDljYjEzYmE2ZGM3YTRlMTViNTg0In0=', '2019-06-18 07:31:39.300631'),
('vag8b0ntx77ry3qm7x8kqw6qi10s7v8r', 'ODUxMDA2Mzk4YmY1MmM1ZWExMTA1Njg1NDRmMmE5OTRlNDEwMjc0Njp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NjI4YjMyMTIyOWUxZmEzNGZjZDUzYjllYWJjMzBkZTk5ZTkyNmQxIn0=', '2019-06-15 00:32:57.114352'),
('vtxyvvlgo5wo4pyby29jlk98c8xvz6fd', 'Nzk0NGExNDg3NjY4MWE3Y2IwOTAxMmNiZDA5Y2EzNWVhNzQ2M2MyMTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTI0ZmVhYWU4YjE4N2JlZmExNDhhMWQwMjU1YjQ1YTVlYTVmNjUzNyJ9', '2019-06-15 00:41:41.964948'),
('wx5rixyse0dqi6x40qmqychqrkb3zz2i', 'ZTFlYmQ4YjA1MGE0YTBhY2U0ODFjMTQzZmZlNmFkNmUwOTUxZWI3MTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWMzM2VlMGI3NWRhNDBmODA3YmIyOWEyYWY0ZTUyYWIyNTdlZjcwIn0=', '2019-05-11 17:29:03.905639'),
('xdf2xa44v7e6fttye0tk36jg51sec5pf', 'ZTU3ZThhM2JlYWM4ZjIwNmFjY2IwZDJkYzc5NDY5OWU0MjJiOWRlYjp7fQ==', '2019-06-18 07:22:17.853700');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `isrented`
--

CREATE TABLE `isrented` (
  `PaintID` int(11) NOT NULL,
  `galleryID` int(11) NOT NULL,
  `DateofRnt` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `isrented`
--

INSERT INTO `isrented` (`PaintID`, `galleryID`, `DateofRnt`) VALUES
(1, 1, '2018-06-18 19:33:45'),
(4, 1, '2018-06-18 19:33:45');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `likesartmovement`
--

CREATE TABLE `likesartmovement` (
  `artisticID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `rating` double NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `likesartmovement`
--

INSERT INTO `likesartmovement` (`artisticID`, `userID`, `rating`) VALUES
(1, 1, 3),
(1, 3, 5),
(2, 3, 4),
(2, 4, 4),
(3, 3, 5),
(3, 4, 4);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `likespaint`
--

CREATE TABLE `likespaint` (
  `paintID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `rating` double NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `likespaint`
--

INSERT INTO `likespaint` (`paintID`, `userID`, `rating`) VALUES
(1, 1, 3),
(1, 6, 5),
(3, 4, 1),
(5, 3, 5),
(10, 1, 5),
(12, 1, 5),
(12, 3, 4),
(14, 4, 5),
(15, 4, 5),
(16, 1, 4);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `likespainter`
--

CREATE TABLE `likespainter` (
  `painterID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `rating` double NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `likespainter`
--

INSERT INTO `likespainter` (`painterID`, `userID`, `rating`) VALUES
(1, 1, 5),
(2, 3, 3),
(3, 1, 4),
(5, 1, 4);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `main_paint`
--

CREATE TABLE `main_paint` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `paint`
--

CREATE TABLE `paint` (
  `paintID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `isPrototype` tinyint(1) DEFAULT '1',
  `material` varchar(100) DEFAULT NULL,
  `keywords` varchar(200) NOT NULL,
  `acquisition` varchar(300) DEFAULT 'GIFTED',
  `dateOfCreation` varchar(20) NOT NULL,
  `painterID` int(11) DEFAULT NULL,
  `artID` int(11) DEFAULT NULL,
  `roomID` int(11) DEFAULT NULL,
  `rating` double DEFAULT '0',
  `countRate` int(11) DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `paint`
--

INSERT INTO `paint` (`paintID`, `title`, `dimensions`, `isPrototype`, `material`, `keywords`, `acquisition`, `dateOfCreation`, `painterID`, `artID`, `roomID`, `rating`, `countRate`, `image`) VALUES
(1, 'Mona Lisa', '77x33', 1, 'oil', ',portrait,woman,smile,mystery,elegant,', 'GIFTED', '1519', 1, 1, 1, 3.3333333333333335, 3, '1.png'),
(2, 'The Last Supper', '460x880', 1, 'mural', ',jesus,dinner,supper,Judas,', 'GIFTED', '1490', 1, 1, 1, 0, 0, '2.png'),
(3, 'Vetruvian Man', '34.6×25.5', 1, 'Pen and ink on paper', ',geometry,human body,man,', 'GIFTED', '1490', 1, 1, 1, 1, 1, '3.png'),
(4, 'Lady with an Ermine', '54×39', 1, 'Oil on wood panel', ',pet,woman,necklace,', 'GIFTED', '1489', 1, 1, 1, 0, 0, '4.png'),
(5, 'The Sistine Chapel', '4000x1400', 0, 'Fresco', ',vatican,man,church,', 'GIFTED', '1512', 2, 1, 1, 5, 1, '5.png'),
(6, 'The Creation of Adam', '280×570', 0, 'Fresco', ',vatican,man,church,adam,naked,god,angel,hand,', 'GIFTED', '1512', 2, 1, 1, 0, 0, '6.png'),
(7, 'The Last Judgment', '1370 × 1200', 0, 'Fresco', ',atican,angel,mary,jesus,resurrection,church,', 'GIFTED', '1541', 2, 1, 1, 0, 0, '7.png'),
(8, 'Impression, Sunrise', '48×63', 1, 'Oil on canvas', ',mystery,landscape,boat,man,sunset,water,sea,blue,', 'GIFTED', '1872', 3, 2, 2, 0, 0, '8.png'),
(9, 'Women in the Garden', '255x205', 1, 'Oil on canvas', ',woman,garden,tree,elegant,flower,', 'GIFTED', '1866', 3, 2, 2, 0, 0, '9.png'),
(10, 'Bain à la Grenouillère', '74.6 ×99.7', 1, 'Oil on canvas', ',boat,sea,water,tree,blue,landscape,crowd,', 'GIFTED', '1869', 3, 2, 2, 5, 1, '10.png'),
(11, 'The Seine river at Charenton', '77x33', 1, 'oil', ',boat,sea,water,river,blue,landscape,houses,sky,', 'GIFTED', '1878', 4, 2, 2, 0, 0, '11.png'),
(12, 'La Place Valhubertr', '77x33', 1, 'oil', ',tree,park,landscape,man,woman,elegant,houses,sky,', 'GIFTED', '1875', 4, 2, 2, 4.333333333333333, 3, '12.png'),
(13, 'Madame Cézanne', '116.5×89.5', 1, 'oil on canvas', ',woman,mystery,portrait,loneliness,horror,', 'GIFTED', '1888', 5, 2, 2, 0, 0, '13.png'),
(14, 'Starry Night Over the Rhône', '116.5×89.5', 1, 'oil on canvas', ',night,stars,water,river,boat,blue,mystery,sky,loneliness,', 'GIFTED', '1888', 6, 2, 2, 5, 1, '14.png'),
(15, 'The Painter of Sunflowers', '73×91', 1, 'oil on canvas', ',flower,man,loneliness,', 'GIFTED', '1888', 6, 2, 2, 5, 1, '15.png'),
(16, 'The Scream', '91×73.5', 1, 'Oil, tempera, pastel and crayon on cardboard', ',mystery,landscape,man,horror,loneliness,', 'GIFTED', '1893', 7, 3, 3, 4, 1, '16.png');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `painter`
--

CREATE TABLE `painter` (
  `painterID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `origins` varchar(100) NOT NULL,
  `dateBorn` varchar(20) NOT NULL,
  `dateDied` varchar(20) DEFAULT NULL,
  `artID` int(11) DEFAULT NULL,
  `rating` double DEFAULT '0',
  `countRate` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `painter`
--

INSERT INTO `painter` (`painterID`, `firstName`, `lastName`, `nickName`, `origins`, `dateBorn`, `dateDied`, `artID`, `rating`, `countRate`) VALUES
(1, 'Leonardo', 'Da Vinci', NULL, 'Italy', '1452 ', '1519', 1, 5, 1),
(2, 'Michelangelo', 'di Lodovico Buonarroti Simoni', 'Michelangelo', 'Italy', '1475 ', '1564', 1, 3, 1),
(3, 'Oscar-Claude', 'Monet ', NULL, 'France', '1840 ', '1926', 2, 4, 1),
(4, 'Armand', 'Guillaumin', NULL, 'France', '1841 ', '1927 ', 2, 0, 0),
(5, 'Paul', 'Cézanne ', NULL, 'France', '1839 ', '1906 ', 2, 4, 1),
(6, 'Vincent', 'van Gogh ', NULL, 'Netherlands', '1853 ', '1890  ', 2, 0, 0),
(7, 'Edvard', 'Munch', NULL, 'Norway', '1863 ', '1944', 3, 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `room`
--

CREATE TABLE `room` (
  `roomID` int(11) NOT NULL,
  `timePeriod` varchar(20) DEFAULT NULL,
  `artMovement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `room`
--

INSERT INTO `room` (`roomID`, `timePeriod`, `artMovement`) VALUES
(1, '1900', 1),
(2, '1800-1900', 2),
(3, '1300-1600', 3);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `suggest`
--

CREATE TABLE `suggest` (
  `sourceID` int(11) NOT NULL,
  `destID` int(11) NOT NULL,
  `paintID` int(11) NOT NULL,
  `painterID` int(11) DEFAULT NULL,
  `sTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `suggest`
--

INSERT INTO `suggest` (`sourceID`, `destID`, `paintID`, `painterID`, `sTime`) VALUES
(1, 2, 3, NULL, '2018-06-18 16:38:07'),
(3, 1, 6, NULL, '2018-06-18 19:15:09');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userPassword` varchar(50) NOT NULL,
  `userStatus` int(11) DEFAULT '0',
  `user_email` varchar(40) DEFAULT NULL,
  `displayName` varchar(30) NOT NULL,
  `membershipLevel` int(11) DEFAULT '0',
  `creditCardNo` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT '0',
  `user_registered` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `user`
--

INSERT INTO `user` (`userID`, `userName`, `userPassword`, `userStatus`, `user_email`, `displayName`, `membershipLevel`, `creditCardNo`, `balance`, `user_registered`) VALUES
(1, 'Dafni', '0987', 0, NULL, 'Dafni', 0, NULL, 0, 1),
(2, 'Eirini', '1234', 0, NULL, 'Eirini', 0, NULL, 0, 1),
(3, '1', '1', 0, NULL, '1', 0, NULL, 0, 0),
(4, 'test', 'test', 0, NULL, '', 0, NULL, 0, 0),
(5, 'Ilias', '20406080', 0, NULL, '', 0, NULL, 0, 0),
(6, 'KJASHDKASJDH', '1234567', 0, NULL, 'KJASHDKASJDH', 0, NULL, 0, 0),
(7, 'DD', '12', 0, NULL, 'DD', 0, NULL, 0, 0);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `artgallery`
--
ALTER TABLE `artgallery`
  ADD PRIMARY KEY (`galleryID`);

--
-- Ευρετήρια για πίνακα `artmovement`
--
ALTER TABLE `artmovement`
  ADD PRIMARY KEY (`artisticID`);

--
-- Ευρετήρια για πίνακα `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Ευρετήρια για πίνακα `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Ευρετήρια για πίνακα `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Ευρετήρια για πίνακα `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Ευρετήρια για πίνακα `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Ευρετήρια για πίνακα `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Ευρετήρια για πίνακα `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Ευρετήρια για πίνακα `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Ευρετήρια για πίνακα `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Ευρετήρια για πίνακα `isrented`
--
ALTER TABLE `isrented`
  ADD PRIMARY KEY (`PaintID`,`galleryID`),
  ADD KEY `IsRented_fk1` (`galleryID`);

--
-- Ευρετήρια για πίνακα `likesartmovement`
--
ALTER TABLE `likesartmovement`
  ADD PRIMARY KEY (`artisticID`,`userID`),
  ADD KEY `LikesArtMovement_fk1` (`userID`);

--
-- Ευρετήρια για πίνακα `likespaint`
--
ALTER TABLE `likespaint`
  ADD PRIMARY KEY (`paintID`,`userID`),
  ADD KEY `LikesPaint_fk1` (`userID`);

--
-- Ευρετήρια για πίνακα `likespainter`
--
ALTER TABLE `likespainter`
  ADD PRIMARY KEY (`painterID`,`userID`),
  ADD KEY `LikesPainter_fk1` (`userID`);

--
-- Ευρετήρια για πίνακα `main_paint`
--
ALTER TABLE `main_paint`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `paint`
--
ALTER TABLE `paint`
  ADD PRIMARY KEY (`paintID`),
  ADD KEY `Paint_fk1` (`painterID`),
  ADD KEY `Paint_fk2` (`artID`),
  ADD KEY `Paint_fk3` (`roomID`);

--
-- Ευρετήρια για πίνακα `painter`
--
ALTER TABLE `painter`
  ADD PRIMARY KEY (`painterID`),
  ADD KEY `Painter_fk1` (`artID`);

--
-- Ευρετήρια για πίνακα `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomID`);

--
-- Ευρετήρια για πίνακα `suggest`
--
ALTER TABLE `suggest`
  ADD PRIMARY KEY (`sourceID`,`destID`,`paintID`),
  ADD KEY `Suggest_fk1` (`destID`);

--
-- Ευρετήρια για πίνακα `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `artgallery`
--
ALTER TABLE `artgallery`
  MODIFY `galleryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT για πίνακα `artmovement`
--
ALTER TABLE `artmovement`
  MODIFY `artisticID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT για πίνακα `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT για πίνακα `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT για πίνακα `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT για πίνακα `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT για πίνακα `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT για πίνακα `main_paint`
--
ALTER TABLE `main_paint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `painter`
--
ALTER TABLE `painter`
  MODIFY `painterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT για πίνακα `room`
--
ALTER TABLE `room`
  MODIFY `roomID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT για πίνακα `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Περιορισμοί για πίνακα `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Περιορισμοί για πίνακα `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Περιορισμοί για πίνακα `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Περιορισμοί για πίνακα `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Περιορισμοί για πίνακα `isrented`
--
ALTER TABLE `isrented`
  ADD CONSTRAINT `IsRented_fk0` FOREIGN KEY (`PaintID`) REFERENCES `paint` (`paintID`) ON DELETE CASCADE,
  ADD CONSTRAINT `IsRented_fk1` FOREIGN KEY (`galleryID`) REFERENCES `artgallery` (`galleryID`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `likesartmovement`
--
ALTER TABLE `likesartmovement`
  ADD CONSTRAINT `LikesArtMovement_fk0` FOREIGN KEY (`artisticID`) REFERENCES `artmovement` (`artisticID`) ON DELETE CASCADE,
  ADD CONSTRAINT `LikesArtMovement_fk1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `likespaint`
--
ALTER TABLE `likespaint`
  ADD CONSTRAINT `LikesPaint_fk0` FOREIGN KEY (`paintID`) REFERENCES `paint` (`paintID`) ON DELETE CASCADE,
  ADD CONSTRAINT `LikesPaint_fk1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `likespainter`
--
ALTER TABLE `likespainter`
  ADD CONSTRAINT `LikesPainter_fk0` FOREIGN KEY (`painterID`) REFERENCES `painter` (`painterID`) ON DELETE CASCADE,
  ADD CONSTRAINT `LikesPainter_fk1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `paint`
--
ALTER TABLE `paint`
  ADD CONSTRAINT `Paint_fk1` FOREIGN KEY (`painterID`) REFERENCES `painter` (`painterID`),
  ADD CONSTRAINT `Paint_fk2` FOREIGN KEY (`artID`) REFERENCES `artmovement` (`artisticID`),
  ADD CONSTRAINT `Paint_fk3` FOREIGN KEY (`roomID`) REFERENCES `room` (`roomID`);

--
-- Περιορισμοί για πίνακα `painter`
--
ALTER TABLE `painter`
  ADD CONSTRAINT `Painter_fk1` FOREIGN KEY (`artID`) REFERENCES `artmovement` (`artisticID`);

--
-- Περιορισμοί για πίνακα `suggest`
--
ALTER TABLE `suggest`
  ADD CONSTRAINT `Suggest_fk0` FOREIGN KEY (`sourceID`) REFERENCES `user` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `Suggest_fk1` FOREIGN KEY (`destID`) REFERENCES `user` (`userID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
