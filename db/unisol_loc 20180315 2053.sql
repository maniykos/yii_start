--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.2.63.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 15.03.2018 20:53:14
-- Версия сервера: 5.7.19
-- Версия клиента: 4.1
--


-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

-- 
-- Установка базы данных по умолчанию
--
USE `unisol.loc`;

--
-- Описание для таблицы article_category
--
DROP TABLE IF EXISTS article_category;
CREATE TABLE article_category (
  id INT(11) NOT NULL AUTO_INCREMENT,
  slug VARCHAR(1024) NOT NULL,
  title VARCHAR(512) NOT NULL,
  body TEXT DEFAULT NULL,
  parent_id INT(11) DEFAULT NULL,
  status SMALLINT(6) NOT NULL DEFAULT 0,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_article_category_section FOREIGN KEY (parent_id)
    REFERENCES article_category(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы file_storage_item
--
DROP TABLE IF EXISTS file_storage_item;
CREATE TABLE file_storage_item (
  id INT(11) NOT NULL AUTO_INCREMENT,
  component VARCHAR(255) NOT NULL,
  base_url VARCHAR(1024) NOT NULL,
  path VARCHAR(1024) NOT NULL,
  type VARCHAR(255) DEFAULT NULL,
  size INT(11) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  upload_ip VARCHAR(15) DEFAULT NULL,
  created_at INT(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы i18n_source_message
--
DROP TABLE IF EXISTS i18n_source_message;
CREATE TABLE i18n_source_message (
  id INT(11) NOT NULL AUTO_INCREMENT,
  category VARCHAR(32) DEFAULT NULL,
  message TEXT DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы key_storage_item
--
DROP TABLE IF EXISTS key_storage_item;
CREATE TABLE key_storage_item (
  `key` VARCHAR(128) NOT NULL,
  value TEXT NOT NULL,
  comment TEXT DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  created_at INT(11) DEFAULT NULL,
  PRIMARY KEY (`key`),
  UNIQUE INDEX idx_key_storage_item_key (`key`)
)
ENGINE = INNODB
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы page
--
DROP TABLE IF EXISTS page;
CREATE TABLE page (
  id INT(11) NOT NULL AUTO_INCREMENT,
  slug VARCHAR(2048) NOT NULL,
  title VARCHAR(512) NOT NULL,
  body TEXT NOT NULL,
  view VARCHAR(255) DEFAULT NULL,
  status SMALLINT(6) NOT NULL,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы rbac_auth_rule
--
DROP TABLE IF EXISTS rbac_auth_rule;
CREATE TABLE rbac_auth_rule (
  name VARCHAR(64) NOT NULL,
  data BLOB DEFAULT NULL,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  PRIMARY KEY (name)
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы system_db_migration
--
DROP TABLE IF EXISTS system_db_migration;
CREATE TABLE system_db_migration (
  version VARCHAR(180) NOT NULL,
  apply_time INT(11) DEFAULT NULL,
  PRIMARY KEY (version)
)
ENGINE = INNODB
AVG_ROW_LENGTH = 1024
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы system_log
--
DROP TABLE IF EXISTS system_log;
CREATE TABLE system_log (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  level INT(11) DEFAULT NULL,
  category VARCHAR(255) DEFAULT NULL,
  log_time DOUBLE DEFAULT NULL,
  prefix TEXT DEFAULT NULL,
  message TEXT DEFAULT NULL,
  PRIMARY KEY (id),
  INDEX idx_log_category (category),
  INDEX idx_log_level (level)
)
ENGINE = INNODB
AUTO_INCREMENT = 7
AVG_ROW_LENGTH = 10922
CHARACTER SET utf8
COLLATE utf8_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы system_rbac_migration
--
DROP TABLE IF EXISTS system_rbac_migration;
CREATE TABLE system_rbac_migration (
  version VARCHAR(180) NOT NULL,
  apply_time INT(11) DEFAULT NULL,
  PRIMARY KEY (version)
)
ENGINE = INNODB
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы timeline_event
--
DROP TABLE IF EXISTS timeline_event;
CREATE TABLE timeline_event (
  id INT(11) NOT NULL AUTO_INCREMENT,
  application VARCHAR(64) NOT NULL,
  category VARCHAR(64) NOT NULL,
  event VARCHAR(64) NOT NULL,
  data TEXT DEFAULT NULL,
  created_at INT(11) NOT NULL,
  PRIMARY KEY (id),
  INDEX idx_created_at (created_at)
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы user
--
DROP TABLE IF EXISTS user;
CREATE TABLE user (
  id INT(11) NOT NULL AUTO_INCREMENT,
  username VARCHAR(32) DEFAULT NULL,
  auth_key VARCHAR(32) NOT NULL,
  access_token VARCHAR(40) NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  oauth_client VARCHAR(255) DEFAULT NULL,
  oauth_client_user_id VARCHAR(255) DEFAULT NULL,
  email VARCHAR(255) NOT NULL,
  status SMALLINT(6) NOT NULL DEFAULT 2,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  logged_at INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы user_token
--
DROP TABLE IF EXISTS user_token;
CREATE TABLE user_token (
  id INT(11) NOT NULL AUTO_INCREMENT,
  user_id INT(11) NOT NULL,
  type VARCHAR(255) NOT NULL,
  token VARCHAR(40) NOT NULL,
  expire_at INT(11) DEFAULT NULL,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы widget_carousel
--
DROP TABLE IF EXISTS widget_carousel;
CREATE TABLE widget_carousel (
  id INT(11) NOT NULL AUTO_INCREMENT,
  `key` VARCHAR(255) NOT NULL,
  status SMALLINT(6) DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы widget_menu
--
DROP TABLE IF EXISTS widget_menu;
CREATE TABLE widget_menu (
  id INT(11) NOT NULL AUTO_INCREMENT,
  `key` VARCHAR(32) NOT NULL,
  title VARCHAR(255) NOT NULL,
  items TEXT NOT NULL,
  status SMALLINT(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы widget_text
--
DROP TABLE IF EXISTS widget_text;
CREATE TABLE widget_text (
  id INT(11) NOT NULL AUTO_INCREMENT,
  `key` VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  body TEXT NOT NULL,
  status SMALLINT(6) DEFAULT NULL,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  PRIMARY KEY (id),
  INDEX idx_widget_text_key (`key`)
)
ENGINE = INNODB
AUTO_INCREMENT = 3
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы article
--
DROP TABLE IF EXISTS article;
CREATE TABLE article (
  id INT(11) NOT NULL AUTO_INCREMENT,
  slug VARCHAR(1024) NOT NULL,
  title VARCHAR(512) NOT NULL,
  body TEXT NOT NULL,
  view VARCHAR(255) DEFAULT NULL,
  category_id INT(11) DEFAULT NULL,
  thumbnail_base_url VARCHAR(1024) DEFAULT NULL,
  thumbnail_path VARCHAR(1024) DEFAULT NULL,
  status SMALLINT(6) NOT NULL DEFAULT 0,
  created_by INT(11) DEFAULT NULL,
  updated_by INT(11) DEFAULT NULL,
  published_at INT(11) DEFAULT NULL,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_article_author FOREIGN KEY (created_by)
    REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_article_category FOREIGN KEY (category_id)
    REFERENCES article_category(id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_article_updater FOREIGN KEY (updated_by)
    REFERENCES user(id) ON DELETE SET NULL ON UPDATE CASCADE
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы i18n_message
--
DROP TABLE IF EXISTS i18n_message;
CREATE TABLE i18n_message (
  id INT(11) NOT NULL,
  language VARCHAR(16) NOT NULL,
  translation TEXT DEFAULT NULL,
  PRIMARY KEY (id, language),
  CONSTRAINT fk_i18n_message_source_message FOREIGN KEY (id)
    REFERENCES i18n_source_message(id) ON DELETE CASCADE ON UPDATE RESTRICT
)
ENGINE = INNODB
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы rbac_auth_item
--
DROP TABLE IF EXISTS rbac_auth_item;
CREATE TABLE rbac_auth_item (
  name VARCHAR(64) NOT NULL,
  type SMALLINT(6) NOT NULL,
  description TEXT DEFAULT NULL,
  rule_name VARCHAR(64) DEFAULT NULL,
  data BLOB DEFAULT NULL,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  PRIMARY KEY (name),
  INDEX `idx-auth_item-type` (type),
  INDEX rule_name (rule_name),
  CONSTRAINT rbac_auth_item_ibfk_1 FOREIGN KEY (rule_name)
    REFERENCES rbac_auth_rule(name) ON DELETE SET NULL ON UPDATE CASCADE
)
ENGINE = INNODB
AVG_ROW_LENGTH = 3276
CHARACTER SET utf8
COLLATE utf8_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы user_profile
--
DROP TABLE IF EXISTS user_profile;
CREATE TABLE user_profile (
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(255) DEFAULT NULL,
  middlename VARCHAR(255) DEFAULT NULL,
  lastname VARCHAR(255) DEFAULT NULL,
  avatar_path VARCHAR(255) DEFAULT NULL,
  avatar_base_url VARCHAR(255) DEFAULT NULL,
  locale VARCHAR(32) NOT NULL,
  gender SMALLINT(1) DEFAULT NULL,
  PRIMARY KEY (user_id),
  CONSTRAINT fk_user FOREIGN KEY (user_id)
    REFERENCES user(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы widget_carousel_item
--
DROP TABLE IF EXISTS widget_carousel_item;
CREATE TABLE widget_carousel_item (
  id INT(11) NOT NULL AUTO_INCREMENT,
  carousel_id INT(11) NOT NULL,
  base_url VARCHAR(1024) DEFAULT NULL,
  path VARCHAR(1024) DEFAULT NULL,
  asset_url VARCHAR(1024) DEFAULT NULL,
  type VARCHAR(255) DEFAULT NULL,
  url VARCHAR(1024) DEFAULT NULL,
  caption VARCHAR(1024) DEFAULT NULL,
  status SMALLINT(6) NOT NULL DEFAULT 0,
  `order` INT(11) DEFAULT 0,
  created_at INT(11) DEFAULT NULL,
  updated_at INT(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_item_carousel FOREIGN KEY (carousel_id)
    REFERENCES widget_carousel(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AUTO_INCREMENT = 2
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы article_attachment
--
DROP TABLE IF EXISTS article_attachment;
CREATE TABLE article_attachment (
  id INT(11) NOT NULL AUTO_INCREMENT,
  article_id INT(11) NOT NULL,
  path VARCHAR(255) NOT NULL,
  base_url VARCHAR(255) DEFAULT NULL,
  type VARCHAR(255) DEFAULT NULL,
  size INT(11) DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  created_at INT(11) DEFAULT NULL,
  `order` INT(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_article_attachment_article FOREIGN KEY (article_id)
    REFERENCES article(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы rbac_auth_assignment
--
DROP TABLE IF EXISTS rbac_auth_assignment;
CREATE TABLE rbac_auth_assignment (
  item_name VARCHAR(64) NOT NULL,
  user_id VARCHAR(64) NOT NULL,
  created_at INT(11) DEFAULT NULL,
  PRIMARY KEY (item_name, user_id),
  CONSTRAINT rbac_auth_assignment_ibfk_1 FOREIGN KEY (item_name)
    REFERENCES rbac_auth_item(name) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AVG_ROW_LENGTH = 4096
CHARACTER SET utf8
COLLATE utf8_unicode_ci
ROW_FORMAT = DYNAMIC;

--
-- Описание для таблицы rbac_auth_item_child
--
DROP TABLE IF EXISTS rbac_auth_item_child;
CREATE TABLE rbac_auth_item_child (
  parent VARCHAR(64) NOT NULL,
  child VARCHAR(64) NOT NULL,
  PRIMARY KEY (parent, child),
  INDEX child (child),
  CONSTRAINT rbac_auth_item_child_ibfk_1 FOREIGN KEY (parent)
    REFERENCES rbac_auth_item(name) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT rbac_auth_item_child_ibfk_2 FOREIGN KEY (child)
    REFERENCES rbac_auth_item(name) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE = INNODB
AVG_ROW_LENGTH = 2730
CHARACTER SET utf8
COLLATE utf8_unicode_ci
ROW_FORMAT = DYNAMIC;

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;