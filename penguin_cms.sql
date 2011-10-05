SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `penguin_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL,
  `option_value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_value`) VALUES
(0, 'site_name', 'Penguin CMS'),
(0, 'site_description', 'Just another Penguin CMS site...'),
(0, 'logo_url', ''),
(0, 'active_template', '1'),
(0, 'google_analytics', ''),
(0, 'template_dir', '/content/themes/default'),
(0, 'sidebar_active', 'TRUE'),
(0, 'sidebar_content', 'Sidebar');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(245) NOT NULL,
  `content` longtext NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `content`, `date_modified`) VALUES
(1, 'index', 'Index page', '2011-09-03 18:18:06'),
(2, 'about', 'About page', '2011-09-03 18:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL,
  `userpass` varchar(64) NOT NULL,
  `nicename` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `regestration_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `display_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_login`, `userpass`, `nicename`, `email`, `url`, `regestration_date`, `status`, `display_name`) VALUES
(1, 'admin', '', '', '', '', '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE IF NOT EXISTS `user_meta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
