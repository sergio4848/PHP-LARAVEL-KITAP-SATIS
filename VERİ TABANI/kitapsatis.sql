-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Ara 2021, 18:30:48
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kitapsatis`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `keywords`, `description`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 0, 'Kişisel Gelişim', 'kişisel gelişim', 'kişisel gelişim', NULL, 'kisisel-gelisim', 'true', NULL, NULL),
(9, 0, 'Tarih', 'Tarih', 'Tarih', NULL, 'tarih', 'true', NULL, NULL),
(10, 0, 'Sağlık-Tıp', 'sağlık tıp', 'sağlık tıp', NULL, 'saglik-tip', 'true', NULL, NULL),
(11, 0, 'Sanat', 'Sanat', 'Sanat', NULL, 'sanat', 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Siteye Nasıl Kaydolurum?', '<p>Register kısmından kayıt olabilirsiniz!</p>', 1, 'true', '2021-02-08 14:11:27', '2021-02-08 14:11:27'),
(2, 'Nasıl kitap satın alabilirim?', '<p>&Uuml;r&uuml;nleri sepete ekleyip, kolayca satın alabilirsiniz.</p>', 2, 'true', '2021-02-08 14:11:56', '2021-12-01 14:35:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filemanager`
--

CREATE TABLE `filemanager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `absolute_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `product_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'images/pbqjNullhmJExTvqTTk5bVnfyat3zuI6zfC6D5tB.jpg', '2021-02-08 12:07:03', '2021-02-08 12:07:03'),
(2, 1, '2', 'images/vIOx36NlGb21F8tAZ2PwiOleb8aHmqewzxkj6EZK.jpg', '2021-02-08 12:07:27', '2021-02-08 12:07:27'),
(3, 2, '1', 'images/0CgUmQSo3U7nO6DImevyjt2TN7bG4IjYAdVZbmog.jpg', '2021-02-08 12:26:30', '2021-02-08 12:26:30'),
(4, 2, '2', 'images/1CU6Dvqb8AM3BGyUxrjOsgqSA9d7KyrDEb0hftRK.jpg', '2021-02-08 12:26:37', '2021-02-08 12:26:37'),
(5, 2, '3', 'images/jTDjdXUfrDsXVnBM4UZPNDv6J01cg9y3L0jJL8OD.png', '2021-02-08 12:26:48', '2021-02-08 12:26:48'),
(6, 8, '1', 'images/adM2xFATz90UoISDGRl0dKS6o5qqpP7azPXFQ442.jpg', '2021-12-01 14:03:15', '2021-12-01 14:03:15'),
(7, 9, '1', 'images/5ojyzy6M3ierllJ5bbdvVYPlHngp4AtsiVOC0FuP.jpg', '2021-12-01 14:03:39', '2021-12-01 14:03:39'),
(8, 10, '1', 'images/l9HoeFRiXcS8HPE2pqmBgLXn6nR87o6QjV6s1FjI.jpg', '2021-12-01 14:14:27', '2021-12-01 14:14:27'),
(9, 11, '1', 'images/M4Yo7e4y5VxkDOckJX5JVSYhlWXeFuvJZXL9NX8u.jpg', '2021-12-01 14:14:53', '2021-12-01 14:14:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `note`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Muhammet Can GÜMÜŞSU', 'mcangumussu@gmail.com', '055555555', 'konu', 'mesaj', NULL, 'New', '2021-12-01 14:36:36', '2021-12-01 14:36:36'),
(4, 'Muhammet Can GÜMÜŞSU', 'mcangumussu@gmail.com', '054545454', 'aldskjlasl', 'asjdlkasjdlasj', NULL, 'New', '2021-12-02 13:28:33', '2021-12-02 13:28:33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_11_28_161526_create_sessions_table', 1),
(7, '2020_05_02_100001_create_filemanager_table', 2),
(8, '2021_12_01_150204_add_yazar_to_products', 3),
(9, '2021_12_01_150218_add_sayfasayisi_to_products', 3),
(10, '2021_12_01_150233_add_basimyili_to_products', 3),
(11, '2021_12_01_150301_add_dil_to_products', 3),
(12, '2021_12_01_155052_add_phone_to_users', 4),
(13, '2021_12_01_155102_add_address_to_users', 4),
(14, '2021_12_02_164924_add_phone_to_users', 5),
(15, '2021_12_02_165141_add_address_to_users', 6),
(16, '2021_12_02_172500_add_address_to_users', 7),
(17, '2021_12_02_172517_add_phone_to_users', 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orderitems`
--

