/* Database export results for db ronaldpa_menu */

/* Preserve session variables */
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS=0;

/* Export data */

/* Table structure for t01_sessions */
CREATE TABLE `t01_sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext DEFAULT NULL,
  `last_activity` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t01_sessions_user_id_idx` (`user_id`),
  KEY `t01_sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t01_sessions */

/* Table structure for t02_document_type */
CREATE TABLE `t02_document_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_type_label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t02_document_type */
INSERT INTO `t02_document_type` VALUES (1,"Documento Nacional Identidad-PE");
INSERT INTO `t02_document_type` VALUES (2,"Pasaporte");
INSERT INTO `t02_document_type` VALUES (3,"Carné de extranjería-CE");
INSERT INTO `t02_document_type` VALUES (4,"Carné de Permiso Temporal de Permanencia-CPP");
INSERT INTO `t02_document_type` VALUES (5,"Cédula Nacional Identidad-EXT");

/* Table structure for t03_roles */
CREATE TABLE `t03_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) NOT NULL,
  `roledisplay` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `description` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 9,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url_guard` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t03_roles */
INSERT INTO `t03_roles` VALUES (1,"Root","SuperAdmin",1,NULL,9,NULL,NULL,"sys");
INSERT INTO `t03_roles` VALUES (2,"Administrator","Administrador",1,NULL,9,NULL,NULL,"admin");
INSERT INTO `t03_roles` VALUES (3,"Manager","Gerente",1,NULL,9,NULL,NULL,"admin");
INSERT INTO `t03_roles` VALUES (4,"Director","Director",1,NULL,9,NULL,NULL,"admin");
INSERT INTO `t03_roles` VALUES (5,"Assistant","Auxiliar",1,NULL,9,NULL,NULL,"user");
INSERT INTO `t03_roles` VALUES (6,"Teacher","Docente",1,NULL,9,NULL,NULL,"user");
INSERT INTO `t03_roles` VALUES (7,"Student","Estudiante",1,NULL,9,NULL,NULL,"user");

