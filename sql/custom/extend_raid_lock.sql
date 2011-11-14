ALTER TABLE `character_instance` ADD COLUMN `extend` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE `instance` ADD COLUMN `lastresettime` int(10) unsigned NOT NULL DEFAULT '0';