CREATE TABLE `orderitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `note` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orderitems`
--

INSERT INTO `orderitems` (`id`, `user_id`, `order_id`, `product_id`, `price`, `quantity`, `amount`, `total`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1649, 1, 1649.00, 1649.00, 'yok', 'Cancelled', '2021-02-08 12:43:54', '2021-02-08 13:57:20'),
(2, 1, 2, 1, 1649, 1, 1649.00, 1649.00, NULL, 'New', '2021-02-08 14:28:20', '2021-02-08 14:28:20'),
(3, 3, 3, 1, 1649, 1, 1649.00, 1649.00, NULL, 'New', '2021-08-28 12:09:52', '2021-08-28 12:09:52'),
(4, 1, 4, 8, 20, 1, 20.00, 80.00, NULL, 'New', '2021-12-01 14:28:22', '2021-12-01 14:28:22'),
(5, 1, 4, 10, 30, 2, 60.00, 80.00, NULL, 'New', '2021-12-01 14:28:22', '2021-12-01 14:28:22'),
(6, 1, 5, 8, 20, 2, 40.00, 88.00, NULL, 'New', '2021-12-01 14:30:39', '2021-12-01 14:30:39'),
(7, 1, 5, 9, 16, 3, 48.00, 88.00, NULL, 'New', '2021-12-01 14:30:39', '2021-12-01 14:30:39'),
(8, 1, 6, 11, 62, 1, 62.00, 62.00, NULL, 'New', '2021-12-01 14:48:49', '2021-12-01 14:48:49'),
(9, 1, 7, 8, 20, 2, 40.00, 100.00, NULL, 'New', '2021-12-02 13:26:46', '2021-12-02 13:26:46'),
(10, 1, 7, 10, 30, 2, 60.00, 100.00, NULL, 'New', '2021-12-02 13:26:46', '2021-12-02 13:26:46'),
(11, 1, 8, 11, 62, 1, 62.00, 62.00, NULL, 'New', '2021-12-02 13:40:39', '2021-12-02 13:40:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL,
  `note` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `address`, `phone`, `total`, `note`, `IP`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'Muhammet Can GÜMÜŞSU', 'mcangumussu@gmail.com', 'Samsun', '1111', 80.00, NULL, '127.0.0.1', 'New', '2021-12-01 14:28:22', '2021-12-01 14:28:22'),
