CREATE TABLE `ticket_options` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`option` VARCHAR(240) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`type` VARCHAR(240) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`added_by` INT(11) NOT NULL DEFAULT '0',
	`updated_by` INT(11) NOT NULL DEFAULT '0',
	`added_on` TIMESTAMP NOT NULL DEFAULT current_timestamp(),
	`updated_on` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `FK_ticket_options_users` (`added_by`) USING BTREE,
	INDEX `FK_ticket_options_users_2` (`updated_by`) USING BTREE,
	CONSTRAINT `FK_ticket_options_users` FOREIGN KEY (`added_by`) REFERENCES `tabicrm`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT `FK_ticket_options_users_2` FOREIGN KEY (`updated_by`) REFERENCES `tabicrm`.`users` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


INSERT INTO `ticket_options` VALUES (1, 'OPEN', 'STATUS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:54:41');
INSERT INTO `ticket_options` VALUES (2, 'IN PROGRESS', 'STATUS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:55:20');
INSERT INTO `ticket_options` VALUES (3, 'WAITING ON CUSTOMER', 'STATUS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:55:24');
INSERT INTO `ticket_options` VALUES (4, 'CLOSED', 'STATUS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:55:27');
INSERT INTO `ticket_options` VALUES (5, 'LOW', 'PRIORITY', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:55:46');
INSERT INTO `ticket_options` VALUES (6, 'NORMAL', 'PRIORITY', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:55:53');
INSERT INTO `ticket_options` VALUES (7, 'HIGH', 'PRIORITY', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:56:02');
INSERT INTO `ticket_options` VALUES (8, 'URGENT', 'PRIORITY', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:56:09');
INSERT INTO `ticket_options` VALUES (9, 'NETWORK', 'ASSIGNED_TO', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:56:27');
INSERT INTO `ticket_options` VALUES (10, 'SOFTWARE', 'ASSIGNED_TO', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:56:38');
INSERT INTO `ticket_options` VALUES (11, 'SERVER', 'ASSIGNED_TO', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:56:55');
INSERT INTO `ticket_options` VALUES (12, 'HARDWARE', 'ASSIGNED_TO', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:57:06');
INSERT INTO `ticket_options` VALUES (13, 'SALES', 'ASSIGNED_TO', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:57:08');
INSERT INTO `ticket_options` VALUES (14, 'DEVELOPMENT', 'ASSIGNED_TO', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:57:16');
INSERT INTO `ticket_options` VALUES (15, 'SOLVED ON PHONE', 'RESULTS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:57:39');
INSERT INTO `ticket_options` VALUES (16, 'SERVER SERVICE', 'RESULTS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:57:48');
INSERT INTO `ticket_options` VALUES (17, 'ROUTER SERVICE', 'RESULTS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:57:52');
INSERT INTO `ticket_options` VALUES (18, 'CONTRACT SERVICE', 'RESULTS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:57:57');
INSERT INTO `ticket_options` VALUES (19, 'NON-CONTRACT SERVICE', 'RESULTS', 11, 11, '2022-03-14 15:54:41', '2022-03-14 15:58:08');
