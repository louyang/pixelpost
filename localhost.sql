-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-04-19 21:09:32
-- 服务器版本： 8.0.12
-- PHP 版本： 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `jjyy`
--
CREATE DATABASE IF NOT EXISTS `jjyy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jjyy`;

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_addons`
--

CREATE TABLE `pixelpost_addons` (
  `id` int(11) NOT NULL,
  `addon_name` varchar(66) NOT NULL DEFAULT '',
  `status` varchar(3) NOT NULL DEFAULT 'on',
  `type` varchar(15) NOT NULL DEFAULT 'normal'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `pixelpost_addons`
--

INSERT INTO `pixelpost_addons` (`id`, `addon_name`, `status`, `type`) VALUES
(1, 'admin_12CropImage', 'off', 'admin'),
(2, 'admin_ping', 'off', 'admin'),
(3, 'admin_update_exif', 'off', 'admin'),
(4, 'advanced_stat', 'on', 'normal'),
(5, 'calendar', 'on', 'normal'),
(6, 'copy_folder', 'off', 'normal'),
(7, 'current_datetime', 'on', 'normal'),
(8, 'paged_archive', 'on', 'normal'),
(9, '_akismet/admin_akismet_comment', 'off', 'admin'),
(10, '_akismet/front_akismet_comment', 'off', 'front'),
(11, '_defensio/admin_defensio', 'off', 'admin'),
(12, '_defensio/front_defensio', 'off', 'front');

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_banlist`
--