(5, 1, 'Muhammet Can GÜMÜŞSU', 'mcangumussu@gmail.com', 'Samsun', '1111', 88.00, NULL, '127.0.0.1', 'New', '2021-12-01 14:30:39', '2021-12-01 14:30:39'),
(6, 1, 'Muhammet Can GÜMÜŞSU', 'mcangumussu@gmail.com', 'Samsun', '1111', 62.00, NULL, '127.0.0.1', 'New', '2021-12-01 14:48:49', '2021-12-01 14:48:49'),
(7, 1, 'Muhammet Can GÜMÜŞSU', 'mcangumussu@gmail.com', 'Samsun', '1111', 100.00, 'ok', '127.0.0.1', 'Accepted', '2021-12-02 13:26:46', '2021-12-02 13:27:19'),
(8, 1, 'Muhammet Can GÜMÜŞSU', 'mcangumussu@gmail.com', 'Samsun', '1111', 62.00, NULL, '127.0.0.1', 'New', '2021-12-02 13:40:39', '2021-12-02 13:40:39');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `minquantity` int(11) NOT NULL DEFAULT 5,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `yazar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sayfasayisi` int(11) NOT NULL,
  `basimyili` int(11) NOT NULL,
  `dil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `title`, `keywords`, `description`, `image`, `category_id`, `user_id`, `price`, `quantity`, `minquantity`, `detail`, `slug`, `status`, `created_at`, `updated_at`, `yazar`, `sayfasayisi`, `basimyili`, `dil`) VALUES
(8, 'Başarı ve Mutluluk İçin Hayata Gülümse', 'Başarı ve Mutluluk İçin Hayata Gülümse', 'Başarı ve Mutluluk İçin Hayata Gülümse', 'images/nfbR90tM1BWLQMnhDVq1ihmLHFoSS9JQodHgx1VN.jpg', 8, 1, 20.00, 5, 1, '<div class=\"top-block\">\r\n                            <div class=\"pr_producers\">\r\n    <!-- MANUFACTURERS -->\r\n    <div class=\"pr_producers__manufacturer\">\r\n                                        <div class=\"pr_producers__item\">\r\n                <a class=\"pr_producers__link\" href=\"https://www.kitapyurdu.com/yazar/sitki-aslanhan/25891.html\"> Sıtkı Aslanhan</a>            </div>\r\n                                    </div>\r\n\r\n                                <div class=\"pr_producers__sep\"></div>\r\n            \r\n    <!-- PUBLISHERS -->\r\n    <div class=\"pr_producers__publisher\">\r\n        <div class=\"pr_producers__item\">\r\n            <a class=\"pr_producers__link\" href=\"https://www.kitapyurdu.com/yayinevi/cinaralti-yayincilik/3832.html\">ÇINARALTI YAYINCILIK</a>        </div>\r\n            </div>\r\n</div>\r\n                            <!-- RATING STARS -->\r\n<div id=\"rating-393317\" class=\"rating\">\r\n    <ul class=\"pr_rating-stars\">\r\n        <li class=\"pr_rating-stars__item js-rating-stars__item\"><i class=\"sprite__product icon__star-big icon__star-big--selected\"></i></li><li class=\"pr_rating-stars__item js-rating-stars__item\"><i class=\"sprite__product icon__star-big icon__star-big--selected\"></i></li><li class=\"pr_rating-stars__item js-rating-stars__item\"><i class=\"sprite__product icon__star-big icon__star-big--selected\"></i></li><li class=\"pr_rating-stars__item js-rating-stars__item\"><i class=\"sprite__product icon__star-big icon__star-big--selected\"></i></li><li class=\"pr_rating-stars__item js-rating-stars__item\"><i class=\"sprite__product icon__star-big icon__star-big--selected\"></i></li>        <li class=\"pr_rating-stars__item js-rating-stars__item\"><i class=\"sprite__product icon__arrow-big-down icon--dimension-arrow-big icon--opacitiy-4\"></i></li>\r\n    </ul>\r\n</div>\r\n\r\n                                                            <div class=\"pr_description\">\r\n                                    <div id=\"description_text\" class=\"readmore-js-section readmore-js-collapsed\" style=\"height: 200px;\">\r\n    <span class=\"info__text\">Yavru deve annesine sormuş:<br>“Anne, bizim niye hörgücümüz var?”<br>“Yavrum!” demiş anne. “Çöl sıcağında susuzluğa dayanalım diye.”<br>“Peki anne…” demiş. “Bizim toynaklarımız niye bu kadar geniş?”<br>“Yavrum!” demiş. “Çölde ayaklarımız kuma batmasın diye.”<br>“Anne, bizim boynumuz niye bu kadar uzun?”<br>“Yavrum!” demiş. “Çölde uzaktan gelen tehlikeleri görebilelim diye.”<br>“Peki anne, Allah aşkına bizim hayvanat bahçesinde ne işimiz var?”<br>&nbsp;<br>Mutluluk ve başarı için hayata gülümsetmeye çalışan bu eserde yazar verdiği örneklerle ve küçük hikâyelerle mutluluğun ve başarının aslında bizim içimizde olduğunu anlatıyor. Hani ressama sormuşlar; “Mutluluğun resmini çizebilir misin?” diye. Ressam cevap vermiş:<br>“Ben çizerim de sen anlayabilir misin?”<br>&nbsp;<br>Gelin hep beraber mutluluğun resmini anlamaya çalışalım…<br></span>\r\n</div><a href=\"#\" class=\"readmore-js-toggle\">devamını oku</a>\r\n\r\n<script>\r\n    domReady(function(){\r\n        $(\"#description_text\").readmore({\r\n            moreLink: \'(<a href=\"#\">devamını oku</a>)\',\r\n            lessLink: \'(<a href=\"#\">gizle</a>)\'\r\n        });\r\n    });\r\n</script>\r\n\r\n\r\n\r\n\r\n\r\n                                </div>\r\n                            \r\n                        </div>', 'basari-ve-mutluluk-icin-hayata-gulumse', 'True', '2021-12-01 12:32:02', '2021-12-01 12:32:02', 'Sıtkı Aslanhan', 216, 2016, 'Türkçe'),
(9, 'Son Cüret', 'Son Cüret', 'Son Cüret', 'images/NandyPpLyWhZiaU4LVHLsdUmfYFzNWxfGZ3gBuL5.jpg', 9, 1, 16.00, 5, 1, '<div class=\"pr_description\">\r\n                                    <div id=\"description_text\" class=\"readmore-js-section readmore-js-collapsed\" style=\"height: 200px;\">\r\n    <span class=\"info__text\">Şişli’deki üç katlı pembe binanın perdeleri sıkı sıkıya kapalıydı.<br>Gaz lambasının cılız ışığı, odayı hayal meyal aydınlatıyordu.<br>Altı kişiydiler.<br>Üzerine harita yayılmış masanın etrafında, ayaktaydılar.<br>&nbsp;<br>Talihsiz bir kuşağın çocuklarıydılar.<br>Hayat onları hep mecbur bırakmıştı.<br>Bıyıkları terlediğinden beri neredeyse bir gün olsun günyüzü görmemişlerdi, Çanakkale’den Trablus’a, Yemen’den Sina’ya, Balkanlar’dan Kafkaslar’a vuruşmadıkları coğrafya kalmamıştı.<br>Ve neticede, işte bu daracık odaya sıkışmışlardı.<br>&nbsp;<br>Uzuuun uzun anlattığı haritadan başını kaldırdı.<br>Adeta nefes bile almayan arkadaşlarına baktı.<br>Ulusun kader anıydı.<br>Söylenecek ne varsa söylenmişti.<br>Söz bitmişti.<br>O çelik mavisi gözlerinde belli belirsiz bir keder bulutu dolaştı.<br>“Vakit tamam” dedi...<br>&nbsp;<br>“Umutsuz olmayacağız.<br>Uçurumun kenarındayız.<br>Bizi canlı canlı mezara atmak istiyorlar.<br><strong>Son bir cüret </strong><br>belki kurtarabilir.<br>Anadolu’ya geçiyoruz!”<br></span>\r\n</div><a href=\"#\" class=\"readmore-js-toggle\">devamını oku</a>\r\n\r\n<script>\r\n    domReady(function(){\r\n        $(\"#description_text\").readmore({\r\n            moreLink: \'(<a href=\"#\">devamını oku</a>)\',\r\n            lessLink: \'(<a href=\"#\">gizle</a>)\'\r\n        });\r\n    });\r\n</script>\r\n\r\n\r\n\r\n\r\n\r\n                                </div>', 'son-curet', 'True', '2021-12-01 12:41:42', '2021-12-01 12:41:42', 'Yılmaz ÖZDİL', 456, 2020, 'Türkçe'),
(10, 'Sağlığına Format At', 'Sağlığına Format At', 'Sağlığına Format At', 'images/OvS1Vw4pnP4N5YQLMcygJMGXS4Bmv0w1ZCwomG7q.jpg', 10, 1, 30.00, 5, 1, '<div id=\"description_text\" class=\"readmore-js-section readmore-js-collapsed\" style=\"height: 200px;\">\r\n    <span class=\"info__text\"><br>Sıkı durun! Çünkü çok ama çok şaşıracaksınız…<br><br>Uyarayım, ezberinizi bozacağım! Hastalıklar konusunda hiç ama hiç duymadığınız şeyler anlatacağım size. Sağlık konusundaki paradigmaları değiştirecek, bildiklerinizi geçersiz kılacak bir kitabı tutuyorsunuz elinizde. Hastalık diye adlandırdığımız şeyin aslında bambaşka bir şey olduğunu anlayacak ve Artık Korkmayacaksınız!<br>Çünkü Aslında Hastalıklardan Korkmak İçin<br>Hiçbir Neden Yok!<br><br>Kilo sorunlarından diyabete, yüksek tansiyondan romatizmaya, alerjilerden kalp krizine ve hatta kansere kadar tüm hastalıklar beynimizde bir şalterin yukarı kalkmasıyla başlıyor. Ben şimdi size o şalteri geri indirmenin yöntemini anlatacağım.<br></span>\r\n</div>', 'sagligina-format-at', 'True', '2021-12-01 12:43:02', '2021-12-01 12:43:02', 'M. Barış Muslu', 328, 2017, 'Türkçe'),
(11, 'Dünya Sanat Tarihi', 'Dünya Sanat Tarihi', 'Dünya Sanat Tarihi', 'images/mG3tTiPTFCgQ0nEL59S6O1JLncL9FlhhUdXl2E8A.jpg', 11, 1, 62.00, 5, 1, '<div id=\"description_text\">\r\n    <span class=\"info__text\">Dünya sanatını, tüm eğilim ve örnekleriyle bu kitaptan izleyin! Ayrıca 15oo’ü aşkın görsel…<br><br>Bir ülke kültürü, kendi somut biçimini sanat eserleriyle bulur. Bu yanıyla sanat eserleri, ulusların düşün hayatının önemli anıtları olduğu gibi, bir ülkede yaşayan toplumsal varlığın da<br><br>inkâr edilemez kanıtlarıdır… Onun içindir ki dünya sanat tarihine yönelme, sanat kültürünün tanınmasında biricik yoldur.<br></span>\r\n</div>', 'dunya-sanat-tarihi', 'True', '2021-12-01 12:44:46', '2021-12-01 12:44:46', 'Adnan Turani', 816, 2019, 'Türkçe');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) NOT NULL DEFAULT 0,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `subject`, `review`, `IP`, `rate`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 9, 'KONU', 'YORUM', '127.0.0.1', 5, 'New', '2021-12-01 14:17:20', '2021-12-01 14:17:20'),
(3, 1, 9, 'kötü', 'kötü', '127.0.0.1', 1, 'New', '2021-12-01 14:17:59', '2021-12-01 14:17:59'),
(4, 1, 11, 'yorum', 'yorum', '127.0.0.1', 4, 'New', '2021-12-02 13:31:26', '2021-12-02 13:31:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('m4qTHdf6IKe5kLou0NSJhi455ugCAj1kfgh1nxvN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRElwMHJCR3NRTmkyUnpCa3lHS2ZReE8yYTZMdzJBSGdmeG96Ukh2TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkOHY5MEc0aFoua2pyWDZaZzNEdGFBLmlWREw5RzVVdUxWTzUuajdtN1VPSlozNjV4NTJHUWUiO30=', 1638464195),
('pLnAWzUECkZJ2lMkEtTWi4R72RbOSV8JnimPuhfF', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid05qbU9nUkwwTENxeXRCc0JZRGlXZ3BTTkw0STFENUNtc3B2eVdPRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRMTmNVWldrTTViSXBnTUlVNDRMUWguLjA1NWIxZWVPaFJrY0trMmVFTDF3TE1nUC8yaU16RyI7fQ==', 1638466138);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT 0,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'False',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `title`, `keywords`, `description`, `company`, `address`, `phone`, `fax`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `twitter`, `youtube`, `aboutus`, `contact`, `references`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Online Kitap Satış Sitesi', 'Online Kitap Satış Sitesi', 'Online Kitap Satış Sitesi', 'Online Kitap Satış Sitesi', 'Samsun', '055555555', '055555555', 'sitemiz@info.com', 'smtp.sitemiz.com', 'smtp@email.com', '12345', 578, 'facebook.com', 'instagram.com', 'twitter.com', 'youtube.com', '<h1>Hakkımızda</h1>\r\n\r\n<h2>n11.com</h2>\r\n\r\n<p>Doğuş Planet, e-ticaret sekt&ouml;r&uuml;nde faaliyet g&ouml;stermek &uuml;zere, Doğuş Grubu ile G&uuml;ney Kore&rsquo;nin en b&uuml;y&uuml;k gruplarından SK Group&rsquo;un ortaklığında Haziran 2012&rsquo;de kuruldu.</p>\r\n\r\n<p>Doğuş Planet, SK Group&rsquo;un teknoloji ve inovasyon konusundaki tecr&uuml;besini Doğuş Grubu&rsquo;nun bilgi birikimi, b&ouml;lgesel tecr&uuml;besi ve g&uuml;c&uuml; ile birleştirmektedir.</p>\r\n\r\n<p>Bu g&uuml;&ccedil;l&uuml; ortaklık &ccedil;er&ccedil;evesinde, Doğuş Planet e-ticaret yatırımı olarak, binlerce marka ve mağazayı milyonlarca m&uuml;şteriyle buluşturan a&ccedil;ık pazar platformu alışverişin uğurlu adresi &ldquo;n11.com&rdquo;u a&ccedil;tı.</p>\r\n\r\n<p>n11.com; elektronikten tekstile, mutfak gere&ccedil;lerinden T&uuml;rkiye&rsquo;nin nadide el sanatlarına kadar farklı ihtiya&ccedil; ve zevklere hitap eden milyonlarca &uuml;r&uuml;n, alışveriş yaptık&ccedil;a kazandıran yapısı ile &uuml;yelerine yeni bir alışveriş deneyimi sunuyor. n11.com, m&uuml;şteriler tarafında g&uuml;ven ve kolaylık, mağazalar tarafında ise işbirliği ve e-ticareti geliştirme odaklı bir yaklaşım izlemektedir.</p>\r\n\r\n<p>Siz de alışverişin uğurlu d&uuml;nyasına katılabilir, milyonlarca &uuml;r&uuml;n ve binlerce mağazanın olduğu n11.com&rsquo;da, avantaj dolu alışverişin keyfini &ccedil;ıkartabilirsiniz.</p>\r\n\r\n<p>Uğurlu alışverişler.</p>\r\n\r\n<p><strong>VİZYONUMUZ</strong></p>\r\n\r\n<p>T&uuml;rkiye&rsquo;de ve b&ouml;lgede e-ticaret sekt&ouml;r&uuml;n&uuml;n lideri olmak.</p>\r\n\r\n<p><strong>MİSYONUMUZ</strong></p>\r\n\r\n<p>E-ticaret sekt&ouml;r&uuml;nde hem m&uuml;şterilere hem mağazalara yenilik&ccedil;i hizmetler sunarak T&uuml;rkiye e-ticaret sekt&ouml;r&uuml;n&uuml;n yeniden şekillendirilmesine &ouml;nc&uuml;l&uuml;k etmek.</p>\r\n\r\n<p><strong>STRATEJİMİZ</strong></p>\r\n\r\n<p>Stratejik ortaklıklarla g&uuml;&ccedil;l&uuml; entegrasyona dayanan eko-sistemimizde, m&uuml;şterilere <em>G&uuml;ven</em> ve <em>Kolaylık</em>; mağazalara ise <em>Destek</em> ve <em>&Ouml;zen</em> &uuml;zerine dayalı değer &ouml;nerileri sunmaktır.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img src=\"https://n11scdn.akamaized.net/a1/org/16/06/14/59/01/45/73/58/05/84/45/46/1763895754510716556.png\" /></td>\r\n			<td><img alt=\"SK Group\" src=\"https://n11scdn.akamaized.net/a1/org/welcome/logo-sk.png\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top\">1951 yılında kurulan Doğuş Grubu, finans, otomotiv, inşaat, medya, turizm ve hizmetler, gayrimenkul, enerji ve yeme-i&ccedil;me olmak &uuml;zere sekiz sekt&ouml;rde faaliyet g&ouml;stermektedir. Yaklaşık 180 şirketi ve 35 bine yakın &ccedil;alışanı ile hizmet verdiği m&uuml;şterilerine; &uuml;st&uuml;n teknoloji, y&uuml;ksek marka kalitesi ve dinamik bir insan kaynağı sunmaktadır.<br />\r\n			<br />\r\n			Doğuş Grubu, hizmetlerini her zaman i&ccedil;in m&uuml;şteri memnuniyeti ve g&uuml;ven ilkelerini temel alarak sunmaktadır. Bunun sonucunda da d&uuml;nya &ouml;l&ccedil;eğinde saygın markalar yaratarak, T&uuml;rkiye&#39;yi b&uuml;t&uuml;n d&uuml;nyada temsil etmektedir. Grup, &ouml;zellikle hizmet sekt&ouml;r&uuml;nde b&ouml;lgesel bir lider olma vizyonunu ortaya koymaktadır.</td>\r\n			<td style=\"vertical-align:top\">1953 yılında kurulan SK Group, hem satış hem aktifler bazında Kore&rsquo;nin en b&uuml;y&uuml;k 3&rsquo;&uuml;nc&uuml; holdingi olarak konumlanmaktadır. 70 bin &ccedil;alışanı ile 2011 yılı itibariyle toplam satışları 142 milyar dolar ve toplam aktifleri 126 milyar dolar seviyesine ulaşmıştır.<br />\r\n			<br />\r\n			SK Group&rsquo;un Kore&#39;de faaliyet g&ouml;steren 94 iştiraki ve 33 &uuml;lkeyi kapsayan bir ortaklık ağı bulunmaktadır. Enerji ve kimyasal ile bilgi ve teknoloji gibi iki ana dayanak noktasına ek olarak, SK Group ayrıca pazarlama ve lojistik end&uuml;strilerinde de faaliyet g&ouml;stermektedir.<br />\r\n			<br />\r\n			SK Planet&rsquo;in e-ticaret platformu 11street, aylık ortalama 18 milyon ziyaret&ccedil;isi ve 2012&rsquo;deki 4.3 milyar dolarlık ticaret hacmi ile Kore&rsquo;nin en b&uuml;y&uuml;k a&ccedil;ık pazar platformları arasında yerini almaktadır.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<h1>İletişim</h1>\r\n\r\n<p><strong>Doğuş Planet Elektronik Ticaret ve Bilişim Hizmetleri A.Ş.</strong><br />\r\nHuzur Mah. Maslak Ayazağa Cad. 4B<br />\r\nSarıyer / İSTANBUL 34396</p>\r\n\r\n<ul>\r\n	<li>Doğuş Planet Mersis No: 0309034533200013</li>\r\n	<li>Doğuş Planet KEP (Kayıtlı e-posta adresi) : dogusplanet@hs01.kep.tr <em> </em>\r\n	<p><em>Kayıtlı elektronik posta (KEP); g&ouml;nderici ve alıcı kimliklerinin belli olduğu, g&ouml;nderi zamanının ve i&ccedil;eriğin değiştirilemediği, uyuşmazlık durumunda hukuki ge&ccedil;erliliği olan g&uuml;venli elektronik posta hizmetidir. KEP adresine e-posta g&ouml;nderebilmek i&ccedil;in KEP adresine sahip olunması, elektronik imza kullanılması ve g&ouml;nderimin yetkili KEP hizmet sağlayıcısı aracılığıyla yapılması gerekmektedir. Yasal bildirimler i&ccedil;indir. Her t&uuml;rl&uuml; işleminiz i&ccedil;in hesabım sayfamızda giriş yaptıktan sonra 7/24 Canlı Destek hizmetimizi kullanabilirsiniz.</em></p>\r\n	<em> </em></li>\r\n	<li>Maslak Vergi Dairesi - Vergi No: 3090345332</li>\r\n	<li>Ticaret Sicil No: 824 112</li>\r\n	<li>Telefon : 0850 333 0011</li>\r\n</ul>', '<p><img alt=\"\" src=\"https://etgigrup.com/wp-content/uploads/2020/04/zorlu-logo.png\" style=\"height:140px; width:200px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://etgigrup.com/wp-content/uploads/2020/04/toros-tarim-logo.png\" style=\"height:140px; width:200px\" /></p>', 'true', '2021-01-22 08:45:50', '2021-12-01 12:00:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopcarts`
--

