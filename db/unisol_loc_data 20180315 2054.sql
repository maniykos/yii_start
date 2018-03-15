--
-- Скрипт сгенерирован Devart dbForge Studio for MySQL, Версия 7.2.63.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 15.03.2018 20:54:16
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
USE `psyvor_ttt`;

-- 
-- Вывод данных для таблицы article
--

-- Таблица `unisol.loc`.article не содержит данных

-- 
-- Вывод данных для таблицы article_attachment
--

-- Таблица `unisol.loc`.article_attachment не содержит данных

-- 
-- Вывод данных для таблицы file_storage_item
--
INSERT INTO file_storage_item VALUES
(1, 'fileStorage', '/storage/web/source', '1/NDQoJ_P55en_PIIeSz8_sv30HCQTxh-L.jpg', 'image/jpeg', 27366, 'NDQoJ_P55en_PIIeSz8_sv30HCQTxh-L', '127.0.0.1', 1521126333);

-- 
-- Вывод данных для таблицы i18n_message
--

-- Таблица `unisol.loc`.i18n_message не содержит данных

-- 
-- Вывод данных для таблицы i18n_source_message
--

-- Таблица `unisol.loc`.i18n_source_message не содержит данных

-- 
-- Вывод данных для таблицы key_storage_item
--
INSERT INTO key_storage_item VALUES
('backend.layout-boxed', '0', NULL, NULL, NULL),
('backend.layout-collapsed-sidebar', '0', NULL, NULL, NULL),
('backend.layout-fixed', '0', NULL, NULL, NULL),
('backend.theme-skin', 'skin-blue', 'skin-blue, skin-black, skin-purple, skin-green, skin-red, skin-yellow', NULL, NULL),
('frontend.maintenance', 'disabled', 'Set it to "enabled" to turn on maintenance mode', NULL, NULL);

-- 
-- Вывод данных для таблицы page
--
INSERT INTO page VALUES
(1, 'about', 'About', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 1, 1521125418, 1521125418);

-- 
-- Вывод данных для таблицы rbac_auth_assignment
--
INSERT INTO rbac_auth_assignment VALUES
('administrator', '1', 1521125421),
('manager', '2', 1521125421),
('user', '3', 1521125421),
('user', '4', 1521126269);

-- 
-- Вывод данных для таблицы rbac_auth_item
--
INSERT INTO rbac_auth_item VALUES
('administrator', 1, NULL, NULL, NULL, 1521125421, 1521125421),
('editOwnModel', 2, NULL, 'ownModelRule', NULL, 1521125421, 1521125421),
('loginToBackend', 2, NULL, NULL, NULL, 1521125421, 1521125421),
('manager', 1, NULL, NULL, NULL, 1521125421, 1521125421),
('user', 1, NULL, NULL, NULL, 1521125421, 1521125421);

-- 
-- Вывод данных для таблицы rbac_auth_item_child
--
INSERT INTO rbac_auth_item_child VALUES
('user', 'editOwnModel'),
('administrator', 'loginToBackend'),
('manager', 'loginToBackend'),
('administrator', 'manager'),
('administrator', 'user'),
('manager', 'user');

-- 
-- Вывод данных для таблицы rbac_auth_rule
--
INSERT INTO rbac_auth_rule VALUES
('ownModelRule', x'4F3A32393A22636F6D6D6F6E5C726261635C72756C655C4F776E4D6F64656C52756C65223A333A7B733A343A226E616D65223B733A31323A226F776E4D6F64656C52756C65223B733A393A22637265617465644174223B693A313532313132353432313B733A393A22757064617465644174223B693A313532313132353432313B7D', 1521125421, 1521125421);

