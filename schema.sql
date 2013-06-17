SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `sync` (
  `sync_id` int(11) NOT NULL AUTO_INCREMENT,
  `sync_userid` int(11) NOT NULL,
  `sync_comment` text COLLATE utf8_unicode_ci NOT NULL,
  `sync_created` datetime NOT NULL,
  `sync_rev` int(11) NOT NULL,
  `sync_diff` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sync_id`),
  KEY `sync_userid` (`sync_userid`),
  KEY `sync_rev` (`sync_rev`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1362 ;

CREATE TABLE IF NOT EXISTS `synclocks` (
  `lock_id` int(11) NOT NULL AUTO_INCREMENT,
  `lock_userid` int(11) NOT NULL,
  `lock_created` datetime NOT NULL,
  `lock_active` tinyint(4) NOT NULL,
  `lock_reason` varchar(511) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`lock_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=201 ;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` char(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;