CREATE TABLE `shopcarts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `address`, `phone`) VALUES
(1, 'Muhammet Can GÜMÜŞSU', 'mcangumussu@gmail.com', NULL, '$2y$10$8v90G4hZ.kjrX6Zg3DtaA.iVDL9G5UuLVO5.j7m7UOJZ365x52GQe', NULL, NULL, NULL, NULL, 'profile-photos/O32mQ72v002VoBg5Jd4EE6od1bjVYDol61u5srXZ.jpg', '2021-12-01 04:28:43', '2021-12-01 14:28:11', 'Samsun', '055555555'),
(2, 'Ahmet Gümüşsu', 'ahmet@gmail.com', NULL, 'Ahmet.123', NULL, NULL, NULL, NULL, NULL, '2021-12-02 16:54:01', '2021-12-02 16:54:03', 'Samsun', '055551111'),
(3, 'ali kaya', 'ali@gmail.com', NULL, '$2y$10$LNcUZWkM5bIpgMIU44LQh..055b1eeOhRkcKk2eEL1wLMgP/2iMzG', NULL, NULL, NULL, NULL, NULL, '2021-12-02 14:26:44', '2021-12-02 14:26:44', NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shopcarts`
--
ALTER TABLE `shopcarts`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `shopcarts`
--
ALTER TABLE `shopcarts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