-- 
-- Вывод данных для таблицы system_db_migration
--
INSERT INTO system_db_migration VALUES
('m000000_000000_base', 1521125411),
('m140703_123000_user', 1521125416),
('m140703_123055_log', 1521125416),
('m140703_123104_page', 1521125416),
('m140703_123803_article', 1521125416),
('m140703_123813_rbac', 1521125416),
('m140709_173306_widget_menu', 1521125416),
('m140709_173333_widget_text', 1521125416),
('m140712_123329_widget_carousel', 1521125416),
('m140805_084745_key_storage_item', 1521125416),
('m141012_101932_i18n_tables', 1521125416),
('m150318_213934_file_storage_item', 1521125416),
('m150414_195800_timeline_event', 1521125416),
('m150725_192740_seed_data', 1521125418),
('m150929_074021_article_attachment_order', 1521125418),
('m160203_095604_user_token', 1521125418);

-- 
-- Вывод данных для таблицы system_log
--
INSERT INTO system_log VALUES
(1, 1, 'yii\\base\\ErrorException:2', 1521125729.9997, '[frontend][/frontend/web/]', 'yii\\base\\ErrorException: symlink(): Cannot create symlink, error code(1314) in D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php:486\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(2, ''symlink(): Cann...'', ''D:\\\\WebPrograms\\\\...'', 486, Array)\n#1 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(486): symlink(''D:\\\\WebPrograms\\\\...'', ''D:\\\\WebPrograms\\\\...'')\n#2 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(460): yii\\web\\AssetManager->publishFile(''D:\\\\WebPrograms\\\\...'')\n#3 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\common\\widgets\\DbCarousel.php(111): yii\\web\\AssetManager->publish(''img/yii2-starte...'')\n#4 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\common\\widgets\\DbCarousel.php(68): common\\widgets\\DbCarousel->publishItem(Object(common\\models\\WidgetCarouselItem))\n#5 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\BaseObject.php(108): common\\widgets\\DbCarousel->init()\n#6 [internal function]: yii\\base\\BaseObject->__construct(Array)\n#7 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(381): ReflectionClass->newInstanceArgs(Array)\n#8 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(156): yii\\di\\Container->build(''common\\\\widgets\\\\...'', Array, Array)\n#9 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\BaseYii.php(349): yii\\di\\Container->get(''common\\\\widgets\\\\...'', Array, Array)\n#10 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Widget.php(137): yii\\BaseYii::createObject(Array)\n#11 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\site\\index.php(8): yii\\base\\Widget::widget(Array)\n#12 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require(''D:\\\\WebPrograms\\\\...'')\n#13 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#14 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(152): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array, Object(frontend\\controllers\\SiteController))\n#15 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(384): yii\\base\\View->render(''index'', Array, Object(frontend\\controllers\\SiteController))\n#16 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\controllers\\SiteController.php(36): yii\\base\\Controller->render(''index'')\n#17 [internal function]: frontend\\controllers\\SiteController->actionIndex()\n#18 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#19 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(157): yii\\base\\InlineAction->runWithParams(Array)\n#20 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Module.php(528): yii\\base\\Controller->runAction(''index'', Array)\n#21 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction('''', Array)\n#22 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#23 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\web\\index.php(22): yii\\base\\Application->run()\n#24 {main}'),
(2, 1, 'yii\\base\\ErrorException:2', 1521125820.9596, '[frontend][/frontend/web/]', 'yii\\base\\ErrorException: symlink(): Cannot create symlink, error code(1314) in D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php:486\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(2, ''symlink(): Cann...'', ''D:\\\\WebPrograms\\\\...'', 486, Array)\n#1 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(486): symlink(''D:\\\\WebPrograms\\\\...'', ''D:\\\\WebPrograms\\\\...'')\n#2 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(460): yii\\web\\AssetManager->publishFile(''D:\\\\WebPrograms\\\\...'')\n#3 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\common\\widgets\\DbCarousel.php(111): yii\\web\\AssetManager->publish(''img/yii2-starte...'')\n#4 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\common\\widgets\\DbCarousel.php(68): common\\widgets\\DbCarousel->publishItem(Object(common\\models\\WidgetCarouselItem))\n#5 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\BaseObject.php(108): common\\widgets\\DbCarousel->init()\n#6 [internal function]: yii\\base\\BaseObject->__construct(Array)\n#7 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(381): ReflectionClass->newInstanceArgs(Array)\n#8 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(156): yii\\di\\Container->build(''common\\\\widgets\\\\...'', Array, Array)\n#9 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\BaseYii.php(349): yii\\di\\Container->get(''common\\\\widgets\\\\...'', Array, Array)\n#10 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Widget.php(137): yii\\BaseYii::createObject(Array)\n#11 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\site\\index.php(8): yii\\base\\Widget::widget(Array)\n#12 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require(''D:\\\\WebPrograms\\\\...'')\n#13 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#14 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(152): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array, Object(frontend\\controllers\\SiteController))\n#15 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(384): yii\\base\\View->render(''index'', Array, Object(frontend\\controllers\\SiteController))\n#16 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\controllers\\SiteController.php(36): yii\\base\\Controller->render(''index'')\n#17 [internal function]: frontend\\controllers\\SiteController->actionIndex()\n#18 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#19 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(157): yii\\base\\InlineAction->runWithParams(Array)\n#20 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Module.php(528): yii\\base\\Controller->runAction(''index'', Array)\n#21 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction('''', Array)\n#22 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#23 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\web\\index.php(22): yii\\base\\Application->run()\n#24 {main}'),
(3, 1, 'yii\\base\\ErrorException:2', 1521125825.1552, '[frontend][/]', 'yii\\base\\ErrorException: symlink(): Cannot create symlink, error code(1314) in D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php:486\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(2, ''symlink(): Cann...'', ''D:\\\\WebPrograms\\\\...'', 486, Array)\n#1 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(486): symlink(''D:\\\\WebPrograms\\\\...'', ''D:\\\\WebPrograms\\\\...'')\n#2 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(460): yii\\web\\AssetManager->publishFile(''D:\\\\WebPrograms\\\\...'')\n#3 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\common\\widgets\\DbCarousel.php(111): yii\\web\\AssetManager->publish(''img/yii2-starte...'')\n#4 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\common\\widgets\\DbCarousel.php(68): common\\widgets\\DbCarousel->publishItem(Object(common\\models\\WidgetCarouselItem))\n#5 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\BaseObject.php(108): common\\widgets\\DbCarousel->init()\n#6 [internal function]: yii\\base\\BaseObject->__construct(Array)\n#7 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(381): ReflectionClass->newInstanceArgs(Array)\n#8 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(156): yii\\di\\Container->build(''common\\\\widgets\\\\...'', Array, Array)\n#9 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\BaseYii.php(349): yii\\di\\Container->get(''common\\\\widgets\\\\...'', Array, Array)\n#10 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Widget.php(137): yii\\BaseYii::createObject(Array)\n#11 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\site\\index.php(8): yii\\base\\Widget::widget(Array)\n#12 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require(''D:\\\\WebPrograms\\\\...'')\n#13 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#14 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(152): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array, Object(frontend\\controllers\\SiteController))\n#15 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(384): yii\\base\\View->render(''index'', Array, Object(frontend\\controllers\\SiteController))\n#16 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\controllers\\SiteController.php(36): yii\\base\\Controller->render(''index'')\n#17 [internal function]: frontend\\controllers\\SiteController->actionIndex()\n#18 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#19 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(157): yii\\base\\InlineAction->runWithParams(Array)\n#20 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Module.php(528): yii\\base\\Controller->runAction(''index'', Array)\n#21 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction('''', Array)\n#22 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#23 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\web\\index.php(22): yii\\base\\Application->run()\n#24 {main}'),
(4, 1, 'yii\\base\\ErrorException:2', 1521125830.3858, '[frontend][/]', 'yii\\base\\ErrorException: symlink(): Cannot create symlink, error code(1314) in D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php:486\nStack trace:\n#0 [internal function]: yii\\base\\ErrorHandler->handleError(2, ''symlink(): Cann...'', ''D:\\\\WebPrograms\\\\...'', 486, Array)\n#1 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(486): symlink(''D:\\\\WebPrograms\\\\...'', ''D:\\\\WebPrograms\\\\...'')\n#2 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(460): yii\\web\\AssetManager->publishFile(''D:\\\\WebPrograms\\\\...'')\n#3 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\common\\widgets\\DbCarousel.php(111): yii\\web\\AssetManager->publish(''img/yii2-starte...'')\n#4 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\common\\widgets\\DbCarousel.php(68): common\\widgets\\DbCarousel->publishItem(Object(common\\models\\WidgetCarouselItem))\n#5 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\BaseObject.php(108): common\\widgets\\DbCarousel->init()\n#6 [internal function]: yii\\base\\BaseObject->__construct(Array)\n#7 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(381): ReflectionClass->newInstanceArgs(Array)\n#8 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(156): yii\\di\\Container->build(''common\\\\widgets\\\\...'', Array, Array)\n#9 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\BaseYii.php(349): yii\\di\\Container->get(''common\\\\widgets\\\\...'', Array, Array)\n#10 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Widget.php(137): yii\\BaseYii::createObject(Array)\n#11 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\site\\index.php(8): yii\\base\\Widget::widget(Array)\n#12 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require(''D:\\\\WebPrograms\\\\...'')\n#13 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#14 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(152): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array, Object(frontend\\controllers\\SiteController))\n#15 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(384): yii\\base\\View->render(''index'', Array, Object(frontend\\controllers\\SiteController))\n#16 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\controllers\\SiteController.php(36): yii\\base\\Controller->render(''index'')\n#17 [internal function]: frontend\\controllers\\SiteController->actionIndex()\n#18 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#19 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(157): yii\\base\\InlineAction->runWithParams(Array)\n#20 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Module.php(528): yii\\base\\Controller->runAction(''index'', Array)\n#21 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction('''', Array)\n#22 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#23 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\web\\index.php(22): yii\\base\\Application->run()\n#24 {main}'),
(5, 1, 'yii\\base\\InvalidParamException', 1521129952.8688, '[frontend][/frontend/web/site/index]', 'yii\\base\\InvalidParamException: Invalid path alias: @/bundle in D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\BaseYii.php:154\nStack trace:\n#0 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetBundle.php(135): yii\\BaseYii::getAlias(''@/bundle'')\n#1 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\BaseObject.php(108): yii\\web\\AssetBundle->init()\n#2 [internal function]: yii\\base\\BaseObject->__construct(Array)\n#3 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(375): ReflectionClass->newInstanceArgs(Array)\n#4 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\di\\Container.php(156): yii\\di\\Container->build(''frontend\\\\assets...'', Array, Array)\n#5 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\BaseYii.php(349): yii\\di\\Container->get(''frontend\\\\assets...'', Array, Array)\n#6 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(266): yii\\BaseYii::createObject(Array)\n#7 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetManager.php(239): yii\\web\\AssetManager->loadBundle(''frontend\\\\assets...'', Array, true)\n#8 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\View.php(286): yii\\web\\AssetManager->getBundle(''frontend\\\\assets...'')\n#9 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\AssetBundle.php(125): yii\\web\\View->registerAssetBundle(''frontend\\\\assets...'')\n#10 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\layouts\\_clear.php(6): yii\\web\\AssetBundle::register(Object(yii\\web\\View))\n#11 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require(''D:\\\\WebPrograms\\\\...'')\n#12 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#13 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\widgets\\ContentDecorator.php(77): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array)\n#14 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Widget.php(109): yii\\widgets\\ContentDecorator->run()\n#15 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(456): yii\\base\\Widget::end()\n#16 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\layouts\\base.php(73): yii\\base\\View->endContent()\n#17 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require(''D:\\\\WebPrograms\\\\...'')\n#18 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#19 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\widgets\\ContentDecorator.php(77): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array)\n#20 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Widget.php(109): yii\\widgets\\ContentDecorator->run()\n#21 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(456): yii\\base\\Widget::end()\n#22 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\layouts\\main.php(31): yii\\base\\View->endContent()\n#23 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require(''D:\\\\WebPrograms\\\\...'')\n#24 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#25 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(399): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array, Object(frontend\\controllers\\SiteController))\n#26 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(385): yii\\base\\Controller->renderContent(''<div class="sit...'')\n#27 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\controllers\\SiteController.php(36): yii\\base\\Controller->render(''index'')\n#28 [internal function]: frontend\\controllers\\SiteController->actionIndex()\n#29 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#30 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(157): yii\\base\\InlineAction->runWithParams(Array)\n#31 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Module.php(528): yii\\base\\Controller->runAction(''index'', Array)\n#32 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction(''site/index'', Array)\n#33 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#34 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\web\\index.php(22): yii\\base\\Application->run()\n#35 {main}'),
(6, 1, 'Error', 1521132052.3332, '[frontend][/frontend/web/site/contact]', 'Error: Class ''Html'' not found in D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\layouts\\base.php:25\nStack trace:\n#0 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require()\n#1 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#2 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\widgets\\ContentDecorator.php(77): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array)\n#3 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Widget.php(109): yii\\widgets\\ContentDecorator->run()\n#4 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(456): yii\\base\\Widget::end()\n#5 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\views\\layouts\\main.php(31): yii\\base\\View->endContent()\n#6 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(332): require(''D:\\\\WebPrograms\\\\...'')\n#7 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\View.php(250): yii\\base\\View->renderPhpFile(''D:\\\\WebPrograms\\\\...'', Array)\n#8 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(399): yii\\base\\View->renderFile(''D:\\\\WebPrograms\\\\...'', Array, Object(frontend\\controllers\\SiteController))\n#9 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(385): yii\\base\\Controller->renderContent(''<div class="sit...'')\n#10 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\controllers\\SiteController.php(58): yii\\base\\Controller->render(''contact'', Array)\n#11 [internal function]: frontend\\controllers\\SiteController->actionContact()\n#12 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\InlineAction.php(57): call_user_func_array(Array, Array)\n#13 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Controller.php(157): yii\\base\\InlineAction->runWithParams(Array)\n#14 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Module.php(528): yii\\base\\Controller->runAction(''contact'', Array)\n#15 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\web\\Application.php(103): yii\\base\\Module->runAction(''site/contact'', Array)\n#16 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\vendor\\yiisoft\\yii2\\base\\Application.php(386): yii\\web\\Application->handleRequest(Object(yii\\web\\Request))\n#17 D:\\WebPrograms\\localhost\\testovue\\unisol\\yii2-starter-kit\\frontend\\web\\index.php(22): yii\\base\\Application->run()\n#18 {main}');