CREATE TABLE `pixelpost_banlist` (
  `id` int(11) NOT NULL,
  `moderation_list` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `blacklist` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ref_ban_list` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acceptable_num_links` int(3) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `pixelpost_banlist`
--

INSERT INTO `pixelpost_banlist` (`id`, `moderation_list`, `blacklist`, `ref_ban_list`, `acceptable_num_links`) VALUES
(1, '', '', 'tramadol\n-online\nadipex\nadvicer\nambien\nbllogspot\ncarisoprodol\ncasino\ncasinos\nbaccarrat\ncialis\ncwas\ncyclen\ncyclobenzaprine\nday-trading\ndiscreetordering\ndutyfree\nduty-free\nfioricet\nfreenet-shopping\nincest\nlevitra\nmacinstruct\nmeridia\nonline-gambling\npaxil\nphentermine\nplatinum-celebs\npoker-chip\npoze\nprescription\nsoma\nslot-machine\ntaboo\nteen\ntrim-spa\nultram\nviagra\nxanax\nbooker\nzolus\nchatroom\npoker\ntexas\nholdem\ntt', 2);

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_catassoc`
--

CREATE TABLE `pixelpost_catassoc` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `image_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `pixelpost_catassoc`
--

INSERT INTO `pixelpost_catassoc` (`id`, `cat_id`, `image_id`) VALUES
(35, 2, 1),
(34, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_categories`
--

CREATE TABLE `pixelpost_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alt_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DEFAULT'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `pixelpost_categories`
--

INSERT INTO `pixelpost_categories` (`id`, `name`, `alt_name`) VALUES
(1, 'test', '测试'),
(2, 'test2', '测试2'),
(3, 'test1', '测试1');

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_comments`
--

CREATE TABLE `pixelpost_comments` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `url` varchar(70) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `publish` varchar(3) NOT NULL DEFAULT 'yes',
  `spaminess` float DEFAULT NULL,
  `signature` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_config`
--

CREATE TABLE `pixelpost_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(90) NOT NULL DEFAULT '',
  `email` varchar(90) NOT NULL DEFAULT '',
  `commentemail` varchar(3) NOT NULL DEFAULT '',
  `template` varchar(150) NOT NULL DEFAULT '',
  `imagepath` varchar(150) NOT NULL DEFAULT '',
  `thumbnailpath` varchar(150) NOT NULL DEFAULT '../thumbnails/',
  `siteurl` varchar(100) NOT NULL DEFAULT '',
  `sitetitle` varchar(100) NOT NULL DEFAULT '',
  `subtitle` varchar(100) NOT NULL DEFAULT 'Authentic photoblog flavour',
  `langfile` varchar(100) NOT NULL DEFAULT '',
  `calendar` varchar(30) NOT NULL DEFAULT '',
  `crop` varchar(3) NOT NULL DEFAULT '',
  `thumbwidth` int(11) NOT NULL,
  `thumbheight` int(11) NOT NULL,
  `thumbnumber` int(11) NOT NULL,
  `compression` int(11) NOT NULL,
  `dateformat` varchar(30) NOT NULL DEFAULT '',
  `timezone` float NOT NULL DEFAULT '0',
  `catgluestart` varchar(5) NOT NULL DEFAULT '[',
  `catglueend` varchar(5) NOT NULL DEFAULT ']',
  `htmlemailnote` char(3) DEFAULT 'yes',
  `timestamp` varchar(4) NOT NULL DEFAULT 'yes',
  `visitorbooking` varchar(4) NOT NULL DEFAULT 'yes',
  `altlangfile` varchar(100) NOT NULL DEFAULT 'Off',
  `global_comments` enum('A','M','F') NOT NULL DEFAULT 'A',
  `markdown` enum('F','T') NOT NULL DEFAULT 'F',
  `exif` enum('F','T') NOT NULL DEFAULT 'T',
  `token` enum('F','T') NOT NULL DEFAULT 'F',
  `token_time` varchar(2) NOT NULL DEFAULT '5',
  `comment_timebetween` varchar(3) NOT NULL DEFAULT '30',
  `feeditems` varchar(3) NOT NULL DEFAULT '10',
  `max_uri_comments` varchar(3) NOT NULL DEFAULT '5',
  `rsstype` enum('F','FO','T','O','N') NOT NULL DEFAULT 'T',
  `feed_discovery` enum('RA','R','A','E','N') NOT NULL DEFAULT 'RA',
  `feed_title` varchar(100) NOT NULL DEFAULT 'Pixelpost',
  `feed_description` varchar(100) NOT NULL DEFAULT 'Authentic photoblog flavour',
  `feed_copyright` varchar(100) NOT NULL DEFAULT 'Copyright 2007 yoursite.com, All Rights Reserved',
  `allow_comment_feed` enum('Y','N') NOT NULL DEFAULT 'Y',
  `feed_external` varchar(150) NOT NULL DEFAULT '',
  `feed_external_type` enum('ER','EA') NOT NULL DEFAULT 'ER',
  `admin_langfile` varchar(100) NOT NULL DEFAULT 'english',
  `display_order` enum('default','reversed') NOT NULL DEFAULT 'default',
  `display_sort_by` varchar(150) NOT NULL DEFAULT 'datetime',
  `thumb_sharpening` varchar(1) DEFAULT '0',
  `akismet_key` varchar(50) NOT NULL DEFAULT '',
  `akismet_keep` int(11) NOT NULL DEFAULT '7',
  `maxpthumb` varchar(5) NOT NULL DEFAULT '100',
  `mod_rewrite` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `pixelpost_config`
--

INSERT INTO `pixelpost_config` (`id`, `admin`, `password`, `email`, `commentemail`, `template`, `imagepath`, `thumbnailpath`, `siteurl`, `sitetitle`, `subtitle`, `langfile`, `calendar`, `crop`, `thumbwidth`, `thumbheight`, `thumbnumber`, `compression`, `dateformat`, `timezone`, `catgluestart`, `catglueend`, `htmlemailnote`, `timestamp`, `visitorbooking`, `altlangfile`, `global_comments`, `markdown`, `exif`, `token`, `token_time`, `comment_timebetween`, `feeditems`, `max_uri_comments`, `rsstype`, `feed_discovery`, `feed_title`, `feed_description`, `feed_copyright`, `allow_comment_feed`, `feed_external`, `feed_external_type`, `admin_langfile`, `display_order`, `display_sort_by`, `thumb_sharpening`, `akismet_key`, `akismet_keep`, `maxpthumb`, `mod_rewrite`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'xx@xx.com', 'no', 'visions', '../images/', '../thumbnails/', 'http://xx/', 'PHOTOBLOG', 'records of life', 'simplified_chinese', 'Horizontal', 'yes', 300, 200, 9, 80, 'Y-m-d H:i:s', 8, '[', ']', 'yes', 'yes', 'yes', 'Off', 'A', 'F', 'T', 'F', '5', '30', '10', '5', 'T', 'RA', 'JJYY', 'Life', 'JJYY', 'Y', '', 'ER', 'simplified_chinese', 'default', 'datetime', '2', '', 7, '30', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_defensio`
--

CREATE TABLE `pixelpost_defensio` (
  `server` varchar(100) DEFAULT 'api.defensio.com',
  `path` varchar(100) DEFAULT 'blog',
  `api-version` varchar(100) DEFAULT '1.1',
  `format` varchar(100) DEFAULT 'yaml',
  `blog` varchar(100) DEFAULT 'http://leoyy.serveblog.net:66/',
  `post-timeout` int(11) DEFAULT '10',
  `threshold` float DEFAULT '0.8',
  `remove_older_than` int(11) DEFAULT '0',
  `remove_older_than_days` int(11) DEFAULT '15',
  `key` varchar(100) DEFAULT NULL,
  `defensio_stats` text,
  `defensio_stats_updated_at` varchar(20) DEFAULT '1195732629',
  `defensio_widget_image` varchar(20) DEFAULT 'dark',
  `defensio_widget_align` varchar(20) DEFAULT 'left'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `pixelpost_defensio`
--

INSERT INTO `pixelpost_defensio` (`server`, `path`, `api-version`, `format`, `blog`, `post-timeout`, `threshold`, `remove_older_than`, `remove_older_than_days`, `key`, `defensio_stats`, `defensio_stats_updated_at`, `defensio_widget_image`, `defensio_widget_align`) VALUES
('api.defensio.com', 'blog', '1.1', 'yaml', 'http://leoyy.serveblog.net:66/', 10, 0.8, 0, 15, NULL, NULL, '1650366793', 'dark', 'left');

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_ping`
--

CREATE TABLE `pixelpost_ping` (
  `id` int(11) NOT NULL,
  `pinglist` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_pixelpost`
--

CREATE TABLE `pixelpost_pixelpost` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `headline` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alt_headline` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alt_body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `comments` enum('A','M','F') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A',
  `exif_info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `slide_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `pixelpost_pixelpost`
--

INSERT INTO `pixelpost_pixelpost` (`id`, `datetime`, `headline`, `body`, `image`, `category`, `alt_headline`, `alt_body`, `comments`, `exif_info`, `slide_count`) VALUES
(1, '2021-05-17 00:00:00', 'Sample', 'Sample', 'sample.jpg', '2', '', '', 'A', 'a:32:{s:13:\"VerboseOutput\";s:1:\"0\";s:6:\"Errors\";s:1:\"0\";s:9:\"ValidJpeg\";s:1:\"1\";s:13:\"ValidIPTCData\";s:1:\"0\";s:13:\"ValidJFIFData\";s:1:\"0\";s:13:\"ValidEXIFData\";s:1:\"1\";s:13:\"ValidAPP2Data\";s:1:\"0\";s:12:\"ValidCOMData\";s:1:\"0\";s:8:\"APP1Size\";s:5:\"15059\";s:6:\"Endien\";s:5:\"Intel\";s:11:\"IFD0NumTags\";s:1:\"8\";s:8:\"MakeIFD0\";s:7:\"Plustek\";s:9:\"ModelIFD0\";s:15:\"OpticFilm 7600i\";s:15:\"xResolutionIFD0\";s:27:\"240 dots per ResolutionUnit\";s:15:\"yResolutionIFD0\";s:27:\"240 dots per ResolutionUnit\";s:18:\"ResolutionUnitIFD0\";s:4:\"Inch\";s:12:\"SoftwareIFD0\";s:48:\"Adobe Photoshop Lightroom Classic 10.1 (Windows)\";s:12:\"DateTimeIFD0\";s:19:\"2022:04:15 21:31:45\";s:14:\"ExifOffsetIFD0\";s:3:\"220\";s:10:\"IFD1Offset\";s:3:\"270\";s:13:\"SubIFDNumTags\";s:1:\"3\";s:17:\"ExifVersionSubIFD\";s:12:\"version 2.31\";s:13:\"unknownSubIFD\";s:7:\"unknown\";s:16:\"ColorSpaceSubIFD\";s:4:\"sRGB\";s:11:\"IFD1NumTags\";s:1:\"6\";s:15:\"CompressionIFD1\";s:16:\"Jpeg Compression\";s:15:\"xResolutionIFD1\";s:26:\"72 dots per ResolutionUnit\";s:15:\"yResolutionIFD1\";s:26:\"72 dots per ResolutionUnit\";s:18:\"ResolutionUnitIFD1\";s:4:\"Inch\";s:16:\"JpegIFOffsetIFD1\";s:3:\"364\";s:19:\"JpegIFByteCountIFD1\";s:5:\"14687\";s:17:\"DataDumpMakerNote\";s:0:\"\";}', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_stats`
--

CREATE TABLE `pixelpost_stats` (
  `id` int(11) NOT NULL,
  `visitors` int(11) NOT NULL DEFAULT '0',
  `month` datetime NOT NULL,
  `most_referer_num_1` int(11) NOT NULL DEFAULT '0',
  `most_referer_url_1` varchar(90) NOT NULL,
  `most_referer_ip_1` varchar(90) NOT NULL,
  `most_referer_num_2` int(11) NOT NULL DEFAULT '0',
  `most_referer_url_2` varchar(90) NOT NULL,
  `most_referer_ip_2` varchar(90) NOT NULL,
  `most_referer_num_3` int(11) NOT NULL DEFAULT '0',
  `most_referer_url_3` varchar(90) NOT NULL,
  `most_referer_ip_3` varchar(90) NOT NULL,
  `most_referer_num_4` int(11) NOT NULL DEFAULT '0',
  `most_referer_url_4` varchar(90) NOT NULL,
  `most_referer_ip_4` varchar(90) NOT NULL,
  `most_referer_num_5` int(11) NOT NULL DEFAULT '0',
  `most_referer_url_5` varchar(90) NOT NULL,
  `most_referer_ip_5` varchar(90) NOT NULL,
  `most_visited_ip_num_1` int(11) NOT NULL DEFAULT '0',
  `most_visited_ip_1` varchar(90) NOT NULL,
  `most_visited_ip_num_2` int(11) NOT NULL DEFAULT '0',
  `most_visited_ip_2` varchar(90) NOT NULL,
  `most_visited_ip_num_3` int(11) NOT NULL DEFAULT '0',
  `most_visited_ip_3` varchar(90) NOT NULL,
  `most_visited_ip_num_4` int(11) NOT NULL DEFAULT '0',
  `most_visited_ip_4` varchar(90) NOT NULL,
  `most_visited_ip_num_5` int(11) NOT NULL DEFAULT '0',
  `most_visited_ip_5` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_tags`
--

CREATE TABLE `pixelpost_tags` (
  `img_id` int(11) NOT NULL,
  `tag` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alt_tag` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `pixelpost_tags`
--

INSERT INTO `pixelpost_tags` (`img_id`, `tag`, `alt_tag`, `tag_id`) VALUES
(1, '测试', NULL, 37),
(1, 'test', NULL, 36),
(1, '333', NULL, 38);

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_version`
--

CREATE TABLE `pixelpost_version` (
  `id` int(10) UNSIGNED NOT NULL,
  `upgrade_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `version` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `pixelpost_version`
--

INSERT INTO `pixelpost_version` (`id`, `upgrade_date`, `version`) VALUES
(1, '2013-02-26 16:36:55', 1.4),
(2, '2013-02-26 16:36:56', 1.41),
(3, '2013-02-26 16:36:56', 1.49995),
(4, '2013-02-26 16:36:57', 1.59),
(5, '2013-02-26 16:36:58', 1.6),
(6, '2013-02-26 16:36:59', 1.7),
(7, '2013-02-26 16:36:59', 1.71),
(8, '2013-02-26 16:36:59', 1.72),
(9, '2013-02-26 16:36:59', 1.73),
(10, '2022-04-17 14:30:52', 2);

-- --------------------------------------------------------

--
-- 表的结构 `pixelpost_visitors`
--

CREATE TABLE `pixelpost_visitors` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `host` varchar(100) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `ua` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `ruri` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `pixelpost_visitors`
--

INSERT INTO `pixelpost_visitors` (`id`, `datetime`, `host`, `referer`, `ua`, `ip`, `ruri`) VALUES
(1, '2022-04-19 20:43:41', 'localhost', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', '::1', '/');

--
-- 转储表的索引
--

--
-- 表的索引 `pixelpost_addons`
--
ALTER TABLE `pixelpost_addons`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pixelpost_banlist`
--
ALTER TABLE `pixelpost_banlist`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pixelpost_catassoc`
--
ALTER TABLE `pixelpost_catassoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `image_id` (`image_id`);

--
-- 表的索引 `pixelpost_categories`
--
ALTER TABLE `pixelpost_categories`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pixelpost_comments`
--
ALTER TABLE `pixelpost_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- 表的索引 `pixelpost_config`
--
ALTER TABLE `pixelpost_config`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pixelpost_ping`
--
ALTER TABLE `pixelpost_ping`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pixelpost_pixelpost`
--
ALTER TABLE `pixelpost_pixelpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datetime` (`datetime`);

--
-- 表的索引 `pixelpost_stats`
--
ALTER TABLE `pixelpost_stats`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `pixelpost_tags`
--
ALTER TABLE `pixelpost_tags`
  ADD KEY `tag_id` (`tag_id`);

--
-- 表的索引 `pixelpost_version`
--
ALTER TABLE `pixelpost_version`
  ADD UNIQUE KEY `id` (`id`);

--
-- 表的索引 `pixelpost_visitors`
--
ALTER TABLE `pixelpost_visitors`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `pixelpost_catassoc`
--
ALTER TABLE `pixelpost_catassoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `pixelpost_categories`
--
ALTER TABLE `pixelpost_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `pixelpost_comments`
--
ALTER TABLE `pixelpost_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `pixelpost_ping`
--
ALTER TABLE `pixelpost_ping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pixelpost_pixelpost`
--
ALTER TABLE `pixelpost_pixelpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `pixelpost_stats`
--
ALTER TABLE `pixelpost_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `pixelpost_tags`
--
ALTER TABLE `pixelpost_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- 使用表AUTO_INCREMENT `pixelpost_visitors`
--
ALTER TABLE `pixelpost_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
