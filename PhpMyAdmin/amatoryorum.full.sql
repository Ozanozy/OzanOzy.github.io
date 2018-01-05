-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Ara 2017, 19:37:29
-- Sunucu sürümü: 10.1.25-MariaDB
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `amatoryorumcular.com`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'beşiktaş', 'besiktas', '2017-12-03 10:30:17', '2017-12-03 10:30:17'),
(2, NULL, 1, 'galatasaray', 'galatasaray', '2017-12-03 11:21:07', '2017-12-03 11:21:07'),
(3, NULL, 1, 'fenerbahçe', 'fenerbahce', '2017-12-03 11:21:23', '2017-12-03 11:21:23'),
(4, NULL, 1, 'başakşehir', 'basaksehir', '2017-12-03 11:21:35', '2017-12-03 11:21:35'),
(5, NULL, 1, 'süperlig', 'superlig', '2017-12-03 11:21:45', '2017-12-03 11:21:45'),
(6, NULL, 1, 'Şampiyonlar Ligi', 'sampiyonlarligi', '2017-12-03 11:22:03', '2017-12-03 12:04:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` int(150) NOT NULL,
  `comment_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `comment_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sahip_id` int(11) DEFAULT NULL,
  `fav_team` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `makale_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `comment_title`, `comment_text`, `sahip_id`, `fav_team`, `makale_id`, `created_at`, `updated_at`) VALUES
