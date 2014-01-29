CREATE USER 'blobby'@'localhost' IDENTIFIED BY '"$+{q}sR7SGpQz<';
GRANT USAGE ON *.* TO 'blobby'@'localhost' IDENTIFIED BY '"$+{q}sR7SGpQz<';
GRANT ALL PRIVILEGES ON blobvault.* TO 'blobby'@'localhost';

CREATE DATABASE blobvault;
USE blobvault;

--
-- Table structure for table `blob`
--

CREATE TABLE IF NOT EXISTS `blob` (
  `id` char(64) NOT NULL,
  `address` varchar(50) NOT NULL,
  `auth_secret` char(64) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `data` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blob_log`
--

CREATE TABLE IF NOT EXISTS `blob_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blob_id` char(64) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `data` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