-- 
-- Вывод данных для таблицы system_rbac_migration
--
INSERT INTO system_rbac_migration VALUES
('m000000_000000_base', 1521125418),
('m150625_214101_roles', 1521125421),
('m150625_215624_init_permissions', 1521125421),
('m151223_074604_edit_own_model', 1521125421);

-- 
-- Вывод данных для таблицы timeline_event
--
INSERT INTO timeline_event VALUES
(1, 'frontend', 'user', 'signup', '{"public_identity":"webmaster","user_id":1,"created_at":1521125416}', 1521125416),
(2, 'frontend', 'user', 'signup', '{"public_identity":"manager","user_id":2,"created_at":1521125416}', 1521125416),
(3, 'frontend', 'user', 'signup', '{"public_identity":"user","user_id":3,"created_at":1521125416}', 1521125416),
(4, 'frontend', 'user', 'signup', '{"public_identity":"user01","user_id":4,"created_at":1521126269}', 1521126269);

-- 
-- Вывод данных для таблицы user
--
INSERT INTO user VALUES
(1, 'webmaster', '5QLgmSXLSY3lNbDeOIMElMJqlg5clDCZ', 'Mu2xxAmVbG6hwpJMLUTMao2LnHmiW1JxTl53uSF7', '$2y$13$CLTrsNKyw6vH69//g400teyU6npRfNhWEvBfBWjfhfsvEsOlldatS', NULL, NULL, 'webmaster@example.com', 2, 1521125417, 1521125417, 1521135192),
(2, 'manager', 'g5ZJySbB8sPbJxT8_6rrcxfK0L_HQyxI', '6XMFlNdxc1NxmMwQXZ6gEhpFzf-N8yT4ylkftxAj', '$2y$13$dTWZTzm1V7gC2BJ.hkv/2.9JLdOOGvvpP.5bssInMdqG1hmcPQQSu', NULL, NULL, 'manager@example.com', 2, 1521125418, 1521125418, NULL),
(3, 'user', 'cLGyiYF3RwR2rKwgYf90VbUiUdBzIL1j', '9qYrpQVtoYAVYViGaG23nNI1e1UIvSAthkSvIsIX', '$2y$13$jFoqwhVUTJdjKImRpp8oju8nvvmgSvak6TNKrRWzYnwDl4eKmFw8O', NULL, NULL, 'user@example.com', 2, 1521125418, 1521125418, NULL),
(4, 'user01', 'gn54UlugdYS6Lljgr0pINiwacdoKmm1Y', '1lhD6tl8RLb_Tm0lKyxV48e64X8y8Ax3gZa4m1OD', '$2y$13$WY3Fp3HfaVMws29CiI.zlO6xIqy/b3iMELMRRVNcLLJ5jbLgotwc6', NULL, NULL, 'user1@gmail.com', 2, 1521126269, 1521126269, 1521135205);

