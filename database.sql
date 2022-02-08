CREATE TABLE `mdt_bolos` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`title` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`plate` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`owner` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`individual` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`detail` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`tags` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`gallery` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`officers` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`time` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`author` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`type` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0
;

CREATE TABLE `mdt_bulletins` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`author` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`title` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`info` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`time` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0
;

CREATE TABLE `mdt_dashmessage` (
	`message` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`time` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`author` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`profilepic` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`job` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `mdt_incidents` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`title` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`information` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`tags` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`officers` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`civilians` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`evidence` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`associated` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`time` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`author` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`type` LONGTEXT NULL DEFAULT 'police' COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0
;

CREATE TABLE `mdt_logs` (
	`log` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`time` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci'
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `mdt_missing` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`identifier` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`name` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`date` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`age` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`lastseen` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`image` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`notes` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0
;

CREATE TABLE `mdt_report` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`title` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`reporttype` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`author` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`detail` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`tags` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`gallery` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`officers` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`civilians` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`time` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`type` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0
;

CREATE TABLE `mdt_vehicleinfo` (
	`plate` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`code5` LONGTEXT NOT NULL DEFAULT 0 COLLATE 'utf8mb4_general_ci',
	`stolen` LONGTEXT NOT NULL DEFAULT 0 COLLATE 'utf8mb4_general_ci',
	`info` LONGTEXT NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`image` LONGTEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`plate`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `mdt_weapons` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`identifier` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`serialnumber` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`image` LONGTEXT NULL DEFAULT 'https://cdn.discordapp.com/attachments/770324167894761522/912602343164502096/not-found.jpg' COLLATE 'utf8mb4_general_ci',
	`owner` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`brand` LONGTEXT NULL DEFAULT 'Unknown' COLLATE 'utf8mb4_general_ci',
	`type` LONGTEXT NULL DEFAULT 'Unknown' COLLATE 'utf8mb4_general_ci',
	`information` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0
;

ALTER TABLE `players`
	ADD COLUMN `pp` LONGTEXT NULL DEFAULT '',
	ADD COLUMN `policemdtinfo` LONGTEXT NULL DEFAULT '',
	ADD COLUMN `tags` LONGTEXT NULL DEFAULT '',
	ADD COLUMN `gallery` LONGTEXT NULL DEFAULT ''
;