/* Table structure for t11_careers */
CREATE TABLE `t11_careers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `career_title` varchar(255) NOT NULL,
  `career_code` varchar(255) DEFAULT NULL,
  `career_alias` varchar(255) DEFAULT NULL,
  `career_display` varchar(255) DEFAULT NULL,
  `career_related` varchar(255) DEFAULT '',
  `career_notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `career_title_unique` (`career_title`),
  UNIQUE KEY `career_code_unique` (`career_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t11_careers */

/* Table structure for t12_catalogs */
CREATE TABLE `t12_catalogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catalog_name` varchar(255) NOT NULL,
  `catalog_alias` varchar(255) DEFAULT NULL,
  `catalog_display` varchar(255) DEFAULT NULL,
  `catalog_type` varchar(255) DEFAULT NULL,
  `catalog_ico` varchar(255) DEFAULT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`catalog_name`),
  UNIQUE KEY `u_display` (`catalog_display`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* data for Table t12_catalogs */

/* Table structure for t13_clients_ie */
CREATE TABLE `t13_clients_ie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_rzsocial_name` varchar(255) NOT NULL,
  `client_display` varchar(255) NOT NULL,
  `client_codmod` varchar(255) DEFAULT NULL,
  `client_anexo` varchar(255) DEFAULT NULL,
  `client_ruc` varchar(255) DEFAULT NULL,
  `client_alias` varchar(45) DEFAULT NULL,
  `client_country` varchar(255) DEFAULT NULL,
  `client_state_region` varchar(45) DEFAULT NULL,
  `client_province` varchar(45) DEFAULT NULL,
  `client_district` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `client_gestion` enum('Privada','Pública','Convenio Iglesia','Convenio Militar') DEFAULT NULL,
  `client_phone` varchar(45) DEFAULT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `client_contact` varchar(45) DEFAULT NULL,
  `client_mobile_contact` varchar(45) DEFAULT NULL,
  `client_url_base` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_clients_name_unique` (`client_rzsocial_name`),
  UNIQUE KEY `t_clients_code_unique` (`client_codmod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t13_clients_ie */

/* Table structure for t14_ebooks */
CREATE TABLE `t14_ebooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ebook_code` varchar(255) NOT NULL,
  `ebook_isbn` varchar(255) DEFAULT NULL,
  `ebook_title` varchar(255) DEFAULT NULL,
  `ebook_alias` varchar(255) DEFAULT NULL,
  `ebook_display` varchar(50) NOT NULL,
  `ebook_type` varchar(255) DEFAULT NULL,
  `ebook_author` varchar(255) DEFAULT NULL,
  `ebook_editorial` varchar(255) DEFAULT NULL,
  `ebook_year` char(4) DEFAULT NULL,
  `ebook_pages` mediumint(8) DEFAULT NULL,
  `ebook_front_page` varchar(255) DEFAULT NULL,
  `ebook_details` text DEFAULT NULL,
  `ebook_url` varchar(255) DEFAULT NULL,
  `ebook_file` varchar(255) DEFAULT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `t12_catalogs_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_code` (`ebook_code`),
  UNIQUE KEY `u_display` (`ebook_display`),
  KEY `fk_ebooks_catalogs_idx` (`t12_catalogs_id`),
  CONSTRAINT `fk_ebooks_catalogs` FOREIGN KEY (`t12_catalogs_id`) REFERENCES `t12_catalogs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* data for Table t14_ebooks */

/* Table structure for t15_people */
CREATE TABLE `t15_people` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `first_surname` varchar(255) DEFAULT NULL,
  `second_surname` varchar(255) DEFAULT NULL,
  `document_type` tinyint(3) unsigned NOT NULL DEFAULT 9,
  `document_number` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `is_enabled` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `email_alternative` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_reference` varchar(255) DEFAULT NULL,
  `country` char(4) DEFAULT NULL,
  `state_region` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `nationality` char(4) DEFAULT NULL,
  `t13_clients_ie_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_mobile_unique` (`mobile`),
  KEY `fk_people_clients_ie_idx` (`t13_clients_ie_id`),
  CONSTRAINT `fk_people_clients_ie1` FOREIGN KEY (`t13_clients_ie_id`) REFERENCES `t13_clients_ie` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t15_people */

/* Table structure for t16_users */
CREATE TABLE `t16_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT 'media/avatars/blank.png',
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `logged_in_at` timestamp NULL DEFAULT NULL,
  `logged_out_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `salt_decode` varchar(45) DEFAULT NULL,
  `display_name` varchar(45) DEFAULT NULL,
  `user_type` enum('User','Admin','Sysadmin','Guest') DEFAULT 'Guest',
  `t15_people_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_users_username_unique` (`username`),
  UNIQUE KEY `t_users_email_unique` (`email`),
  KEY `fk_t16_users_t15_people1_idx` (`t15_people_id`),
  CONSTRAINT `fk_t16_users_t15_people1` FOREIGN KEY (`t15_people_id`) REFERENCES `t15_people` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t16_users */

/* Table structure for t17_ebooks_views */
CREATE TABLE `t17_ebooks_views` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t14_ebooks_id` bigint(20) unsigned NOT NULL,
  `t16_users_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ebook_id` (`t14_ebooks_id`),
  KEY `user_id` (`t16_users_id`),
  CONSTRAINT `t_ebooks_views_ibfk_1` FOREIGN KEY (`t14_ebooks_id`) REFERENCES `t14_ebooks` (`id`),
  CONSTRAINT `t_ebooks_views_ibfk_2` FOREIGN KEY (`t16_users_id`) REFERENCES `t16_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* data for Table t17_ebooks_views */

/* Table structure for t18_ebooks_favorites */
CREATE TABLE `t18_ebooks_favorites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t14_ebooks_id` bigint(20) unsigned NOT NULL,
  `t16_users_id` bigint(20) unsigned NOT NULL,
  `is_favorite` tinyint(1) DEFAULT 1,
  `status` tinyint(1) DEFAULT 1,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ebook_id` (`t14_ebooks_id`),
  KEY `user_id` (`t16_users_id`),
  CONSTRAINT `t_favorites_ibfk_1` FOREIGN KEY (`t14_ebooks_id`) REFERENCES `t14_ebooks` (`id`),
  CONSTRAINT `t_favorites_ibfk_2` FOREIGN KEY (`t16_users_id`) REFERENCES `t16_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* data for Table t18_ebooks_favorites */

/* Table structure for t19_settings */
CREATE TABLE `t19_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_type` varchar(255) DEFAULT NULL,
  `client_logo` varchar(255) DEFAULT NULL,
  `client_weburl` varchar(255) DEFAULT NULL,
  `client_slogan` varchar(255) DEFAULT NULL,
  `client_info` varchar(255) DEFAULT NULL,
  `client_max_users` int(8) DEFAULT NULL,
  `client_license` varchar(255) DEFAULT NULL,
  `client_license_start_date` date DEFAULT NULL,
  `client_license_stop_date` date DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `t13_clients_ie_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_settings_clients_ie_idx` (`t13_clients_ie_id`),
  CONSTRAINT `fk_settings_clients_ie` FOREIGN KEY (`t13_clients_ie_id`) REFERENCES `t13_clients_ie` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/* data for Table t19_settings */

/* Table structure for t20_users_has_roles */
CREATE TABLE `t20_users_has_roles` (
  `t16_users_id` bigint(20) unsigned NOT NULL,
  `t03_roles_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`t16_users_id`,`t03_roles_id`),
  KEY `fk_users_has_roles_role_idx` (`t03_roles_id`),
  KEY `fk_users_has_roles_user_idx` (`t16_users_id`),
  CONSTRAINT `fk_users_has_roles_roles` FOREIGN KEY (`t03_roles_id`) REFERENCES `t03_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_roles_users` FOREIGN KEY (`t16_users_id`) REFERENCES `t16_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t20_users_has_roles */

/* Table structure for t21_clients_has_careers */
CREATE TABLE `t21_clients_has_careers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t13_clients_ie_id` int(10) unsigned NOT NULL,
  `t11_careers_id` int(10) unsigned NOT NULL,
  `client_career_display` varchar(225) DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_client_ie_career` (`t13_clients_ie_id`,`t11_careers_id`),
  KEY `fk_clients_has_careers_career` (`t11_careers_id`),
  CONSTRAINT `fk_clients_has_careers_career` FOREIGN KEY (`t11_careers_id`) REFERENCES `t11_careers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_clients_has_careers_client` FOREIGN KEY (`t13_clients_ie_id`) REFERENCES `t13_clients_ie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t21_clients_has_careers */

/* Table structure for t22_clients_has_ebooks */
CREATE TABLE `t22_clients_has_ebooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `t13_clients_ie_id` int(10) unsigned NOT NULL,
  `t14_ebooks_id` bigint(20) unsigned NOT NULL,
  `client_ebook_tags` varchar(225) DEFAULT NULL,
  `client_ebook_code` varchar(225) DEFAULT NULL,
  `client_ebook_abstract` varchar(225) DEFAULT NULL,
  `client_ebook_career_filter` text DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `t16_users_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_client_ie_ebook` (`t13_clients_ie_id`,`t14_ebooks_id`),
  KEY `fk_clients_careers_ebook` (`t14_ebooks_id`),
  CONSTRAINT `fk_clients_careers_client` FOREIGN KEY (`t13_clients_ie_id`) REFERENCES `t13_clients_ie` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_clients_careers_ebook` FOREIGN KEY (`t14_ebooks_id`) REFERENCES `t14_ebooks` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/* data for Table t22_clients_has_ebooks */

/* create command for menuhoy */

DELIMITER $$
CREATE ALGORITHM=UNDEFINED DEFINER=`ronaldpa`@`localhost` SQL SECURITY DEFINER VIEW `menuhoy` AS select `t_pedidos`.`id` AS `id`,`t_pedidos`.`plato_id` AS `plato_id`,`t_pedidos`.`plato` AS `plato`,`t_pedidos`.`entrada` AS `entrada`,`t_pedidos`.`cliente` AS `cliente`,`t_pedidos`.`proyecto` AS `proyecto`,`t_pedidos`.`correo` AS `correo`,`t_pedidos`.`precio` AS `precio`,`t_pedidos`.`cantidad` AS `cantidad`,`t_pedidos`.`estado` AS `estado`,`t_pedidos`.`despacho` AS `despacho`,`t_pedidos`.`pago` AS `pago`,`t_pedidos`.`mensaje` AS `mensaje`,`t_pedidos`.`created_at` AS `created_at`,`t_pedidos`.`updated_at` AS `updated_at` from `t_pedidos` where `t_pedidos`.`estado` > 0$$

DELIMITER ;

/* create command for v_sessions */

DELIMITER $$
CREATE ALGORITHM=UNDEFINED DEFINER=`ronaldpa`@`localhost` SQL SECURITY DEFINER VIEW `v_sessions` AS select `t1`.`last_activity` AS `last_activity`,from_unixtime(`t1`.`last_activity`) AS `last_activity_datetime`,date_format(from_unixtime(`t1`.`last_activity`),'%Y-%m-%d') AS `last_activity_date`,date_format(from_unixtime(`t1`.`last_activity`),'%Y-%m-%d %H:%i:%s') + interval -5 hour AS `session_datetime_local`,date_format(date_format(from_unixtime(`t1`.`last_activity`),'%Y-%m-%d %H:%i:%s') + interval -5 hour,'%Y-%m-%d') AS `session_date_local`,`t1`.`ip_address` AS `ip_address`,`t2`.`id` AS `user_id`,`t2`.`username` AS `username`,`t2`.`email` AS `email`,`t3`.`role_id` AS `role_id`,`t4`.`rolename` AS `rolename` from (((`t_sessions` `t1` left join `t_users` `t2` on(`t1`.`user_id` = `t2`.`id`)) left join `t_role_user` `t3` on(`t2`.`id` = `t3`.`user_id`)) left join `t_roles` `t4` on(`t3`.`role_id` = `t4`.`id`))$$

DELIMITER ;

/* Restore session variables to original values */
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