-- 
-- Вывод данных для таблицы user_profile
--
INSERT INTO user_profile VALUES
(1, 'webmaster', '', '', NULL, NULL, 'en-US', NULL),
(2, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL),
(3, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL),
(4, 'user01', 'Jake', '', '1/NDQoJ_P55en_PIIeSz8_sv30HCQTxh-L.jpg', '/storage/web/source', 'ru-RU', 1);

-- 
-- Вывод данных для таблицы user_token
--

-- Таблица `unisol.loc`.user_token не содержит данных

-- 
-- Вывод данных для таблицы widget_carousel
--
INSERT INTO widget_carousel VALUES
(1, 'index', 1);

-- 
-- Вывод данных для таблицы widget_carousel_item
--
INSERT INTO widget_carousel_item VALUES
(1, 1, '', 'img/yii2-starter-kit.gif', '/frontend/web/assets/59337e9c/yii2-starter-kit.gif', 'image/gif', '/', NULL, 1, 0, NULL, NULL);

-- 
-- Вывод данных для таблицы widget_menu
--
INSERT INTO widget_menu VALUES
(1, 'frontend-index', 'Frontend index menu', '[\n    {\n        "label": "Get started with Yii2",\n        "url": "http://www.yiiframework.com",\n        "options": {\n            "tag": "span"\n        },\n        "template": "<a href=\\"{url}\\" class=\\"btn btn-lg btn-success\\">{label}</a>"\n    },\n    {\n        "label": "Yii2 Starter Kit on GitHub",\n        "url": "https://github.com/trntv/yii2-starter-kit",\n        "options": {\n            "tag": "span"\n        },\n        "template": "<a href=\\"{url}\\" class=\\"btn btn-lg btn-primary\\">{label}</a>"\n    },\n    {\n        "label": "Find a bug?",\n        "url": "https://github.com/trntv/yii2-starter-kit/issues",\n        "options": {\n            "tag": "span"\n        },\n        "template": "<a href=\\"{url}\\" class=\\"btn btn-lg btn-danger\\">{label}</a>"\n    }\n]', 1);

-- 
-- Вывод данных для таблицы widget_text
--
INSERT INTO widget_text VALUES
(1, 'backend_welcome', 'Welcome to backend', '<p>Welcome to Yii2 Starter Kit Dashboard</p>', 1, 1521125418, 1521125418),
(2, 'ads-example', 'Google Ads Example Block', '<div class="lead">\r\n                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>\r\n                <ins class="adsbygoogle"\r\n                     style="display:block"\r\n                     data-ad-client="ca-pub-9505937224921657"\r\n                     data-ad-slot="2264361777"\r\n                     data-ad-format="auto"></ins>\r\n                <script>\r\n                (adsbygoogle = window.adsbygoogle || []).push({});\r\n                </script>\r\n            </div>', 0, 1521125418, 1521125418);

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;