(1, 'Umut Ozan', 'selalmarda da bieterere', NULL, 'besiktas', 1, '2017-12-03 13:57:47', '0000-00-00 00:00:00'),
(2, 'Umut Ozan', 'Sselamlsd adsadsd as', 1, NULL, 2, '2017-12-03 10:58:47', '2017-12-03 10:58:47'),
(3, 'Selamlar', 'Git de gelme ulan namuzsunz', 1, '6', 2, '2017-12-03 11:10:28', '2017-12-03 11:10:28'),
(4, 'sahaha', 'saasdqweqweqğdğsdğa', 1, '6', 2, '2017-12-03 11:18:22', '2017-12-03 11:18:22'),
(5, 'demdir o', 'birtanemdir o', 1, '5', 2, '2017-12-03 11:18:40', '2017-12-03 11:18:40'),
(6, 'Yanıyyaıyor', 'yanıyanıyor ellerim dilleim', 1, '6', 4, '2017-12-03 11:27:10', '2017-12-03 11:27:10'),
(7, 'gsgsgs', 'gsgsgsgsgsg', 1, '1', 5, '2017-12-03 12:13:01', '2017-12-03 12:13:01'),
(8, 'beşiktaş', 'beşitkaşsa', 1, '2', 5, '2017-12-03 12:13:52', '2017-12-03 12:13:52'),
(9, 'bhşkagsfab', 'DSDfdsfsdasda', 1, '5', 5, '2017-12-03 12:14:02', '2017-12-03 12:14:02'),
(10, 'sdasdsa', 'dasdasdadasdsada', 1, '3', 5, '2017-12-03 12:14:10', '2017-12-03 12:14:10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 1, 'post_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Categories\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_name\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 16),
(55, 1, 'post_belongsto_category_relationship_1', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Categories\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_slug\",\"key\":\"slug\",\"label\":\"slug\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 17);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2017-12-03 07:52:53', '2017-12-03 07:52:53'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2017-12-03 07:52:53', '2017-12-03 07:52:53'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2017-12-03 07:52:53', '2017-12-03 07:52:53'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2017-12-03 07:52:53', '2017-12-03 07:52:53'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2017-12-03 07:52:54', '2017-12-03 07:52:54'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2017-12-03 07:52:54', '2017-12-03 07:52:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-12-03 07:52:57', '2017-12-03 07:52:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2017-12-03 07:52:57', '2017-12-03 07:52:57', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2017-12-03 07:52:57', '2017-12-03 07:52:57', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2017-12-03 07:52:57', '2017-12-03 07:52:57', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2017-12-03 07:52:57', '2017-12-03 07:52:57', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2017-12-03 07:52:57', '2017-12-03 07:52:57', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2017-12-03 07:52:57', '2017-12-03 07:52:57', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2017-12-03 07:52:57', '2017-12-03 07:52:57', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2017-12-03 07:52:57', '2017-12-03 07:52:57', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 10, '2017-12-03 07:52:57', '2017-12-03 07:52:57', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 11, '2017-12-03 07:52:58', '2017-12-03 07:52:58', 'voyager.database.index', NULL),
(11, 1, 'Compass', '/admin/compass', '_self', 'voyager-compass', NULL, 8, 12, '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL, NULL),
(12, 1, 'Hooks', '/admin/hooks', '_self', 'voyager-hook', NULL, 8, 13, '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL, NULL),
(13, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2017-12-03 07:52:58', '2017-12-03 07:52:58', 'voyager.settings.index', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL),
(2, 'browse_database', NULL, '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL),
(3, 'browse_media', NULL, '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL),
(4, 'browse_compass', NULL, '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL),
(5, 'browse_menus', 'menus', '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL),
(6, 'read_menus', 'menus', '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL),
(7, 'edit_menus', 'menus', '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL),
(8, 'add_menus', 'menus', '2017-12-03 07:52:58', '2017-12-03 07:52:58', NULL),
(9, 'delete_menus', 'menus', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(10, 'browse_pages', 'pages', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(11, 'read_pages', 'pages', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(12, 'edit_pages', 'pages', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(13, 'add_pages', 'pages', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(14, 'delete_pages', 'pages', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(15, 'browse_roles', 'roles', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(16, 'read_roles', 'roles', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(17, 'edit_roles', 'roles', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(18, 'add_roles', 'roles', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(19, 'delete_roles', 'roles', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(20, 'browse_users', 'users', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(21, 'read_users', 'users', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(22, 'edit_users', 'users', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(23, 'add_users', 'users', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(24, 'delete_users', 'users', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(25, 'browse_posts', 'posts', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(26, 'read_posts', 'posts', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(27, 'edit_posts', 'posts', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(28, 'add_posts', 'posts', '2017-12-03 07:52:59', '2017-12-03 07:52:59', NULL),
(29, 'delete_posts', 'posts', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(30, 'browse_categories', 'categories', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(31, 'read_categories', 'categories', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(32, 'edit_categories', 'categories', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(33, 'add_categories', 'categories', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(34, 'delete_categories', 'categories', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(35, 'browse_settings', 'settings', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(36, 'read_settings', 'settings', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(37, 'edit_settings', 'settings', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(38, 'add_settings', 'settings', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL),
(39, 'delete_settings', 'settings', '2017-12-03 07:53:00', '2017-12-03 07:53:00', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `category_name`, `category_slug`) VALUES
(2, 1, 1, 'Igor Tudor sinirlendi', 'seo', 'Igor Tudor Sinirlendi', '<h2 class=\"spot selectionShareable\" style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px 0px 16px; padding: 0px; border: 0px; vertical-align: baseline; font-family: Segoe, \'Segoe UI\', \'DejaVu Sans\', \'Trebuchet MS\', Verdana, sans-serif; line-height: 30px; color: #356083; font-size: 20px;\">Igor&nbsp;<a class=\"tkktLnk\" style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline-style: none; color: #14233a; background-color: transparent;\" href=\"https://www.sabah.com.tr/haberleri/tudor\" target=\"_blank\" rel=\"noopener tag\">Tudor</a>,&nbsp;<a class=\"tkktLnk\" style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline-style: none; color: #14233a; background-color: transparent;\" href=\"https://www.sabah.com.tr/haberleri/besiktas\" target=\"_blank\" rel=\"noopener tag\">Beşiktaş</a>\'a 3-0 kaybettiği derinin ardından sinirliydi. Hırvat teknik adam, kendisine y&ouml;neltilen sorulara gergin yanıtlar verdi.</h2>\r\n<div class=\"newsDetailText\" style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: #14233a; font-family: Segoe, \'Segoe UI\', \'DejaVu Sans\', \'Trebuchet MS\', Verdana, sans-serif; font-size: 16px; font-weight: bold;\">\r\n<div class=\"newsBox selectionShareable\" style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 17px; font-weight: 400; line-height: 26px;\">\r\n<p style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline;\"><a class=\"tkktLnk\" style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline-style: none; color: #356083; background-color: transparent;\" href=\"https://www.sabah.com.tr/haberleri/galatasaray\" target=\"_blank\" rel=\"noopener tag\">Galatasaray</a>&nbsp;Teknik Direkt&ouml;r&uuml; Igor&nbsp;<a class=\"tkktLnk\" style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline-style: none; color: #356083; background-color: transparent;\" href=\"https://www.sabah.com.tr/haberleri/tudor\" target=\"_blank\" rel=\"noopener tag\">Tudor</a>,&nbsp;<a class=\"tkktLnk\" style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; outline-style: none; color: #356083; background-color: transparent;\" href=\"https://www.sabah.com.tr/haberleri/besiktas\" target=\"_blank\" rel=\"noopener tag\">Beşiktaş</a>\'a 3-0 kaybettikleri ma&ccedil;ın ardından ilgin&ccedil; a&ccedil;ıklamalarda bulundu.</p>\r\n<p style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline;\"><span style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: bold;\">İşte Tudor\'un o s&ouml;zleri:</span></p>\r\n<p style=\"-webkit-font-smoothing: antialiased; box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline;\">\"Beşiktaş iyi oynadı, biz iyi oynayamadık, tebrik ediyoruz. Bug&uuml;n kendimiz değildik. Kaybedebilirsin ama kendin olman lazım. Bug&uuml;n Galatasaray gibi oynamadık. Kendi oyuncularımda stat, atmosfer gibi şeylerden etkilenen bir durum g&ouml;rd&uuml;m, bu da hoşuma gitmedi. Bug&uuml;n &ccedil;ıktığımız 11, kafamda d&uuml;ş&uuml;nd&uuml;ğ&uuml;m en iyi 11\'di, o y&uuml;zden bu 11 ile oynadık.\"</p>\r\n</div>\r\n</div>', 'posts/December2017/jhraXvAq13UFJe0rMVA7.jpg', 'igor-tudor-sinirlendi', 'seo', 'seo', 'PUBLISHED', 0, '2017-12-03 09:25:51', '2017-12-03 10:30:35', 'beşiktaş', 'besiktas'),
(3, 1, 6, 'Dursun Özbek Paraları hiç etti', 'gsgs', 'En ucuzu 3 milyon Euro alan “şahane” bir takım kur, başına beceriksiz bir adamı getir. İkisi derbi dört büyük maç oyna ve sadece kendi sahanda tek puan alabil! Bu maçların birinde fark ye, diğerinde ise tarihi bir fark yemekten şansınla kurtul. Al sana ‘Özbek Kardeşler’in Galatasaray’ı...', '<p><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">En ucuzu 3 milyon Euro alan &ldquo;şahane&rdquo; bir takım kur, başına beceriksiz bir adamı getir. İkisi derbi d&ouml;rt b&uuml;y&uuml;k ma&ccedil; oyna ve sadece kendi sahanda tek puan alabil! Bu ma&ccedil;ların birinde fark ye, diğerinde ise tarihi bir fark yemekten şansınla kurtul. Al sana &lsquo;&Ouml;zbek Kardeşler&rsquo;in Galatasaray&rsquo;ı...</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">En ucuzu 3 milyon Euro alan &ldquo;şahane&rdquo; bir takım kur, başına beceriksiz bir adamı getir. İkisi derbi d&ouml;rt b&uuml;y&uuml;k ma&ccedil; oyna ve sadece kendi sahanda tek puan alabil! Bu ma&ccedil;ların birinde fark ye, diğerinde ise tarihi bir fark yemekten şansınla kurtul. Al sana &lsquo;&Ouml;zbek Kardeşler&rsquo;in Galatasaray&rsquo;ı...</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">En ucuzu 3 milyon Euro alan &ldquo;şahane&rdquo; bir takım kur, başına beceriksiz bir adamı getir. İkisi derbi d&ouml;rt b&uuml;y&uuml;k ma&ccedil; oyna ve sadece kendi sahanda tek puan alabil! Bu ma&ccedil;ların birinde fark ye, diğerinde ise tarihi bir fark yemekten şansınla kurtul. Al sana &lsquo;&Ouml;zbek Kardeşler&rsquo;in Galatasaray&rsquo;ı...</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">En ucuzu 3 milyon Euro alan &ldquo;şahane&rdquo; bir takım kur, başına beceriksiz bir adamı getir. İkisi derbi d&ouml;rt b&uuml;y&uuml;k ma&ccedil; oyna ve sadece kendi sahanda tek puan alabil! Bu ma&ccedil;ların birinde fark ye, diğerinde ise tarihi bir fark yemekten şansınla kurtul. Al sana &lsquo;&Ouml;zbek Kardeşler&rsquo;in Galatasaray&rsquo;ı...</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">En ucuzu 3 milyon Euro alan &ldquo;şahane&rdquo; bir takım kur, başına beceriksiz bir adamı getir. İkisi derbi d&ouml;rt b&uuml;y&uuml;k ma&ccedil; oyna ve sadece kendi sahanda tek puan alabil! Bu ma&ccedil;ların birinde fark ye, diğerinde ise tarihi bir fark yemekten şansınla kurtul. Al sana &lsquo;&Ouml;zbek Kardeşler&rsquo;in Galatasaray&rsquo;ı...</span></p>', 'posts/December2017/8aIVtEw6Pd0eMJPQjgkS.jpg', 'dursun-ozbek-paralari-hic-etti', 'gsgs', 'gsgs', 'PUBLISHED', 0, '2017-12-03 11:24:58', '2017-12-03 12:05:08', 'sampiyonlarligi', 'sampiyonlarligi'),
(4, 1, 3, 'Cahil Cühela sürüsü', 'fener', 'Rezaletin dün oynanan son perdesinde... Futbol yorumcularını dinlerken, kafayı yiyecektim dün akşam. İlk yarı bitmiş, “Galatasaray istediğini alıyor” gibisinden aptal saptal laflar ediyor, ayağı topa değmiş ama kafası topa basmayan cühela sürüsü...', '<div class=\"story-desc\" style=\"box-sizing: border-box; margin: 0px; padding: 15px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; color: #000000; line-height: 22.4px; font-family: OpenSans, Arial, Helvetica, sans-serif;\">Rezaletin d&uuml;n oynanan son perdesinde... Futbol yorumcularını dinlerken, kafayı yiyecektim d&uuml;n akşam. İlk yarı bitmiş, &ldquo;Galatasaray istediğini alıyor&rdquo; gibisinden aptal saptal laflar ediyor, ayağı topa değmiş ama kafası topa basmayan c&uuml;hela s&uuml;r&uuml;s&uuml;...</div>\r\n<div class=\"story-desc\" style=\"box-sizing: border-box; margin: 0px; padding: 15px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; color: #000000; line-height: 22.4px; font-family: OpenSans, Arial, Helvetica, sans-serif;\">Rezaletin d&uuml;n oynanan son perdesinde... Futbol yorumcularını dinlerken, kafayı yiyecektim d&uuml;n akşam. İlk yarı bitmiş, &ldquo;Galatasaray istediğini alıyor&rdquo; gibisinden aptal saptal laflar ediyor, ayağı topa değmiş ama kafası topa basmayan c&uuml;hela s&uuml;r&uuml;s&uuml;...</div>\r\n<div class=\"story-desc\" style=\"box-sizing: border-box; margin: 0px; padding: 15px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; color: #000000; line-height: 22.4px; font-family: OpenSans, Arial, Helvetica, sans-serif;\">Rezaletin d&uuml;n oynanan son perdesinde... Futbol yorumcularını dinlerken, kafayı yiyecektim d&uuml;n akşam. İlk yarı bitmiş, &ldquo;Galatasaray istediğini alıyor&rdquo; gibisinden aptal saptal laflar ediyor, ayağı topa değmiş ama kafası topa basmayan c&uuml;hela s&uuml;r&uuml;s&uuml;...</div>\r\n<div class=\"story-desc\" style=\"box-sizing: border-box; margin: 0px; padding: 15px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; color: #000000; line-height: 22.4px; font-family: OpenSans, Arial, Helvetica, sans-serif;\">Rezaletin d&uuml;n oynanan son perdesinde... Futbol yorumcularını dinlerken, kafayı yiyecektim d&uuml;n akşam. İlk yarı bitmiş, &ldquo;Galatasaray istediğini alıyor&rdquo; gibisinden aptal saptal laflar ediyor, ayağı topa değmiş ama kafası topa basmayan c&uuml;hela s&uuml;r&uuml;s&uuml;...</div>\r\n<div class=\"story-desc\" style=\"box-sizing: border-box; margin: 0px; padding: 15px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; color: #000000; line-height: 22.4px; font-family: OpenSans, Arial, Helvetica, sans-serif;\">Rezaletin d&uuml;n oynanan son perdesinde... Futbol yorumcularını dinlerken, kafayı yiyecektim d&uuml;n akşam. İlk yarı bitmiş, &ldquo;Galatasaray istediğini alıyor&rdquo; gibisinden aptal saptal laflar ediyor, ayağı topa değmiş ama kafası topa basmayan c&uuml;hela s&uuml;r&uuml;s&uuml;...</div>\r\n<p>&nbsp;</p>', 'posts/December2017/VUd02XJS6CnkViPSs3lO.jpg', 'cahil-cuhela-surusu', 'fener', 'fener', 'PUBLISHED', 1, '2017-12-03 11:26:44', '2017-12-03 11:26:44', 'fenerbahçe', 'fenerbahce'),
(5, 1, 4, 'Halbuki perşembenin gelişi, çarşambadan belli.', 'basaksehir', 'basaksehir bu bölge olmuş yol geçen hanı. bu bölge olmuş yol geçen hanı.', '<p><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Halbuki perşembenin gelişi, &ccedil;arşambadan belli. İlk yarı Galatasaray bir iki cılız pozisyon bulmuş ama Beşiktaş 3 atma fırsatı yakalamış da olmamış. &Ccedil;&uuml;nk&uuml; &ldquo;İyi kadro &ccedil;ıkardı&rdquo; denilen Tudor, enayiliğin b&uuml;y&uuml;kl&uuml;ğ&uuml;n&uuml; yapmış, savunmanın soluna Denayer&rsquo;i koymuş ki bu b&ouml;lge olmuş yol ge&ccedil;en hanı.</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Halbuki perşembenin gelişi, &ccedil;arşambadan belli. İlk yarı Galatasaray bir iki cılız pozisyon bulmuş ama Beşiktaş 3 atma fırsatı yakalamış da olmamış. &Ccedil;&uuml;nk&uuml; &ldquo;İyi kadro &ccedil;ıkardı&rdquo; denilen Tudor, enayiliğin b&uuml;y&uuml;kl&uuml;ğ&uuml;n&uuml; yapmış, savunmanın soluna Denayer&rsquo;i koymuş ki bu b&ouml;lge olmuş yol ge&ccedil;en hanı.</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Halbuki perşembenin gelişi, &ccedil;arşambadan belli. İlk yarı Galatasaray bir iki cılız pozisyon bulmuş ama Beşiktaş 3 atma fırsatı yakalamış da olmamış. &Ccedil;&uuml;nk&uuml; &ldquo;İyi kadro &ccedil;ıkardı&rdquo; denilen Tudor, enayiliğin b&uuml;y&uuml;kl&uuml;ğ&uuml;n&uuml; yapmış, savunmanın soluna Denayer&rsquo;i koymuş ki bu b&ouml;lge olmuş yol ge&ccedil;en hanı.</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Halbuki perşembenin gelişi, &ccedil;arşambadan belli. İlk yarı Galatasaray bir iki cılız pozisyon bulmuş ama Beşiktaş 3 atma fırsatı yakalamış da olmamış. &Ccedil;&uuml;nk&uuml; &ldquo;İyi kadro &ccedil;ıkardı&rdquo; denilen Tudor, enayiliğin b&uuml;y&uuml;kl&uuml;ğ&uuml;n&uuml; yapmış, savunmanın soluna Denayer&rsquo;i koymuş ki bu b&ouml;lge olmuş yol ge&ccedil;en hanı.</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Halbuki perşembenin gelişi, &ccedil;arşambadan belli. İlk yarı Galatasaray bir iki cılız pozisyon bulmuş ama Beşiktaş 3 atma fırsatı yakalamış da olmamış. &Ccedil;&uuml;nk&uuml; &ldquo;İyi kadro &ccedil;ıkardı&rdquo; denilen Tudor, enayiliğin b&uuml;y&uuml;kl&uuml;ğ&uuml;n&uuml; yapmış, savunmanın soluna Denayer&rsquo;i koymuş ki bu b&ouml;lge olmuş yol ge&ccedil;en hanı.</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Halbuki perşembenin gelişi, &ccedil;arşambadan belli. İlk yarı Galatasaray bir iki cılız pozisyon bulmuş ama Beşiktaş 3 atma fırsatı yakalamış da olmamış. &Ccedil;&uuml;nk&uuml; &ldquo;İyi kadro &ccedil;ıkardı&rdquo; denilen Tudor, enayiliğin b&uuml;y&uuml;kl&uuml;ğ&uuml;n&uuml; yapmış, savunmanın soluna Denayer&rsquo;i koymuş ki bu b&ouml;lge olmuş yol ge&ccedil;en hanı.</span></p>', 'posts/December2017/QupYFiuwBSrHHBeTs6m4.jpg', 'halbuki-persembenin-gelisi-carsambadan-belli-', 'başakşehir', 'başakhieh', 'PUBLISHED', 0, '2017-12-03 11:28:29', '2017-12-03 11:28:29', 'başakşehir', 'basaksehir'),
(6, 1, 6, 'Beşiktaş - Porto maçından enstanteler', 'şlligi', 'Beşiktaş’ın en güçlü yeri, Quaresma ve Gökhan Gönül’ün üst üste bindirdiği yer, Galatasaray’ın en zayıf karnı olarak bırakılmış. Bunu beceren adama da Avrupa Fatihi takım teslim edilmiş. Ama ‘Özbek Brothers’a kulübü verirsen, Tudor’a takım vermişsin çok mu!', '<p><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Beşiktaş&rsquo;ın en g&uuml;&ccedil;l&uuml; yeri, Quaresma ve G&ouml;khan G&ouml;n&uuml;l&rsquo;&uuml;n &uuml;st &uuml;ste bindirdiği yer, Galatasaray&rsquo;ın en zayıf karnı olarak bırakılmış. Bunu beceren adama da Avrupa Fatihi takım teslim edilmiş. Ama &lsquo;&Ouml;zbek Brothers&rsquo;a kul&uuml;b&uuml; verirsen, Tudor&rsquo;a takım vermişsin &ccedil;ok mu!</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Beşiktaş&rsquo;ın en g&uuml;&ccedil;l&uuml; yeri, Quaresma ve G&ouml;khan G&ouml;n&uuml;l&rsquo;&uuml;n &uuml;st &uuml;ste bindirdiği yer, Galatasaray&rsquo;ın en zayıf karnı olarak bırakılmış. Bunu beceren adama da Avrupa Fatihi takım teslim edilmiş. Ama &lsquo;&Ouml;zbek Brothers&rsquo;a kul&uuml;b&uuml; verirsen, Tudor&rsquo;a takım vermişsin &ccedil;ok mu!</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Beşiktaş&rsquo;ın en g&uuml;&ccedil;l&uuml; yeri, Quaresma ve G&ouml;khan G&ouml;n&uuml;l&rsquo;&uuml;n &uuml;st &uuml;ste bindirdiği yer, Galatasaray&rsquo;ın en zayıf karnı olarak bırakılmış. Bunu beceren adama da Avrupa Fatihi takım teslim edilmiş. Ama &lsquo;&Ouml;zbek Brothers&rsquo;a kul&uuml;b&uuml; verirsen, Tudor&rsquo;a takım vermişsin &ccedil;ok mu!</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Beşiktaş&rsquo;ın en g&uuml;&ccedil;l&uuml; yeri, Quaresma ve G&ouml;khan G&ouml;n&uuml;l&rsquo;&uuml;n &uuml;st &uuml;ste bindirdiği yer, Galatasaray&rsquo;ın en zayıf karnı olarak bırakılmış. Bunu beceren adama da Avrupa Fatihi takım teslim edilmiş. Ama &lsquo;&Ouml;zbek Brothers&rsquo;a kul&uuml;b&uuml; verirsen, Tudor&rsquo;a takım vermişsin &ccedil;ok mu!</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Beşiktaş&rsquo;ın en g&uuml;&ccedil;l&uuml; yeri, Quaresma ve G&ouml;khan G&ouml;n&uuml;l&rsquo;&uuml;n &uuml;st &uuml;ste bindirdiği yer, Galatasaray&rsquo;ın en zayıf karnı olarak bırakılmış. Bunu beceren adama da Avrupa Fatihi takım teslim edilmiş. Ama &lsquo;&Ouml;zbek Brothers&rsquo;a kul&uuml;b&uuml; verirsen, Tudor&rsquo;a takım vermişsin &ccedil;ok mu!</span><span style=\"color: #000000; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 16px;\">Beşiktaş&rsquo;ın en g&uuml;&ccedil;l&uuml; yeri, Quaresma ve G&ouml;khan G&ouml;n&uuml;l&rsquo;&uuml;n &uuml;st &uuml;ste bindirdiği yer, Galatasaray&rsquo;ın en zayıf karnı olarak bırakılmış. Bunu beceren adama da Avrupa Fatihi takım teslim edilmiş. Ama &lsquo;&Ouml;zbek Brothers&rsquo;a kul&uuml;b&uuml; verirsen, Tudor&rsquo;a takım vermişsin &ccedil;ok mu!</span></p>', 'posts/December2017/CqpgIwfmJepj9OzqrSF7.jpg', 'besiktas-porto-macindan-enstanteler', 'şlligi', 'şlligi', 'PUBLISHED', 0, '2017-12-03 11:30:01', '2017-12-03 12:03:10', 'Şampiyonlar Ligi', 'sampiyonlarligi'),
(7, 1, 5, 'Erdoğan: İş Adamlarının Varlıklarını Yurt Dışına Çıkarma Gayretlerini Duyuyorum', 'apkp', 'AK Parti Muş İl Başkanlığı kongresinde konuşan Erdoğan, son günlerde bazı sinyaller aldığını söyleyerek, \"Sinyal veriyorum, bazı haberler alıyorum.', '<p><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"AK Parti Haberleri\" href=\"https://www.haberler.com/ak-parti/\">AK Parti</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"Muş Haberleri\" href=\"https://www.haberler.com/mus/\">Muş</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;İl Başkanlığı kongresinde konuşan Erdoğan, son g&uuml;nlerde bazı sinyaller aldığını s&ouml;yleyerek, \"Sinyal veriyorum, bazı haberler alıyorum. Sinyaller alıyorum. Bazı iş adamlarının varlıklarını yurt dışına ka&ccedil;ırma gibi gayretleri olduğunu duyuyorum. Bunların hi&ccedil;birine kabinedeki arkadaşlarımız &ccedil;ıkış i&ccedil;in asla izin vermemelisiniz.\" dedi.</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"AK Parti Haberleri\" href=\"https://www.haberler.com/ak-parti/\">AK Parti</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"Muş Haberleri\" href=\"https://www.haberler.com/mus/\">Muş</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;İl Başkanlığı kongresinde konuşan Erdoğan, son g&uuml;nlerde bazı sinyaller aldığını s&ouml;yleyerek, \"Sinyal veriyorum, bazı haberler alıyorum. Sinyaller alıyorum. Bazı iş adamlarının varlıklarını yurt dışına ka&ccedil;ırma gibi gayretleri olduğunu duyuyorum. Bunların hi&ccedil;birine kabinedeki arkadaşlarımız &ccedil;ıkış i&ccedil;in asla izin vermemelisiniz.\" dedi.</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"AK Parti Haberleri\" href=\"https://www.haberler.com/ak-parti/\">AK Parti</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"Muş Haberleri\" href=\"https://www.haberler.com/mus/\">Muş</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;İl Başkanlığı kongresinde konuşan Erdoğan, son g&uuml;nlerde bazı sinyaller aldığını s&ouml;yleyerek, \"Sinyal veriyorum, bazı haberler alıyorum. Sinyaller alıyorum. Bazı iş adamlarının varlıklarını yurt dışına ka&ccedil;ırma gibi gayretleri olduğunu duyuyorum. Bunların hi&ccedil;birine kabinedeki arkadaşlarımız &ccedil;ıkış i&ccedil;in asla izin vermemelisiniz.\" dedi.</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"AK Parti Haberleri\" href=\"https://www.haberler.com/ak-parti/\">AK Parti</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"Muş Haberleri\" href=\"https://www.haberler.com/mus/\">Muş</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;İl Başkanlığı kongresinde konuşan Erdoğan, son g&uuml;nlerde bazı sinyaller aldığını s&ouml;yleyerek, \"Sinyal veriyorum, bazı haberler alıyorum. Sinyaller alıyorum. Bazı iş adamlarının varlıklarını yurt dışına ka&ccedil;ırma gibi gayretleri olduğunu duyuyorum. Bunların hi&ccedil;birine kabinedeki arkadaşlarımız &ccedil;ıkış i&ccedil;in asla izin vermemelisiniz.\" dedi.</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"AK Parti Haberleri\" href=\"https://www.haberler.com/ak-parti/\">AK Parti</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;</span><a class=\"keyword\" style=\"box-sizing: border-box; line-height: 23.8px; text-decoration-line: none; font-family: Roboto, sans-serif; font-size: 17px; margin: 15px 0px 0px; color: #333333 !important; cursor: pointer !important;\" title=\"Muş Haberleri\" href=\"https://www.haberler.com/mus/\">Muş</a><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 17px;\">&nbsp;İl Başkanlığı kongresinde konuşan Erdoğan, son g&uuml;nlerde bazı sinyaller aldığını s&ouml;yleyerek, \"Sinyal veriyorum, bazı haberler alıyorum. Sinyaller alıyorum. Bazı iş adamlarının varlıklarını yurt dışına ka&ccedil;ırma gibi gayretleri olduğunu duyuyorum. Bunların hi&ccedil;birine kabinedeki arkadaşlarımız &ccedil;ıkış i&ccedil;in asla izin vermemelisiniz.\" dedi.</span></p>', 'posts/December2017/jKtA6f0iQvczvinIJ9m3.jpg', 'erdogan-i-s-adamlarinin-varliklarini-yurt-disina-cikarma-gayretlerini-duyuyorum', 'akp', 'akp', 'PUBLISHED', 1, '2017-12-03 12:10:26', '2017-12-03 12:10:26', 'süperlig', 'superlig'),
(8, 1, 2, 'ÇÜNKÜ BU ADAMLAR VATAN HAİNİDİR\"', 'kpaakp a', 'ÇÜNKÜ BU ADAMLAR VATAN HAİNİDİR\"\r\n\r\nErdoğan sözlerine şöyle devam etti', '<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\"><span style=\"box-sizing: border-box; line-height: 28px; margin: 15px 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-weight: 600; display: block; width: 810px;\">&Ccedil;&Uuml;NK&Uuml; BU ADAMLAR VATAN HAİNİDİR\"</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\"><span style=\"box-sizing: border-box; line-height: 28px; margin: 15px 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-weight: 600; display: block; width: 810px;\">Erdoğan s&ouml;zlerine ş&ouml;yle devam etti:</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\">&Ccedil;&uuml;nk&uuml; bu adımlar ihaneti vataniyedir. Bu &uuml;lkede kazanıp &uuml;lke dışına ka&ccedil;ıranlara iyi nazarda bakmayız. Merkez bankamızın varlığı 27,5 milyar liraydı şu an 117 milyar gibi bir rakamdayız. Y&uuml;kselecek, şartlar&nbsp;<span style=\"font-size: 20px; font-weight: 600;\">&Ccedil;&Uuml;NK&Uuml; BU ADAMLAR VATAN HAİNİDİR\"</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\"><span style=\"box-sizing: border-box; line-height: 28px; margin: 15px 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-weight: 600; display: block; width: 810px;\">Erdoğan s&ouml;zlerine ş&ouml;yle devam etti:</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\">&Ccedil;&uuml;nk&uuml; bu adımlar ihaneti vataniyedir. Bu &uuml;lkede kazanıp &uuml;lke dışına ka&ccedil;ıranlara iyi nazarda bakmayız. Merkez bankamızın varlığı 27,5 milyar liraydı şu an 117 milyar gibi bir rakamdayız. Y&uuml;kselecek, şartlar&nbsp;<span style=\"font-size: 20px; font-weight: 600;\">&Ccedil;&Uuml;NK&Uuml; BU ADAMLAR VATAN HAİNİDİR\"</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\"><span style=\"box-sizing: border-box; line-height: 28px; margin: 15px 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-weight: 600; display: block; width: 810px;\">Erdoğan s&ouml;zlerine ş&ouml;yle devam etti:</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\">&Ccedil;&uuml;nk&uuml; bu adımlar ihaneti vataniyedir. Bu &uuml;lkede kazanıp &uuml;lke dışına ka&ccedil;ıranlara iyi nazarda bakmayız. Merkez bankamızın varlığı 27,5 milyar liraydı şu an 117 milyar gibi bir rakamdayız. Y&uuml;kselecek, şartlar&nbsp;<span style=\"font-size: 20px; font-weight: 600;\">&Ccedil;&Uuml;NK&Uuml; BU ADAMLAR VATAN HAİNİDİR\"</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\"><span style=\"box-sizing: border-box; line-height: 28px; margin: 15px 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-weight: 600; display: block; width: 810px;\">Erdoğan s&ouml;zlerine ş&ouml;yle devam etti:</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\">&Ccedil;&uuml;nk&uuml; bu adımlar ihaneti vataniyedir. Bu &uuml;lkede kazanıp &uuml;lke dışına ka&ccedil;ıranlara iyi nazarda bakmayız. Merkez bankamızın varlığı 27,5 milyar liraydı şu an 117 milyar gibi bir rakamdayız.&nbsp;<span style=\"font-size: 20px; font-weight: 600;\">&Ccedil;&Uuml;NK&Uuml; BU ADAMLAR VATAN HAİNİDİR\"</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\"><span style=\"box-sizing: border-box; line-height: 28px; margin: 15px 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-weight: 600; display: block; width: 810px;\">Erdoğan s&ouml;zlerine ş&ouml;yle devam etti:</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\">&Ccedil;&uuml;nk&uuml; bu adımlar ihaneti vataniyedir. Bu &uuml;lkede kazanıp &uuml;lke dışına ka&ccedil;ıranlara iyi nazarda bakmayız. Merkez bankamızın varlığı 27,5 milyar liraydı şu an 117 milyar gibi bir rakamdayız.&nbsp;<span style=\"font-size: 20px; font-weight: 600;\">&Ccedil;&Uuml;NK&Uuml; BU ADAMLAR VATAN HAİNİDİR\"</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\"><span style=\"box-sizing: border-box; line-height: 28px; margin: 15px 0px; padding: 0px; border: 0px; font-size: 20px; vertical-align: baseline; font-weight: 600; display: block; width: 810px;\">Erdoğan s&ouml;zlerine ş&ouml;yle devam etti:</span></p>\r\n<p class=\"selectionShareable\" style=\"box-sizing: border-box; line-height: 25.5px; margin: 15px 0px 0px; padding: 0px; border: 0px; font-size: 17px; vertical-align: baseline; font-family: Roboto, sans-serif; color: #333333;\">&Ccedil;&uuml;nk&uuml; bu adımlar ihaneti vataniyedir. Bu &uuml;lkede kazanıp &uuml;lke dışına ka&ccedil;ıranlara iyi nazarda bakmayız. Merkez bankamızın varlığı 27,5 milyar liraydı şu an 117 milyar gibi bir rakamdayız. Y&uuml;kselecek, şartlar ne olursa olsun.Y&uuml;kselecek, şartlar ne olursa olsun.Y&uuml;kselecek, şartlar ne olursa olsun.ne olursa olsun.ne olursa olsun.ne olursa olsun.</p>', 'posts/December2017/6tW43qZ794xDXvcVjuua.jpg', 'cunku-bu-adamlar-vatan-hai-ni-di-r-', 'akp', 'akp akp', 'PUBLISHED', 0, '2017-12-03 12:11:40', '2017-12-03 12:11:40', 'galatasaray', 'galatasaray'),
(9, 1, 2, 'Voyager admin paneli yüklenmiştir', 'sgs', NULL, '<p>Voyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştirVoyager admin paneli y&uuml;klenmiştir</p>', 'posts/December2017/eDT05mDidxAWBEsESqor.jpeg', 'voyager-admin-paneli-yuklenmistir', 'gs', 'gs', 'PUBLISHED', 0, '2017-12-03 12:39:50', '2017-12-03 12:39:50', 'galatasaray', 'galatasaray');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2017-12-03 07:52:58', '2017-12-03 07:52:58'),
(2, 'user', 'Normal User', '2017-12-03 07:52:58', '2017-12-03 07:52:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ozan', 'ozanozy75@gmail.com', 'users/December2017/FeKgzJfeS4MprGCg9lMx.jpg', '$2y$10$WKu.WeD/0wG/za0jagtsb.64d7LEsO.5kMLfLfbnX5lqG/lzJACRi', NULL, '2017-12-03 07:59:05', '2017-12-03 08:01:55'),
(2, 1, 'Ozano', 'your@email.com', 'users/default.png', '$2y$10$HXO5CLskrbKurBqph/PFz.DdRAAG9k1jao4s458BxL9UtnoxSiInq', NULL, '2017-12-17 07:32:48', '2017-12-17 07:32:49');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Tablo için indeksler `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Tablo için indeksler `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Tablo için indeksler `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Tablo için indeksler `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Tablo için indeksler `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Tablo için indeksler `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Tablo için indeksler `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- Tablo için AUTO_INCREMENT değeri `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Tablo için AUTO_INCREMENT değeri `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
